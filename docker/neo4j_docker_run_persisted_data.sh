docker run \
  -p 7474:7474 \
  -p 7687:7687 \
  -p 7473:7473 \
  -v $HOME/neo4j/data:/data \
  -v $HOME/neo4j/logs:/logs \
  -v $HOME/neo4j/import:/var/lib/neo4j/import \
  -v $HOME/neo4j/conf/:/conf/ \
  neo4j:latest
  