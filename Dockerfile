FROM alpine:3.22

LABEL org.opencontainers.image.title="BestVid Site Kit" \
      org.opencontainers.image.description="Small URL helpers for BestVid links." \
      org.opencontainers.image.url="https://bestvid.net" \
      org.opencontainers.image.source="https://github.com/bbwdadfg/bestvid-site-kit" \
      org.opencontainers.image.licenses="MIT"

COPY docker/bestvid-site-kit /usr/local/bin/bestvid-site-kit

RUN chmod +x /usr/local/bin/bestvid-site-kit

ENTRYPOINT ["bestvid-site-kit"]
