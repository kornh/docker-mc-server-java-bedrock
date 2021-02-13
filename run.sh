vpwd=$(pwd)

mkdir ./data
mkdir ./data/world
mkdir ./data/world_nether
mkdir ./data/world_the_end

docker run --rm \
     -d \
    -p 25565 \
    -p 19132 \
    -p 25575 \
    -v $vpwd'/data/world:/app/world' \
    -v $vpwd'/data/world_nether:/app/world_nether' \
    -v $vpwd'/data/world_the_end:/app/world_the_end' \
    mc-server:latest #   -it \