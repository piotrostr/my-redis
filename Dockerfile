 FROM rust
 
 WORKDIR /my-redis
 COPY . .
 
 RUN cargo build --release
  
 
 FROM alpine
 
 COPY --from=builder /my-redis/my-redis ./
 
 CMD ["my-redis"]
