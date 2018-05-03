test Elastic Search with zomboDB

# init 

```
docker-compose up -d
docker-compose exec postgres psql -U postgres -c 'create extension zombodb';
```
