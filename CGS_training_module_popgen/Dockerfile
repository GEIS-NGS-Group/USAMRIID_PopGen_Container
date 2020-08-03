FROM continuumio/miniconda

RUN apt-get update && apt-get install -y \
    r-base-dev \
    libssl-dev \
    samtools \
	&& apt-get clean \
	&& apt-get remove \
	&& rm -rf /var/lib/apt/lists/*

RUN conda install python=3 -y --quiet -c conda-forge
RUN conda install markdown -y --quiet -c conda-forge
RUN conda install pymdown-extensions -y --quiet -c conda-forge
RUN conda install pygments -y --quiet -c conda-forge
RUN conda install pigz -y --quiet -c conda-forge
RUN conda install psutil -y --quiet -c conda-forge
RUN conda install fastqc -y --quiet -c bioconda
RUN conda install bwa -y --quiet -c bioconda
RUN conda install bedtools -y --quiet -c bioconda
RUN conda install bcftools -y --quiet -c bioconda
RUN conda install bamtools -y --quiet -c bioconda
RUN conda install mummer -y --quiet -c bioconda
RUN conda install trimmomatic -y --quiet -c bioconda
RUN conda install quast -y --quiet -c bioconda
RUN conda install mafft -y --quiet -c bioconda

RUN pip install snakemake
RUN pip install notebook

RUN echo 'options("repos"="http://cran.rstudio.com")' >> /usr/lib/R/etc/Rprofile.site

RUN Rscript -e "install.packages(c('classInt','cluster','DBI','igraph','knitr','lattice','magrittr','Matrix','mgcv','nlme','pegas','pkgconfig','reshape2','rmarkdown','seqinr','sf','sp','spData','spdep','testthat','units','vegan'))"
RUN Rscript -e "install.packages('IRkernel')"
RUN Rscript -e "IRkernel::installspec()"

COPY src /opt/src
COPY data /opt/data

EXPOSE 8888

CMD ["/opt/conda/bin/jupyter","notebook","--notebook-dir=/opt/src","--ip='*'","--port=8888","--no-browser","--allow-root"]