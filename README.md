# Docker image for PATRIC command line interface v.1.039 

Build Docker image for ARM and x86 architectures:
```
docker buildx create --name mybuilder
docker buildx use mybuilder
docker buildx build --platform=linux/amd64,linux/arm64 -t semenleyn/patric_cli_1.039_ubuntu_20.04:latest --push .
```

# Usage
```
docker run --rm -v "$(pwd)/data:/data" -w /data semenleyn/patric_cli_1.039_ubuntu_20.04 [PATRIC CLI command]

# Example:
docker run --rm -v "$(pwd)/data:/data" -w /data semenleyn/patric_cli_1.039_ubuntu_20.04 p3-gto 470.8431
```