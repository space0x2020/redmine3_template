FROM myredmine/myredmine3_04redmine
#FROM debian:10
#FROM ruby:2.4.9
#FROM ruby:2.6-slim-buster

RUN set -eux; \
#        echo "---" >> ~/.gemrc; \
#        echo ":ssl_verify_mode: 0" >> ~/.gemrc; \
        cd /usr/src/redmine; \
# log to STDOUT (https://github.com/docker-library/redmine/issues/108)
        echo 'config.logger = Logger.new(STDOUT)' > config/additional_environment.rb; \
# fix permissions for running as an arbitrary user
        chmod -R ugo=rwX config db sqlite; \
        find log tmp -type d -exec chmod 1777 '{}' +

COPY ./config/configuration.yml config/
#COPY ./config/database.yml config/
EXPOSE 3000

#COPY ./docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["rails", "server", "-b", "0.0.0.0"]

COPY ./entry_point.sh /
#ENTRYPOINT ["/entry_point.sh"]
#CMD ["tail", "-f", "/dev/null"]
