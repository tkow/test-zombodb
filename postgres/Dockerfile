FROM postgres:9.5


RUN apt update && apt install -y wget && \
    wget https://www.zombodb.com/releases/v5.6.4-1.0.1/zombodb_jessie_pg95-5.6.4-1.0.1_amd64.deb && \
    apt install -y ./zombodb_jessie_pg95-5.6.4-1.0.1_amd64.deb && \
    apt remove -y wget && \
    rm -f zombodb_jessie_pg95-5.6.4-1.0.1_amd64.deb;
