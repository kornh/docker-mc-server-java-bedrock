vpwd=$(pwd)

mkdir ./data
mkdir ./data/world
mkdir ./data/world_nether
mkdir ./data/world_the_end

docker run --rm \
     -it \
    -p 25565 \
    -p 19132 \
    -p 25575 \
    -v $vpwd'/data:/app/data' \
    mc-server:latest #   -it \