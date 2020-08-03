# FAQ

&nbsp;

&nbsp;

---
Preliminary
---

&nbsp;


- Is this training module meant for me?
     
     This module is for anyone with basic prior knowlege of genetics; no coding experience necessary!
     
&nbsp;
     
- What prior coding experience do I need to complete this module?
     
     None!
     
&nbsp;
    

- How long will it take me to complete this module?
                    
     Hopefully less than 4 hours!
       
&nbsp;
       
- **What languages are used in this program?**
   
   HTML, Jupyter Notebook, python, and R
   
&nbsp;

- Will my operating system support this program?

     Yes, this program runs on all major operating systems.
        
&nbsp;

- What do I need to install/run this program?

     [docker](https://www.docker.com/products/docker-desktop)
     
     [Juptyter Notebook](https://jupyter.org/install)
     
     [Oracle Virtual Machine](https://www.oracle.com/virtualization/technologies/vm/downloads/virtualbox-downloads.html)

&nbsp;

- How much RAM/Memory will I need to run this program?
     
     This program will require minimal RAM.
  
&nbsp;
  
- How large are the files I will be analyzing?
    
     Most files are under 5GB and will need to be downloaded to use.
    
&nbsp;




&nbsp;

---
Shell module
---



&nbsp;


- **How do I access the Shell Interface?**

&nbsp;

- Where can I find a list of commands for the Shell interface?
    
     Commands are located in the [command_pdf folder](https://github.com/rainakumar/CGS_popgen_training_module/tree/master/CGS_training_module_popgen/src/docs/command_pdfs)

&nbsp;

- **Can the command line be cleared? How do I view command history?
     
     You can view the history of your commands using “history”  
&nbsp;

- Will my data be saved if I turn off my computer? Will the command history be saved?

     Yes,  data will be saved but history you can save in file using following command on terminal “history > final_command_history.txt”

&nbsp;

- Will my data be saved on the web interface or on my computer's hard drive?
     
     Data will be saved on your computer's hard drive.
&nbsp;

- are "file 1" and "file 2" of the assembly overview flowchart of the fastq format? When combined do they create another fastq-type file?
    
     Reads are stored as read1 and read2, which are in .fastq format.
    
    the most common nucleotides found at a specific location in DNA or RNAthe most common nucleotides found at a specific location in DNA or RNA 
    
 &nbsp;
 
- While using Trimmomatic to trim bad reads, can the threshold be manually set for what constitutes a "bad" read? What does MINLEN control?

     Yes this can be manually set using tool specific parameter setting.  
     
     MINLEN : It specifies that any read below the minimum specified length will be dropped from further analysis.
   

&nbsp;

- What is "bwa mem"? 
   
     "BWA-MEM is a new alignment algorithm for aligning sequence reads or long query sequences against a large reference genome such as human. It automatically chooses between
      
     local and end-to-end alignments, supports paired-end reads and performs chimeric alignment. 
      
     The algorithm is robust to sequencing errors and applicable to a wide range of sequence lengths from 70bp to a few megabases." 
      
     [bwa-mem](https://arxiv.org/abs/1303.3997)
 
 &nbsp;
 
- What is Jupyter Notebook?
   
     Jupyter is an open-source web application that allows you to create and share documents that contain live code, equations, visualizations and narrative text.
      
     [install](https://jupyter.org/install)

&nbsp;

- What is a Dockerfile?

     "The Dockerfile is essentially the build instructions to build the image. The advantage of a Dockerfile over just storing the binary image 
     
     (or a snapshot/template in other virtualization systems) is that the automatic builds will ensure you have the latest version available"
     
     install [docker](https://www.docker.com/products/docker-desktop)
 
 &nbsp;
 
 
- **What is a conda_environment file?** 



&nbsp;

&nbsp;

---
   
#### Genomics Module

---

&nbsp;
     
 - How is DNA amplified?

      DNA is amplified using PCR (polymerase chain reaction). To amplify a segment of DNA using PCR, the sample is first heated so the DNA denatures, or separates into       two pieces of single-stranded DNA. Next, an enzyme called "Taq polymerase" synthesizes - builds - two new strands of DNA, using the original strands as                 templates
          
      [Genome.gov](https://www.genome.gov/about-genomics/fact-sheets/Polymerase-Chain-Reaction-Fact-Sheet)
    
 &nbsp;

- What are primers?
    
     " A primer is a short nucleic acid sequence that provides a starting point for DNA synthesis. In living organisms, primers are short strands of RNA. A primer must        be synthesized by an enzyme called primase, which is a type of RNA polymerase, before DNA replication can occur."
          
     [nature.com](https://www.nature.com/scitable/definition/primer-305/)

&nbsp;

- Where do the primers come from?
    
     In this case, primers are taken from the CHIKV Genome.
  
  &nbsp;
  
- What is the "CHIKV Genome"?
     
     "Chikungunya virus (CHIKV), a member of the genus Alphavirus and the family Togaviridae, is the causative agent of chikungunya fever, which is characterized by         fever, rash, myalgia, and arthralgia (7). CHIKV is transmitted to humans by infected mosquitoes, and it has emerged and reemerged in Africa, South America, and        Southern and Southeastern Asia, with a potential global threat to public health."
      
     [NCBI](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3421709/)

&nbsp;

- What are illumina "barcodes"? 
    
     "Individual 'barcode' sequences are added to each DNA fragment during next-generation sequencing (NGS) library preparation so that each read can be identified and 
    
     sorted before the final data analysis. These barcodes, or index adapters, can follow one of two major indexing strategies. The choice of Illumina adapters depends       on your library prep kit and application."
          
     [Illumina](https://www.illumina.com/science/technology/next-generation-sequencing/plan-experiments/multiplex-sequencing.html)
   
   &nbsp;
   
- **How are illumina adapters attached to the DNA strand?**

&nbsp;


- How long do reads take on average?
   
     No more than 4 hours!

&nbsp;

    
- How do illumina adapters work?
   
         
     "Sequencing libraries are typically created by fragmenting DNA and adding specialized adapters to both ends. In the Illumina sequencing workflow, these adapters contain complementary sequences that allow the DNA fragments to bind to the flow cell."
      
     [illumina adapters](https://www.illumina.com/science/technology/next-generation-sequencing/beginners/ngs-workflow.html)

&nbsp;

- In what ways could a "Read QC" fail?  How is fastqc read quality calculated?
   
     Typically if many of the reads have a score <30 
      
     [more on fastqc reads](https://dnacore.missouri.edu/PDF/FastQC_Manual.pdf)
 
 &nbsp;
 
   
     

&nbsp;

- What are "contigs"?
   
     a set of overlapping DNA segments that together represent a consensus region of DNA

&nbsp;

- **Are Preliminary Assembled Genomes "polished" manually? What is the polishing pipeline? it seems that polish.pdf and polishV2.pdf are the same slide.**

&nbsp;

- what is "mafft"? 
    
     MAFFT (for multiple alignment using fast Fourier transform) is a multiple sequence alignment program

&nbsp;

- **What are velveth and velvetg? How do they differ?

     Velvet is genome assembler and it has to specific commands velvetg and velveth.

     Velvetg is the core of Velvet where the de Bruijn graph is built then manipulated using sequences

     Velveth takes in a number of sequence files, produces a hashtable, then outputs two files in an output directory
     
&nbsp;

- what is vcf file? 

     In genomics, a VCF (Virtual Call Format) file specifies the format of a text file used in bioinformatics for storing gene sequence variations

     [internationalgenome](https://www.internationalgenome.org/wiki/Analysis/Variant%20Call%20Format/vcf-variant-call-format-version-40/)

&nbsp;

- what does consensus mean? 

    The consensus refers the most common nucleotides found at a specific location in DNA or RNA; or what is expected to be at that specific location.

&nbsp;
