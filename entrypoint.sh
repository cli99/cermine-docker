#!/bin/bash

JAR=$(ls cermine-impl*)
java -cp cermine-impl-${JAR}-jar-with-dependencies.jar pl.edu.icm.cermine.ContentExtractor -path "$@"