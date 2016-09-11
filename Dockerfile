FROM jetbrains/teamcity-agent
MAINTAINER Mark Janssen <mark@praseodym.net>

RUN curl -o /usr/local/share/ca-certificates/wisvch.crt https://ch.tudelft.nl/certs/wisvch.crt && \
    chmod 644 /usr/local/share/ca-certificates/wisvch.crt && \
    update-ca-certificates
RUN ln -sf /etc/ssl/certs/java/cacerts /usr/lib/jvm/oracle-jdk/jre/lib/security/cacerts