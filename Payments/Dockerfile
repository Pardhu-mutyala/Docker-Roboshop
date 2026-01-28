FROM python:3.9.23-alpine3.22
EXPOSE 8080
WORKDIR /opt/server
COPY requirements.txt .
COPY *.py .
COPY payment.ini .
RUN addgroup -S roboshop && adduser -S rooshop -G roboshop \
    && chown -R roboshop:roboshop /opt/server
RUN apk add python3-dev build-base linux -headers pcre.dev
RUN pip3 install -r requirements.txt
USER roboshop
CMD ["uwsgi", "--ini", "payment.ini"]















# FROM python:3.9
# EXPOSE 8080
# WORKDIR /opt/server
# COPY requirements.txt .
# COPY *.py .
# COPY payment.ini .
# RUN pip install -r requirements.txt
# CMD ["uwsgi", "--ini", "payment.ini"]