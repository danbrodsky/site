# stop and remove existing containers
docker stop $(docker ps -q)
docker rm $(docker ps -qa)

# get image and start new container
docker pull neo4j
docker run \
--name testneo4j \
-p7474:7474 -p7687:7687 \
-d \
-v $HOME/neo4j/data:/data \
-v $HOME/neo4j/logs:/logs \
-v $HOME/neo4j/import:/var/lib/neo4j/import \
-v $HOME/neo4j/plugins:/plugins \
--env NEO4J_AUTH=neo4j/test \
-v $HOME/neo4j/conf:/conf --env NEO4J_dbms_memory_pagecache_size=128M --env=NEO4J_dbms_jvm_additional="-Xms128M -Xmx256M" neo4j:latest

# move cypher script and configuration files in
sudo cp ./profile.cypher $HOME/neo4j/data/
sudo cp ./neo4j.conf $HOME/neo4j/conf/

# restart container
docker restart $(docker ps -qa)

