import sys


def message(mes):
  sys.stderr.write("|--- " + mes + "\n")

##----------------##
## Initialisation ##
##----------------##

configfile: "config.yaml" 

# User-defined variables

BASE_DIR = config["dir_paths"]["base_dir"]
WDIR = BASE_DIR +  config["dir_paths"]["work_dir"]
RDIR = BASE_DIR + config["dir_paths"]["result_dir"]


if os.path.exists(RDIR):
	print (RDIR + " directory exists")
else:
	os.mkdir(RDIR)
workdir: RDIR
message("Results directory is: " + RDIR)

workdir: WDIR
message("The current working directory is " + WDIR)

##--------------------------------------------------------------------------------------##
## The list of samples to be processed
##--------------------------------------------------------------------------------------##

(SAMPLES,) = glob_wildcards("samples/raw/{smp}_R1_001.fastq.gz")
print(SAMPLES)
NB_SAMPLES = len(SAMPLES)

message("Number of samples to analyze: " + str(NB_SAMPLES))
for sid in sorted(SAMPLES):
    message("Sample " + sid + " (reads: " + sid + "_R1_001.fastq.gz & " + sid + "_R2_001.fastq.gz) will be processed")

##-------------------##
## SUCCESS / FAILURE ##
##-------------------##

onsuccess:
    print("Workflow finished, no error")

onerror:
	print("An error occurred")

##-----------##
## THE RULES ##
##-----------##

rule all:
	input:
		expand("samples/raw/{smp}_R1_001.fastq.gz", smp=SAMPLES),
		expand("samples/raw/{smp}_R2_001.fastq.gz", smp=SAMPLES),
		expand("results/fastqc/{smp}_R1_001_fastqc.html",smp=SAMPLES),
		expand("results/fastqc/{smp}_R1_001_fastqc.zip",smp=SAMPLES),
		expand("results/fastqc/{smp}_R2_001_fastqc.html",smp=SAMPLES),
		expand("results/fastqc/{smp}_R2_001_fastqc.zip",smp=SAMPLES),
		expand("results/fastqc/{smp}_fastqc.logfc.txt",smp=SAMPLES),
		expand("results/primer_adapt_removed/{smp}_R1_paired.fastq",smp=SAMPLES),
		expand("results/primer_adapt_removed/{smp}_R1_unpaired.fastq",smp=SAMPLES),
		expand("results/primer_adapt_removed/{smp}_R2_paired.fastq",smp=SAMPLES),
		expand("results/primer_adapt_removed/{smp}_R2_unpaired.fastq",smp=SAMPLES),
		expand("results/primer_adapt_removed/{smp}_trimmolog.txt",smp=SAMPLES)

rule trimmomatic:
	input:
		fwd="samples/raw/{smp}_R1_001.fastq.gz", rev="samples/raw/{smp}_R2_001.fastq.gz"
	output:
		fastq1p="results/primer_adapt_removed/{smp}_R1_paired.fastq",
		fastq1up="results/primer_adapt_removed/{smp}_R1_unpaired.fastq",
		fastq2p="results/primer_adapt_removed/{smp}_R2_paired.fastq",
		fastq2up="results/primer_adapt_removed/{smp}_R2_unpaired.fastq",
		log2="results/primer_adapt_removed/{smp}_trimmolog.txt"
	params:
		adaptors=config["parameters"]["pri_adaptors"],logprefix=config["parameters"]["logstr"]
	message: """--- Cutting adaptors/primers and quality trimming reads head and tail of sequence reads."""
	shell: """
	    time trimmomatic PE -threads 10 -trimlog {params.logprefix} {input.fwd} {input.rev} {output.fastq1p} {output.fastq1up} {output.fastq2p} {output.fastq2up} ILLUMINACLIP:{params.adaptors}:2:30:10 LEADING:2 TRAILING:2 SLIDINGWINDOW:5:20 MINLEN:20 > {output.log2}
	"""