FROM jfialkowski/centos7base:latest
COPY main /tmp/main
RUN chmod + /tmp/main
LABEL org.label-schema.schema-version="1.0" \
    org.label-schema.name="CentOS Base Image" \
    org.label-schema.vendor="CentOS" \
    org.label-schema.license="GPLv2" \
    org.label-schema.build-date="20190305"
USER 1000001
ENTRYPOINT "/tmp/main"
