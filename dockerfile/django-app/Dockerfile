FROM ubuntu-python36
ADD requirement.txt /tmp
RUN python3.6 -m pip install -i https://pypi.tuna.tsinghua.edu.cn/simple -r /tmp/requirement.txt && rm -rf /tmp/* && rm -rf /root/.cache
ADD . /app
RUN python3.6 -m pip install -i https://pypi.tuna.tsinghua.edu.cn/simple -r /app/requirement.txt && rm -rf /tmp/* && rm -rf /root/.cache && mkdir -p /app/log && mkdir -p /app/config
WORKDIR /app
CMD sh start.sh django_web