#!/bin/sh

OUTPUT_FILE=/tmp/shared/directory/report.txt
WIDGETS_SOLD=$1
WIDGET_SALE_PRICE=$2
WIDGET_COST=$3

REVENUE=$((WIDGETS_SOLD * WIDGET_SALE_PRICE))
OPERATING_COST=$((WIDGETS_SOLD * WIDGET_COST))
PROFIT=$((REVENUE - OPERATING_COST))

echo "Profit was \$$PROFIT." | tee $OUTPUT_FILE

if (( PROFIT > 0 )); then
  echo "Well done." | tee -a $OUTPUT_FILE
else
  echo "Oops." | tee -a $OUTPUT_FILE
fi
