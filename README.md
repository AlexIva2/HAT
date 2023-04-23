# Activating More Pixels in Image Super-Resolution Transformer 

[Page](https://paperswithcode.com/paper/activating-more-pixels-in-image-super) on Papers With Code

[Link](https://github.com/XPixelGroup/HAT) to original repository

## From DockerHub

I have already created and pushed the _image_ to [DockerHub](https://hub.docker.com/r/sashaiv/hat/tags)  

All you need is a running Docker and pull the _image_ from my repository.

```
docker pull sashaiv/hat
```

Next run the _container_.

```
docker run sashaiv/hat
```

## Build Docker image on your local machine

You can create the _image_ yourself on your local machine.
```
git clone https://github.com/AlexIva2/HAT.git
cd HAT
```
Run Docker and build the _image_.
```
docker build -t hat .
```
Run the _container_ from the built _image_.
```
docker run hat
```

## Results

After the _container_ stops, the output files will become available for copying.
* First look at the _CONTAINER_ID_ launched from _IMAGE_ sashaiv/hat
```
docker ps -a
```
* Copy the initial images from the __Container__ to <your_folder>:
```
docker cp <container_id>:/BasicSR/HAT/datasets/Set5/LRbicx2 ~/<your_folder>
```
* Copy the enlarged images from the __Container__ to <your_folder>:
```
docker cp <container_id>:/BasicSR/HAT/results/HAT_SRx4_ImageNet-LR/visualization/custom/ ~/<your_folder>
```
