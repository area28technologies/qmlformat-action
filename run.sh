#!/bin/bash

EXIT_CODE=0
QML_FILES=$(find . -name "$1")

for f in $QML_FILES
do
  diff $f <(/opt/qt515/bin/qmlformat $f)
  EXIT_CODE=$(($EXIT_CODE || $?))
done

exit $EXIT_CODE
