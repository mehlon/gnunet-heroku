FROM registry.gitlab.com/reclaimid/gnunet-docker
RUN apk add caddy
ENV PORT=2015
EXPOSE 2015

COPY . /opt

CMD ["./run.sh"]
