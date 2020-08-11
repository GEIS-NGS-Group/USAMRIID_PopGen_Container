# Genomic molecular characterization for viral strains using informatics tools

## Genomics, USAMRIID Viral Population Genomics Training Module

## Objective:  
The training module will provide the complete bioinformatics workflow for analyzing genomics data using open source tools. The training module uses sequence reads generated using genomics tools such as genomic DNA or RNA sequencing using next generation sequencing technology with objective of characterization of viral strains in outbreak setting. 
## Introduction:
Infectious diseases are the most common cause of major fatalities of human life. Ebola virus disease (EVD) is one of the deadliest disease and observed in several outbreaks occurred primarily on the African continent. EVD effects both non-human primates (NHPs) and humans. It is the infection caused by the group of Ebola virus of family Filoviridae. There mainly four viruses Ebola, Sudan, Taï Forest, and Bundibugyo viruses which causes deadly disease in people. Viruses tend to evolve very fast with DNA mutations in their smaller genomes. In epidemiological studies often in outbreak setting genomics tools are often used in studying the specific mutations in viral strains and sub-population that can potentially make these viruses more resistant to treatments. Early during the recent Ebola epidemic in West Africa, scientists speculated that the genetic diversity of the circulating Makona strain of virus (EBOV-Makona) would result in more severe disease and more transmissibility than prior strains, as there are mutations observed on the viral surface glycoprotein. The training module will use the data generated in-house for viral plasmid EBOV Makona virus strain (SL3864-8U) closest to GenBank match Zaire ebolavirus isolate Ebola virus/H.sapiens-wt/SLE/2014/Makona-G3677.2, complete genome (KM034557.1). We will be using this as a reference genome to study the reported mutations in specific plasmids (414 (SL3864), 424 (NP UTR), 440 (GP V82A). In this module we will use open source bioinformatics tool to specific mutation in three other plasmids from the recovered viral isolates. 

## For cgs-popgen-2020 Docker Image build follow instructions

docker pull rkumar23/popgen_training_module:latest

## Getting Started

These instructions will cover usage information and for the docker container 

## Create docker image from source
```
cd CGS_training_module_popgen
docker build -t popgenriid .
```

## Run docker
```
docker run -p 8888:8888 --name popgenriid popgenriid
```
Once you run the container, you should see an output such as this:
```
[I 00:27:16.824 NotebookApp] Writing notebook server cookie secret to /root/.local/share/jupyter/runtime/notebook_cookie_secret
[W 00:27:17.152 NotebookApp] WARNING: The notebook server is listening on all IP addresses and not using encryption. This is not recommended.
[I 00:27:17.154 NotebookApp] Serving notebooks from local directory: /opt/src
[I 00:27:17.154 NotebookApp] Jupyter Notebook 6.1.0 is running at:
[I 00:27:17.154 NotebookApp] http://41f49f80e977:8888/?token=27f77841f0961a2e9ad084bfa606ae7dbf7767097c853ed3
[I 00:27:17.154 NotebookApp]  or http://127.0.0.1:8888/?token=27f77841f0961a2e9ad084bfa606ae7dbf7767097c853ed3
[I 00:27:17.154 NotebookApp] Use Control-C to stop this server and shut down all kernels (twice to skip confirmation).
[C 00:27:17.159 NotebookApp] 
    
    To access the notebook, open this file in a browser:
        file:///root/.local/share/jupyter/runtime/nbserver-1-open.html
    Or copy and paste one of these URLs:
        http://41f49f80e977:8888/?token=27f77841f0961a2e9ad084bfa606ae7dbf7767097c853ed3
     or http://127.0.0.1:8888/?token=27f77841f0961a2e9ad084bfa606ae7dbf7767097c853ed3
```
To access the Jupyter Notebook, open a supported web browser and go to the link shown in the output.

To login to container shell:
```
docker exec -it popgenriid bash
```

To copy from container after making changes in browser:
```
cd CGS_training_module_popgen/src/notebooks 
docker cp popgenriid:/opt/src/notebooks/CGS-Training-Module1.ipynb .

```

## FAQ and Glossary
* [FAQ](https://github.com/rainakumar/CGS_popgen_training_module/blob/master/FAQ.md)
* [Glossary](https://github.com/rainakumar/CGS_popgen_training_module/blob/master/glossary.md)

## Detail Documentation
* [Documents](https://github.com/rainakumar/CGS_popgen_training_module/tree/master/CGS_training_module_popgen/src/docs)

## Find Us

* [GitHub](https://github.com/your/repository)
* [Docker](https://hub.docker.com/repository/docker/rkumar23)

## Contributing

Please read [CONTRIBUTING.md](CONTRIBUTING.md) for details on our code of conduct, and the process for submitting pull requests to us.

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the 
[tags on this repository](https://github.com/your/repository/tags). 

## Authors

* **Raina Kumar** - *Initial work* - [rainakumar](https://github.com/rainakumar/CGS_popgen_training_module)

See also the list of [contributors](https://github.com/your/repository/contributors) who 
participated in this project.

* Nick Rozak
* Joshua Richardson
* MAJ Jeffery Kugelman

## License

This project is licensed under the Open Source License - see the [LICENSE.md](LICENSE.md) file for details.

## Acknowledgments

* all names
* 
