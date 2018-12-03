# Pure Python

FROM python
LABEL author="Li Yingping"

RUN apt-get update

ENV PYTHONIOENCODING=utf-8

# Build folder
RUN mkdir -p /deploy/app
WORKDIR /deploy/app
COPY /requirements.txt /deploy/app/requirements.txt
RUN pip install -r requirements.txt

CMD ["/bin/bash"]
