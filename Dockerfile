FROM python:3.7.3-stretch

WORKDIR /work

COPY . /work

# hadolint ignore=DL3013
RUN pip install --upgrade pip && \
  pip install -r /work/requirements.txt

EXPOSE 80

CMD ["python", "app.py"]
