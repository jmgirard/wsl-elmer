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
4. If using Option 2 below, on Windows, install the latest version of git: <https://git-scm.com/downloads/win>

## Usage

### Option 1: Pull and Run
- In the Windows Terminal, run:
    ```
    docker pull jmgirard/wsl-ollama
    docker run --gpus all -it -e PASSWORD=pass -p 8787:8787 jmgirard/wsl-ollama
    ```
- On Windows, use your web browser to access <http://localhost:8787>.
- In RStudio server, enter "rstudio" as username and "pass" as password.
- Modify the RStudio port and password in the `docker run` command if desired. 

### Option 2: Clone and compose
- In the Windows Terminal, run:
    ```
    git clone https://github.com/jmgirard/wsl-ollama.git
    cd wsl-ollama
    docker-compose up --build -d
    ```
- On Windows, use your web browser to access <http://localhost:8787>.
- In RStudio server, enter "rstudio" as username and "pass" as password.
- Modify the RStudio port and password in the `.env` file if desired. 
