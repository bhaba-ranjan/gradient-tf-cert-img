# tensorflow-python

Tensorflow exam can have different version requirements for the exam.

Here is how you can change a few numbers and run couple commands to get you container setup.

Overall you need to build your image, push to docker hub and use it in paperspace gradient.

1. Clone the repository.
2. Install `docker` in your system. https://www.docker.com/products/docker-desktop/
3. Change the version number in this line of Dockerfile `FROM tensorflow/tensorflow:2.9.0-gpu-jupyter`
4. Replace 2.9.0 with a number required by you exam eg: `FROM tensorflow/tensorflow:2.10.0-gpu-jupyter`
5. Make sure `tensorflow/tensorflow:2.10.0-gpu-jupyter` image is present in docker hub.
6. To verify type go to https://hub.docker.com/r/tensorflow/tensorflow/tags type `eg: 2.10.0` and see if there is an image present.
7. Change `RUN pip install` packages to the reqired version.
8. Do not remove jupyterlab package in the end.
9. Go inside the colned project dir and run `docker build --tag my_image .`
10. Create an account on docker hub and push your local image.
11. Go to gradient and use your image(in the advanced section of notebooks) from docker hub like `docker-hub-username/dokcer-image-name-you-used-for-docker-hub`.
12. you are all set.

    
