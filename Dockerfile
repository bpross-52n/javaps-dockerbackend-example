FROM osgeo/gdal

ENV INPUT_SOURCE=http://geoprocessing.demo.52north.org:8080/xyz/raster2vector.tif \ 
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
