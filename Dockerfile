# Gebruik het officiële Jekyll image
FROM jekyll/jekyll:latest

# Stel de werkdirectory in
WORKDIR /srv/jekyll


# Kopieer de huidige directory inhoud naar /srv/jekyll in de container
COPY . .

# Voeg het huidige platform toe aan de lockfile
RUN bundle lock --add-platform x86_64-linux

# Installeer de bundels
RUN bundle config set force_ruby_platform true && bundle install

# Exposeer poort 4000
EXPOSE 4000

# Start Jekyll server
CMD ["jekyll", "serve", "--host", "0.0.0.0"]
