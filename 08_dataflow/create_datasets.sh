#!/bin/bash

gsutil -m rm -rf gs://cloud-training-demos-ml/flights/chapter8

cd chapter8

mvn compile exec:java \
 -Dexec.mainClass=com.google.cloud.training.flights.CreateTrainingDataset9 \
      -Dexec.args="--fullDataset=true"
