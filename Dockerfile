FROM rust:1.67-slim

WORKDIR /usr/src/app
COPY . /usr/src/app
RUN cargo build

ENV PORT 3002
EXPOSE 3002

CMD ["cargo", "run", "-q"]
