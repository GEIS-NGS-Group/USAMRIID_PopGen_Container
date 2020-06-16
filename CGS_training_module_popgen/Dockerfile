# our base image
FROM ubuntu:latest

# Install python and pip
RUN apt-get update && apt-get -y update
RUN apt-get install -y build-essential python3.6 python3-pip python3-dev
RUN pip3 -q install pip –upgrade

#Constants

#ARG YAML_VERSION=


#Install tools
RUN apt-get update \
 && apt-get install -y r-base
RUN apt-get install python-yaml
RUN pip3 install jupyter

#Cleanup
RUN apt-get clean

# Install the conda environment
COPY cond_environment.yml /
RUN conda env create -f /conda_environment.yml && conda clean -a

# Add conda installation dir to PATH 
ENV PATH /opt/conda/envs/cgs-popgen-1.0dev/bin:$PATH

RUN mkdir src
RUN mkdir notebooks

# install Python modules needed by the Python app
COPY requirements.txt /usr/src/app/
RUN pip3 install --no-cache-dir -r /usr/src/app/requirements.txt

# copy files required for the app to run
COPY app.py /usr/src/app/
COPY templates/index.html /usr/src/app/templates/

# tell the port number the container should expose
EXPOSE 5000

# run the application
CMD ["python", "/usr/src/app/app.py"]

CMD ["jupyter", "notebook", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--allow-root"]

