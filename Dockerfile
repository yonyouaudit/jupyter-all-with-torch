FROM docker.io/jupyter/all-spark-notebook
LABEL maintainer="sunny <tufeiping@hotmail.com>"

WORKDIR /home/jovyan
COPY torch-1.8.0-cp38-cp38-manylinux1_x86_64.whl /home/jovyan
RUN pip install torch-1.8.0-cp38-cp38-manylinux1_x86_64.whl
RUN rm -f torch-1.8.0-cp38-cp38-manylinux1_x86_64.whl
