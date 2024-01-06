# Build application
FROM alpine:3.19 as builder

WORKDIR /app
RUN apk add --no-cache gcc musl-dev linux-headers
COPY ./src .
RUN gcc retail.c -o retail

# Run
FROM alpine:3.19 as runtime

COPY --from=builder /app/retail /bin/retail
RUN chmod +x /bin/retail
CMD ["retail", "/logs"]