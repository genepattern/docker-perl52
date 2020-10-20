#!/bin/sh

TEST_ROOT=$PWD
TASKLIB=$TEST_ROOT/src
INPUT_FILE_DIRECTORIES=$TEST_ROOT/data
S3_ROOT=s3://moduleiotest
WORKING_DIR=$TEST_ROOT/job_1

COMMAND_LINE="perl $TASKLIB/to_host.pl $INPUT_FILE_DIRECTORIES/man2.cvt.txt aConvertedFile.txt"

#DOCKER_CONTAINER=genepattern/docker-perl52
DOCKER_CONTAINER=liefeld/perl52
JOB_DEFINITION_NAME="Perl520_Generic"
JOB_ID=gp_job_PERL520_$1

