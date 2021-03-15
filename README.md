# Jupyter-All-With-Torch
docker image from Jupyter-Notebook with PyTorch 1.8.0

## Versions

- Python 3.8.8
- Jupyter Notebook 6.2.0
- Jupyter core     : 4.7.1
- ipython          : 7.21.0
- ipykernel        : 5.5.0
- jupyter client   : 6.1.11
- jupyter lab      : 3.0.9
- nbconvert        : 6.0.7
- ipywidgets       : 7.6.3
- nbformat         : 5.1.2
- traitlets        : 5.0.5
- PyTorch 1.8.0



## Build step

- downlaod torch-1.8.0-cp38-cp38-manylinux1_x86_64.whl

~~~bash
wget https://pypi.tuna.tsinghua.edu.cn/packages/89/c1/72e9050d3e31e4df983f6e06799a1a4c896427c1e5645a6d810940944b60/torch-1.8.0-cp38-cp38-manylinux1_x86_64.whl#sha256=fa1e391cca3937d5dea31f31a1a80a01bd4a8062c039448c254bbf5a58eb0787
~~~

> you can download whl from another site

- build image

~~~bash
docker build -t jupyter-all-with-torch .
~~~

## Run

~~~bash
sudo docker run -d -p 8888:8888 --restart=always -v /home/pubserver/jupyter_vol:/home/jovyan --name jupyter-online  sunnytu/jupyter-all-with-torch:latest
~~~

## Using jupyter notebook

Input in browser http://HOST-IP:8888 visit jupyter notebook

## Get token
~~~bash
./gettoken.sh
~~~

Out
~~~text
Currently running servers:
http://0.0.0.0:8888/?token=e8ddb2e1db38e90e81b7c518c5da7f6c956668f180d1f05e :: /home/jovyan
~~~

> e8ddb2e1db38e90e81b7c518c5da7f6c956668f180d1f05e is login token

