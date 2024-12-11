#!/bin/bash
# install_ollama.sh

set -e

curl -fsSL https://ollama.com/install.sh | sh

# Build ARGs
NCPUS=$(nproc || echo 1)

# Install R packages and cleanup
R -q -e '
    options(mc.cores = '${NCPUS}')
    install.packages(c("remotes", "tidyverse"))
    remotes::install_github("RConsortium/S7")
    remotes::install_github("r-lib/httr2")
    remotes::install_github("tidyverse/elmer")
    install.packages("ollamar")
'