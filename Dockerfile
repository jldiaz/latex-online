FROM aslushnikov/latex-online

RUN rm -rf /var/www && git clone https://github.com/jldiaz/latex-online /var/www
RUN cd /var/www && npm install .

COPY ./util/docker-entrypoint.sh /


EXPOSE 2700
CMD ["./docker-entrypoint.sh"]

