FROM python:3.11-alpine

WORKDIR /code

COPY requirements.txt /code
COPY app.py /code
COPY start.sh .
RUN echo 'hola'
RUN <<EOF
pip3 install -r requirements.txt
apk --update add redis
chmod 755 start.sh
EOF
RUN echo 'hi'


ENTRYPOINT ["sh", "start.sh"]