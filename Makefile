CXXFLAGS = -O3 -pthread

all:
	@cd src && ${MAKE} CXXFLAGS="${CXXFLAGS}"

prefix = /usr/local
exec_prefix = ${prefix}
bindir = ${exec_prefix}/bin

install: all
	mkdir -p ${bindir}
	cp ultra ${bindir}

profile:
	@cd src && ${MAKE} profile CXXFLAGS="${CXXFLAGS}"

clean:
	@cd src && ${MAKE} clean

