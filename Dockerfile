FROM ubuntu:22.10

RUN apt-get update
RUN apt-get install -y python3 python3-pip python3-venv wget git libgl1-mesa-glx
RUN apt update
RUN python3 -m venv einops

RUN . einops/bin/activate

RUN git clone https://github.com/xinntao/BasicSR.git

WORKDIR /BasicSR

RUN apt-get install -yq libgtk2.0-dev
RUN pip install opencv-python-headless
RUN pip install setuptools==49.6.0
RUN pip install scipy==1.9.0
RUN pip install -e .
RUN mkdir -p /BasicSR/Set5

COPY start.sh cpu.patch HAT_SRx4_ImageNet-pretrain.pth test.py ./
COPY Set5 /BasicSR/Set5

RUN chmod +x start.sh

ENTRYPOINT ["./start.sh"]
