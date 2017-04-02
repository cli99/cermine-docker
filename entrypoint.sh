#!/bin/bash

JAR=$(ls cermine-impl*)
# java -cp ${JAR} pl.edu.icm.cermine.ContentExtractor -path "$@"
java -cp ${JAR} pl.edu.icm.cermine.metadata.affiliation.CRFAffiliationParser -affiliation "$@" 