FROM nfcore/base:1.7
LABEL authors="Yassine Souilmi" \
      description="Docker image containing all requirements for nf-core/bcldemux pipeline"

COPY environment.yml /
RUN conda env create -f /environment.yml && conda clean -a
ENV PATH /opt/conda/envs/nf-core-bcldemux-1.0dev/bin:$PATH
