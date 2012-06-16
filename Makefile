SERVICE_FILES = ${wildcard service/*}
SOCKET_FILES = ${wildcard socket/*}
SCRIPTS = ${wildcard scripts/*}

SD_LIBDIR ?= usr/lib/systemd
SD_UNITDIR ?= ${SD_LIBDIR}/system
SD_SCRIPTDIR ?= ${SD_LIBDIR}/scripts

install:
	install -d "${DESTDIR}/${SD_SCRIPTDIR}" "${DESTDIR}/${SD_UNITDIR}"
	install -m644 -t "${DESTDIR}/${SD_UNITDIR}" ${SERVICE_FILES} ${SOCKET_FILES}
	install -m755 -t "${DESTDIR}/${SD_SCRIPTDIR}" ${SCRIPTS}
