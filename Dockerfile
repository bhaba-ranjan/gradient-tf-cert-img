# docker.io/paperspace/tensorflow-python
# 0.0.2

# FROM gcr.io/tensorflow/tensorflow:1.5.0-gpu
# Alternate pinned source:
FROM docker.io/paperspace/tensorflow:2.0.0-gpu-py3-jupyter-lab

RUN mv /usr/local/bin/pip /usr/local/bin/pip_2

RUN apt-get -y update && apt-get install -y python3-pip && pip3 install --upgrade pip

RUN rm /usr/local/bin/pip && mv /usr/local/bin/pip_2 /usr/local/bin/pip


RUN pip install \
    tensorflow-gpu \
    jupyter \
    scikit-learn \
    scipy \
    sklearn \
    pandas \
    Pillow \
    matplotlib \
    h5py \
    mock \
    certifi \
    configparser \
    enum34 \
    funcsigs \
    pathlib2 \
    pbr \
    scandir \
    singledispatch \
    webencodings 

RUN apt-get install -y wget

RUN wget https://raw.githubusercontent.com/gradient-ai/TensorFlow/main/quick_start_beginner.ipynb


EXPOSE 8888


CMD ["bash", "-c", "source /etc/bash.bashrc && jupyter notebook --ip 0.0.0.0 --no-browser --allow-root"]
