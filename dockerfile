FROM faucet/python3
COPY  . /opt/
EXPOSE 8090
WORKDIR /opt/
Run python3 -m pip install -r requirements.txt
ENTRYPOINT ["python3","forwardgram.py","config.yml-sample"]


