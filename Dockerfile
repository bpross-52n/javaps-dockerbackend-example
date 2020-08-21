FROM osgeo/gdal

ENV INPUT_SOURCE= \
    INPUT_ELEVATION-INTERVAL=10 \
    OUTPUT_SHP=

RUN set -ex \
  && apt-get update \
  && apt-get install -y --no-install-recommends \
    curl \
    zip

COPY files/ /

RUN mkdir /data

RUN mkdir /data/outputs

RUN mkdir /work

WORKDIR /work

CMD [ "/usr/bin/process" ]
