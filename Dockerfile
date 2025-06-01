# Use the official Kong image from Docker Hub
FROM kong:3.4.0

# Copy your kong.yaml declarative config into the container
COPY kong.yaml /etc/kong/kong.yaml

# Expose default Kong ports
EXPOSE 8000 8443 8001 8444

# Set environment variables
ENV KONG_DATABASE=postgres
ENV KONG_PG_HOST=dpg-d0tflpqdbo4c739ks99g-a
ENV KONG_PG_PORT=5432
ENV KONG_PG_USER=thamer
ENV KONG_PG_PASSWORD=kZLQZZ3hGDFJkGEwfifNoOswovYTZXrz
ENV KONG_PG_DATABASE=account_db_kpsn

ENV KONG_PROXY_LISTEN=0.0.0.0:8000
ENV KONG_ADMIN_LISTEN=0.0.0.0:8001

# Tell Kong to load declarative config from kong.yaml
ENV KONG_DECLARATIVE_CONFIG=/etc/kong/kong.yaml

# Start Kong in foreground with docker-start command
CMD ["kong", "docker-start"]
