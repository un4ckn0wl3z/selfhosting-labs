docker run -d --rm --name zookeeper-1 --net kafka -v ${PWD}/config/zookeeper-1/zookeeper.properties:/kafka/config/zookeeper.properties un4ckn0wl3z/zookeeper:2.7.0
docker run -d --rm --name kafka-1 --net kafka -v ${PWD}/config/kafka-1/server.properties:/kafka/config/server.properties un4ckn0wl3z/kafka:2.7.0
docker run -d --rm --name kafka-2 --net kafka -v ${PWD}/config/kafka-2/server.properties:/kafka/config/server.properties un4ckn0wl3z/kafka:2.7.0
docker run -d --rm --name kafka-3 --net kafka -v ${PWD}/config/kafka-3/server.properties:/kafka/config/server.properties un4ckn0wl3z/kafka:2.7.0
