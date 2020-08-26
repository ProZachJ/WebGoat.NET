FROM mono:slim

ADD . /WebGoat

RUN apt-get update \
    && apt-get install -y wget unzip mono-xsp4 sqlite3 \
    && cd /WebGoat/WebGoat \
    && msbuild

EXPOSE 9000

WORKDIR "/WebGoat/WebGoat"

CMD [ "xsp4", "--printlog" ]