FROM continuumio/miniconda3:4.10.3
LABEL authors="Sreeram Peela" \
      description="Docker image for VelvetOptimser https://github.com/tseemann/VelvetOptimiser"

RUN apt update; apt install -y  gcc procps jq
RUN conda config --add channels bioconda
RUN conda config --add channels conda-forge
RUN conda create -n velvetoptimiser
RUN conda install -c bioconda perl-velvetoptimiser
ENV PATH /opt/conda/bin:/opt/conda/condabin:/opt/conda/envs/velvetoptimiser/bin
## docker image for velvetoptimiser
