FROM docker.pkg.github.com/mindaugaslaganeckas/mermaid.cli/mermaid.cli:41af473db1e4b87bc1691615c8a7720fd80af968

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh 

ENTRYPOINT ["/entrypoint.sh"]
