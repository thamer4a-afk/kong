FROM kong:3.4.0

# Copy your declarative config inside the container
COPY kong.yaml /etc/kong/kong.yaml

# Expose Kong ports
EXPOSE 8000 8443 8001 8444

# Run Kong in DB-less mode, loading kong.yaml
ENV KONG_DATABASE=off
ENV KONG_DECLARATIVE_CONFIG=/etc/kong/kong.yaml

ENV KONG_PROXY_LISTEN=0.0.0.0:8000
ENV KONG_ADMIN_LISTEN=0.0.0.0:8001

CMD ["kong", "docker-start"]
