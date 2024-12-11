# wsl-ollama

## Image Tags/Versions

| Tag    | Base Image       | Operating System | R ver | ollama ver |
|--------|------------------|------------------|-------|------------|
| latest | rocker/tidyverse | Ubuntu 24.04 LTS | 4.4.2 | 0.5.1      |
| 4.4.2  | rocker/tidyverse | Ubuntu 24.04 LTS | 4.4.2 | 0.5.1      |
| 4.4.1  | rocker/tidyverse | Ubuntu 22.04 LTS | 4.4.1 | 0.5.1      |


## Included R packages

### Interfaces
- [elmer](https://elmer.tidyverse.org/)
- [ollamar](https://hauselin.github.io/ollama-r/)

### Data Preparation
- [data.table](https://rdatatable.gitlab.io/data.table/)
- [tidyverse](https://www.tidyverse.org/)

## Dependencies
1. Verify that your machine's graphics card supports CUDA: <https://developer.nvidia.com/cuda-gpus>
2. On Windows, install the latest game-ready driver from NVIDIA: <https://www.nvidia.com/Download/index.aspx#>
3. On Windows, install the latest version of Docker Desktop: <https://www.docker.com/products/docker-desktop/>

## Usage

You have several options to use this image. I prefer "clone and compose" but "pull and run" may be easier to start with.

### Pull and Run
In the Windows Terminal, run:
```
docker pull jmgirard/wsl-ollama
docker run --gpus all -it -e PASSWORD=pass -p 8787:8787 jmgirard/wsl-ollama
```

### Clone and compose
In the Windows Terminal, run:
```
git clone https://github.com/jmgirard/wsl-ollama.git
cd wsl-ollama
docker-compose up --build -d
```
