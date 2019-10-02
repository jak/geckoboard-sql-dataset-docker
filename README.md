# Geckoboard's SQL-Dataset... dockerized

This is a Docker image containing [SQL-Dataset by Geckoboard](https://github.com/geckoboard/sql-dataset).

## What is SQL-Dataset?

Quickly and easily send data from Microsoft SQL Server, MySQL, Postgres and SQLite databases to Geckoboard Datasets.

SQL-Dataset is a command line app that takes the hassle out of integrating your database with Geckoboard. Rather than having to work with client libraries and write a bunch of code to connect to and query your database, with SQL-Dataset all you need to do is fill out a simple config file.

## Example usage

Command line:

```
docker run -v ./geckoboard-config.yml:/config.yml -e GECKOBOARD_API_KEY=abc jsixc/geckoboard-sql-dataset -config /config.yml
```

Docker Compose:

```yaml
services:
  geckoboard:
    image: jsixc/geckoboard-sql-dataset:v0.2.3
    command: -config /config.yml
    volumes:
      - ./geckoboard.yml:/config.yml
    environment:
      GECKBOARD_API_KEY: asdasd # if you use environment variable interpolation

```

The default command is `-config /config.yml` so that can be excluded if you use the same file location.


## Available versions

| Version      | Image tags     |
|--------------|----------------|
| v0.2.3       | v0.2.3, latest |

