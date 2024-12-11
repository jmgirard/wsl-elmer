ARG R_VERSION=4.4.2

FROM rocker/tidyverse:${R_VERSION}

COPY install_cuda_latest.sh install_ollama.sh /setup_scripts/

RUN chmod +rxw /setup_scripts/*.sh
RUN /setup_scripts/install_cuda_latest.sh
RUN /setup_scripts/install_ollama.sh

ENV PATH=/usr/local/cuda/bin${PATH:+:${PATH}}
ENV LD_LIBRARY_PATH=/usr/local/cuda/lib64
ENV CUDA_PATH=/usr/local/cuda
ENV WHISPER_CUBLAS=1

RUN apt-get update && apt-get install -y tini
ENTRYPOINT ["/usr/bin/tini", "--", "/bin/bash", "-c", "/init & exec ollama serve"]