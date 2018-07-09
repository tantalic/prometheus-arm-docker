FROM @BUSYBOX_IMAGE@
COPY --from=0 /bin/prometheus /bin
COPY --from=0 /bin/promtool /bin
COPY --from=0 /etc/passwd /etc/passwd
COPY --from=0 /etc/group /etc/group
COPY --from=0 --chown=nobody:nogroup /prometheus /prometheus
COPY --from=0 --chown=nobody:nogroup /etc/prometheus /etc/prometheus
COPY --from=0 /usr/share/prometheus /usr/share/prometheus
