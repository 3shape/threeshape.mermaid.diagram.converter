FROM docker.pkg.github.com/mindaugaslaganeckas/mermaid.cli/mermaid.cli:latest

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh 

ENTRYPOINT ["/entrypoint.sh"]
