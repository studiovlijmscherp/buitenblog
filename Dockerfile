# Gebruik het officiële Jekyll image
FROM jekyll/jekyll:latest

# Stel de werkdirectory in
WORKDIR /srv/jekyll


# Kopieer de huidige directory inhoud naar /srv/jekyll in de container
COPY . .

# Installeer de bundels
RUN bundle install

# Exposeer poort 4000
EXPOSE 4000

# Start Jekyll server
CMD ["jekyll", "serve", "--host", "0.0.0.0"]
