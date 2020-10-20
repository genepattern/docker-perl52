# copyright 2017-2018 Regents of the University of California and the Broad Institute. All rights reserved.
FROM alpine:3.7

COPY common/container_scripts/* /usr/local/bin/

RUN apk add --update bash perl python3 python3-dev && \
    pip3 install --no-cache-dir --upgrade pip && \
    rm -rf /var/cache/apk/* && \ 
    pip3 install awscli && \
    chmod ugo+x /usr/local/bin/*.sh
    
RUN addgroup -S genepattern && adduser -S genepattern -G genepattern

    
USER genepattern 


