FROM python:3.6.10-alpine3.11

WORKDIR /root
RUN apk --no-cache add lapack libstdc++ \
	&& apk --no-cache add --virtual .builddeps g++ gcc gfortran musl-dev lapack-dev libxml2-dev libxslt-dev \
	&& pip install --upgrade pip \
	&& python3 -mpip install lxml cython numpy scipy scikit-learn \
	&& apk del .builddeps \
	&& rm -rf /root/.cache
