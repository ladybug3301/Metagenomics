# 16S rRNA metagenomic analysis 

**Student: Miruna Serian**

 **This report is part of the assesment for BIOC3301 Module at UCL**
  
  We analysied 16S rRNA  extracted from soil samples which were collected from Gordon Square Gardens, London. The data was processed using 	**QIIME** and **MicrobiomeAnalyst** (http://www.microbiomeanalyst.ca/) tools.
  
  A data set comprising the BIOM tables obtained from Project**SRP044877** -  *16s rRNA profiling of Park Grass microbial community*  was downloaded from **EBI Metagenomics** (https://www.ebi.ac.uk/metagenomics/projects/SRP044877) and compared to the BIOM tables resulted from the processing of the soil samples from Gordon Square Garden.
  
  The steps involved in the processing and analysis of the sequencesfrom soil samples in Gordon square are:
  1. Process the raw DNA sequences
     - join pair ends
     - validate mapping file
     - demultiplex
  2. Pick OTUS 
     - pick closed reference OTUs using GreenGeenes database(QIIME's default database)
     - summarize data  in the BIOM file
  3. Alpha and beta diveristy analysys
     - run core_diveristy_analyses 
  
  The scripts used for this part of the analysis can be found in *GDG_script*
  
  The BIOM table was merged with the MION table downloaded from EBI/Metagenomics. 
  1. Analyse alpha and beta diveristy of the combined data
  2. Summarize taxa at:
     - Level 1 (Kingdom)
     - Level 2 (Phylum)
     - Level 3 (Class)
  3. Permorm statistical analyses 
     - compare groups at Level 1 - by sampleType
     - compare gorups at Level 2 - by sampleType
                                 - by Vegetaion
                                 - by pH
     *These were done using Krustal Wallis statistical method*
     - make otu network
     - make heat map
     
   
   
  
  
  

