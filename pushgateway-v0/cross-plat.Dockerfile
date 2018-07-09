FROM @BUSYBOX_IMAGE@
COPY --from=0 /bin/pushgateway /bin
COPY --from=0 /pushgateway /pushgateway
