FROM python:3
RUN pip3 install libdyson prometheus_client
WORKDIR /app
VOLUME ["/config"]
ENTRYPOINT ["/usr/local/bin/python3", "main.py", "--port", "9034", "--config", "/config/config.ini"]
EXPOSE 9034/tcp
COPY main.py metrics.py connect.py config.py config_builder.py /app/