FROM        registry.access.redhat.com/ubi8/python-39:1-83

WORKDIR     /dashdotdb

COPY        . ./

RUN         pip3 install --no-cache-dir --use-pep517 . && \
            pip3 install --no-cache-dir gunicorn

ENTRYPOINT  ["./entrypoint.sh"]
