FROM python:3.6.5-alpine3.7

WORKDIR /root
RUN apk --no-cache add lapack libstdc++ \
	&& apk --no-cache add --virtual .builddeps g++ gcc gfortran musl-dev lapack-dev \
	&& pip install --upgrade pip \
	&& pip install scipy numpy scikit-learn cython lxml \
	&& apk del .builddeps \
	&& rm -rf /root/.cache
