################################################
#
#
#
#
#
################################################

FROM		    ehudkaldor/alpine-s6:latest
MAINTAINER	Ehud Kaldor <ehud@UnfairFunction.org>

# Server socket.
EXPOSE 	  	1883

# Add the configuration file.
COPY 		    rootfs /
RUN     apk update && \
        apk upgrade apk && \
        apk add mosquitto
