FROM scratch

COPY download/prometheus              /bin/prometheus
COPY download/promtool                /bin/promtool
COPY download/prometheus.yml          /etc/prometheus/prometheus.yml
COPY download/console_libraries/      /etc/prometheus/
COPY download/consoles/               /etc/prometheus/

EXPOSE     9090
VOLUME     [ "/prometheus" ]
WORKDIR    /prometheus
ENTRYPOINT [ "/bin/prometheus" ]
CMD        [ "-config.file=/etc/prometheus/prometheus.yml", \
             "-storage.local.path=/prometheus", \
             "-web.console.libraries=/etc/prometheus/console_libraries", \
             "-web.console.templates=/etc/prometheus/consoles" ]
