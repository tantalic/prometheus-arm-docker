FROM @BUSYBOX_IMAGE@
COPY --from=0 /bin/node_exporter /bin
COPY --from=0 /etc/passwd /etc/passwd
COPY --from=0 /etc/group /etc/group
