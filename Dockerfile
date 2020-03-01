FROM python:3.6.10-slim

WORKDIR /root
RUN pip install --upgrade pip \
	&& python3 -mpip install --no-cache-dir lxml cython numpy scipy scikit-learn
