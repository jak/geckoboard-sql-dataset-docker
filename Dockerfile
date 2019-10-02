FROM debian:buster
ADD https://github.com/geckoboard/sql-dataset/releases/download/v0.3.0.alpha/sql-dataset-linux-amd64 /sql-dataset
RUN chmod +x /sql-dataset
ENTRYPOINT ["/sql-dataset"]
CMD ["-config", "/config.yml"]

