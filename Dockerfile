FROM mattf/workshop:base

ENV NB_USER=nbuser
ENV NB_UID=1011

ADD PySpark_HDFS.ipynb /notebooks/PySpark_HDFS.ipynb

USER root
RUN chmod g+rw /notebooks/PySpark_HDFS.ipynb

USER $NB_USER
CMD ["/start.sh"]
