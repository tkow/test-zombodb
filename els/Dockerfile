FROM docker.elastic.co/elasticsearch/elasticsearch:5.6.4

RUN wget https://www.zombodb.com/releases/v5.6.4-1.0.1/zombodb-es-plugin-5.6.4-1.0.1.zip && \
    /usr/share/elasticsearch/bin/elasticsearch-plugin install --batch file://$(pwd)/zombodb-es-plugin-5.6.4-1.0.1.zip && \
    rm -fr zombodb-es-plugin-5.6.4-1.0.1.zip;

