#!/bin/sh

DIRECTORY="$PWD/allure-report"
ACCESSIBILITY_SOURCE_DIRECTORY="$PWD/accessibility-reports"
ACCESSIBILITY_DESTINATION_DIRECTORY="$DIRECTORY/accessibility"

echo "Publishing test results to S3"

if [ -n "$RESULTS_OUTPUT_S3_PATH" ]; then
   if [ -d "$DIRECTORY" ]; then
      aws s3 cp "$DIRECTORY" "$RESULTS_OUTPUT_S3_PATH" --recursive
      echo "Test results published to $RESULTS_OUTPUT_S3_PATH"
   else
      echo "$DIRECTORY is not found"
      exit 1
   fi
else
   echo "RESULTS_OUTPUT_S3_PATH is not set"
   exit 1
fi

echo "Copying accessibility reports to S3"

if [ -d "$ACCESSIBILITY_SOURCE_DIRECTORY" ]; then
    mkdir -p "$ACCESSIBILITY_DESTINATION_DIRECTORY"
    cp -r "$ACCESSIBILITY_SOURCE_DIRECTORY"/* "$ACCESSIBILITY_DESTINATION_DIRECTORY"/
fi
