FROM fstlx/qt5:ubuntu18

RUN apt-get install diffutils -y

COPY run.sh /run.sh

ENTRYPOINT ["/run.sh"]
