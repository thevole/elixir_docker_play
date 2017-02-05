# FROM elixir:1.4.1
# ENV DEBIAN_FRONTEND=noninteractive
# RUN mix local.hex --force
# RUN mix local.rebar --force
# RUN mix archive.install --force https://github.com/phoenixframework/archives/raw/master/phoenix_new.ez
# RUN curl -sL https://deb.nodesource.com/setup_7.x | bash -
# RUN apt-get install -y -q nodejs

FROM debian
RUN apt-get update && apt-get install -y libssl1.0.0 postgresql-client && apt-get autoclean
RUN apt-get update -qq && apt-get install -y locales -qq &&  \
localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8

EXPOSE 4000
# RUN locale-gen en_US.UTF-8
# COPY locale.gen /etc/locale.gen
WORKDIR /app
ADD . /app