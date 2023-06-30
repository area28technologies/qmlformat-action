FROM stateoftheartio/qt6:6.4-macos-aqt

COPY run.sh /run.sh

ENTRYPOINT ["/run.sh"]
