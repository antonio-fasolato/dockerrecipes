#docker run -p 9200:9200 -p 9300:9300 -i -t elasticsearch /bin/bash
#docker run -p 9200:9200 -p 9300:9300 -d elasticsearch

docker build -f ./Dockerfile-tmp -t elastictest .

docker run -p 9200:9200 -p 9300:9300 -v /home/tony/docker_data/elastic:/usr/share/elasticsearch/data -d elastictest