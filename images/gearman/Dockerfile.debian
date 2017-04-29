#################################---INFO---#####################################

FROM debian
MAINTAINER chenliujin <liujin.chen@qq.com> 

#################################---ENV---######################################

ENV DEBIAN_FRONTEND noninteractive

################################---BUILD---#####################################

RUN apt-get update; \
    apt-get upgrade

RUN apt-get --yes --force-yes install gearman-job-server; \
    apt-get clean; \
    rm -rf /var/lib/apt/lists/*

#################################---EXPOSE---###################################

EXPOSE 4730

#################################---CMD---######################################

ENTRYPOINT [ "gearmand" ]

################################################################################
