FROM ruby:latest

COPY . /app

WORKDIR /app

ENTRYPOINT ["ruby", "main.rb"]
CMD ["--offset", "0", "--limit", "3"]
