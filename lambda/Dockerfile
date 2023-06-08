FROM lambci/lambda:build-python3.8

WORKDIR /tmp

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt -t /asset

COPY handler.py /asset/handler.py

CMD [ "echo", "ready to go!" ]