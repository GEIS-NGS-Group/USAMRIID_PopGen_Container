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
		expand("results/fastqc/{smp}_fastqc.logfc.txt",smp=SAMPLES)

##----------------------##
## FASTQ ORIGINAL READS ##
##----------------------##

rule raw_fastqc:
    """
    Run fastQC for each pair
    """
    input:
        "samples/raw/{smp}_R1_001.fastq.gz", "samples/raw/{smp}_R2_001.fastq.gz"
    output:
        "results/fastqc/{smp}_R1_001_fastqc.html", "results/fastqc/{smp}_R1_001_fastqc.zip","results/fastqc/{smp}_R2_001_fastqc.html","results/fastqc/{smp}_R2_001_fastqc.zip", log1="results/fastqc/{smp}_fastqc.logfc.txt"
    shell: """
		fastqc {input} -f fastq -o results/fastqc > {output.log1}
	"""