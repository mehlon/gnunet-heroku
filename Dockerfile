FROM registry.gitlab.com/reclaimid/gnunet-docker
#RUN apk add caddy
RUN apk add curl && curl https://getcaddy.com | bash -s personal http.cgi
ENV PORT=2015
EXPOSE 2015

COPY . /opt

CMD ["./run.sh"]
