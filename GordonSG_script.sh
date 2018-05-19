cd $PBS_O_WORKDIR

#load modules and qiime
module load miniconda/python2

#loading virtualenv
echo "loading virtualenv"
source activate qiime1

# setting temporary directory
mkdir -p ~/qiime_tmp
export TMPDIR=~/qiime_tmp

# join paired ends
join_paired_ends.py -f Read1.fastq.gz -r Read2.fastq.gz -b Index.fastq.gz -m SeqPrep -o JoinedReads

# validate mapping file
validate_mapping_file.py -m map_incomplete.tsv -o validate_mapping_file_output

#split library
split_libraries_fastq.py -i ./JoinedReads/seqprep_assembled.fastq.gz -b ./JoinedReads/seqprep_assembled.fastq_barcodes.fastq -o ./slout --rev_comp_mapping_barcodes --rev_comp_barcode -m ./map_incomplete.tsv -q 19

# pick closed reference otus
pick_closed_reference_otus.py -i ./slout/seqs.fna -o ./otus

# summarize data in the BIOM file
biom summarize-table -i ./otus/otu_table.biom -o ./otus/otu_table_summary.txt
 analyse core diversity
core_diversity_analyses.py -i ./otus/otu_table.biom -o ./otus/core_output -m ./map_incomplete.tsv -t ./otus/97_otus.tree -e 605

source deactivate
