FROM python:3.9.1

RUN apt update && \
  apt upgrade -y && \
  apt install curl wget -y && \
  apt clean

RUN pip install pandas

ENV SPARK_VERSION=3.3.1 HADOOP_VERSION=3 JAVA_VERSION=11
ENV JAVA_HOME="/home/jdk-${JAVA_VERSION}.0.2"
ENV PATH="${JAVA_HOME}/bin/:${PATH}"
ENV SPARK_HOME="/home/spark"
ENV PATH="${SPARK_HOME}/bin/:${PATH}"
ENV PYTHONPATH="${SPARK_HOME}/python/:$PYTHONPATH"
ENV PYTHONPATH="${SPARK_HOME}/python/lib/py4j-0.10.9.5-src.zip:$PYTHONPATH"

RUN DOWNLOAD_URL="https://download.java.net/java/GA/jdk${JAVA_VERSION}/9/GPL/openjdk-${JAVA_VERSION}.0.2_linux-x64_bin.tar.gz" \
  && TMP_DIR="$(mktemp -d)" \
  && curl -fL "${DOWNLOAD_URL}" --output "${TMP_DIR}/openjdk-${JAVA_VERSION}.0.2_linux-x64_bin.tar.gz" \
  && mkdir -p "${JAVA_HOME}" \
  && tar xzf "${TMP_DIR}/openjdk-${JAVA_VERSION}.0.2_linux-x64_bin.tar.gz" -C \
  && rm -rf "${TMP_DIR}" \
  && java --version

RUN DOWNLOAD_URL_SPARK="https://archive.apache.org/dist/spark/spark-${SPARK_VERSION}/spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION}.tgz" \
  && wget --no-verbose -O apache-spark.tgz "${DOWNLOAD_URL_SPARK}"\
  && mkdir -p /home/spark \
  && tar -xf apache-spark.tgz -C /home/spark --strip-components=1 \
  && rm apache-spark.tgz

ENTRYPOINT ["python" ]