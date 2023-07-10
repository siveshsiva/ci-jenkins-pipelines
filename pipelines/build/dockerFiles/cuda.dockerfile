ARG image

FROM $image

# Install cuda headers https://github.com/eclipse/openj9/blob/master/buildenv/docker/mkdocker.sh#L586-L593
RUN mkdir -p /usr/local/cuda-9.0/nvvm
# TEMP: Copy the header files from the local compile box to the container.
# The Cuda 9.0 container is no longer available. See infra #8157.
COPY cuda-9.0/include /usr/local/cuda-9.0/include
COPY cuda-9.0/nvvm/include /usr/local/cuda-9.0/nvvm/include

ENV CUDA_HOME="/usr/local/cuda-9.0"