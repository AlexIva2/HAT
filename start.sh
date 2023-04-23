#!/bin/bash

git clone https://github.com/XPixelGroup/HAT.git

cd HAT

git apply ../cpu.patch

mv /BasicSR/Set5 /BasicSR/HAT/datasets/Set5
mv /BasicSR/HAT_SRx4_ImageNet-pretrain.pth /BasicSR/HAT/experiments/pretrained_models/HAT_SRx4_ImageNet-pretrain.pth

python3 setup.py develop

python3 hat/test.py -opt options/test/HAT_SRx4_ImageNet-LR.yml

cd ..

python3 test.py
