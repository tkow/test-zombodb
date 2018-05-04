create extension zombodb;

CREATE TABLE products (
    id SERIAL8 NOT NULL PRIMARY KEY,
    name text NOT NULL,
    keywords varchar(64)[],
    short_summary phrase,
    long_description fulltext,
    price bigint,
    inventory_count integer,
    discontinued boolean default false,
    availability_date date
);
-- insert some data

CREATE INDEX idx_zdb_products
          ON products
       USING zombodb(zdb('products', products.ctid), zdb(products))
        WITH (url='http://tkow-elasticsearch:9200/', shards=5, replicas=1);


insert into products (id,name,keywords,short_summary,long_description,price,inventory_count,discontinued,availability_date)
values (1,'test','{atype}','atype data','atype data for zombodb',1000,1,false,now());


SELECT *
  FROM products
 WHERE zdb('products', ctid) ==> 'keywords:(atype) or long_description:(wooden w/5 away) and price < 100000';
