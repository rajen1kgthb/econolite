# Use Ubuntu 24.04 as the base image
FROM ubuntu:24.04

# Prevent interactive prompts during installation
ENV DEBIAN_FRONTEND=noninteractive

# Install native build tools (gcc, g++, cmake, make)
RUN apt-get update && apt-get install -y \
    build-essential \
    cmake \
    git \
    g++-powerpc-linux-gnu \
    && rm -rf /var/lib/apt/lists/*

# Set the working directory inside the container
WORKDIR /app

# The command that runs when the container starts
CMD ["bash"]
