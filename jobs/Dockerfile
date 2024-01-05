FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get install -y r-base r-cran-devtools python3 python3-venv python-is-python3 git gcc curl python3-pip libssl-dev
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | bash -s -- -y
ENV PATH="/root/.cargo/bin:${PATH}"
RUN Rscript -e 'devtools::install_github("MLopez-Ibanez/irace")'
