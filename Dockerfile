FROM alpine:3.5

ENV NSNITRO_SERVER ""
ENV NSNITRO_USERNAME ""
ENV NSNITRO_PASSWORD ""

ADD bin/nsnitro /bin/nsnitro
RUN ln -s /bin/nsnitro /bin/ns
CMD ["ns", "--help"]
