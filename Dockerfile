FROM haifengat/centos:8.2
ENV DOWNLOAD_URL https://github.com/haifengat/ctp_real_md/archive/master.zip
RUN mkdir /real_md
WORKDIR /real_md
RUN curl -o master.zip "${DOWNLOAD_URL}"; \
    unzip master.zip; \
    rm master.zip -rf; \
    pip install --no-cache-dir -r ./ctp_real_md-master/requirements.txt

ENTRYPOINT ["python", "./ctp_real_md-master/tick_ctp.py"]

 