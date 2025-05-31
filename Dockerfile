# Use the official Kong image from Docker Hub
FROM kong:3.4.0

# Optional: copy custom Kong configuration files if you have any
# COPY kong.conf /etc/kong/kong.conf

# Expose default Kong ports
EXPOSE 8000 8443 8001 8444

# Set environment variables (optional, can also be set via docker run or Compose)
ENV KONG_DATABASE=postgres
ENV KONG_PG_HOST=dpg-d0tflpqdbo4c739ks99g-a
ENV KONG_PG_PORT=5432
ENV KONG_PG_USER=thamer
ENV KONG_PG_PASSWORD=kZLQZZ3hGDFJkGEwfifNoOswovYTZXrz
ENV KONG_PG_DATABASE=account_db_kpsn

ENV KONG_PROXY_LISTEN=0.0.0.0:8000
ENV KONG_ADMIN_LISTEN=0.0.0.0:8001

# Start Kong in foreground (this is the default entrypoint)
CMD ["kong", "docker-start"]
