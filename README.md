# docker-perl52
Perl 5.20 container for GenePattern modules on Docker and/or AWS Batch

#to publish a new jobdef into aws
aws batch register-job-definition --cli-input-json file://jobdef.json --profile genepattern

#use this line to update the common scripts to latest
git subtree pull --prefix common https://github.com/genepattern/docker-aws-common-scripts.git master --squash


