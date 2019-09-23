FROM python:3.6.5-alpine3.7

WORKDIR /root
RUN apk --no-cache add lapack libstdc++ py3-lxml py3-numpy cython \
	&& apk --no-cache add --virtual .builddeps g++ gcc gfortran musl-dev lapack-dev \
	&& pip install --upgrade pip \
	&& python3 -mpip install scipy scikit-learn \
	&& apk del .builddeps \
	&& rm -rf /root/.cache
