FROM python:3.8-slim

WORKDIR /root
RUN pip install --upgrade pip \
	&& python3 -mpip install --no-cache-dir lxml cython numpy scipy scikit-learn
