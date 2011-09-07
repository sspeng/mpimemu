###############################################################################
# Copyright (c) 2009-2011 Los Alamos National Security, LLC.
#                         All rights reserved.
#
# This program was prepared by Los Alamos National Security, LLC at Los Alamos
# National Laboratory (LANL) under contract No. DE-AC52-06NA25396 with the U.S.
# Department of Energy (DOE). All rights in the program are reserved by the DOE
# and Los Alamos National Security, LLC. Permission is granted to the public to
# copy and use this software without charge, provided that this Notice and any
# statement of authorship are reproduced on all copies. Neither the U.S.
# Government nor LANS makes any warranty, express or implied, or assumes any
# liability or responsibility for the use of this software.
################################################################################

# Author: Samuel K. Gutierrez

TARGET = mpi_mem_usage 
SHELL  = /bin/sh
CC     = mpicc
#CFLAGS = -Wall

.SUFFIXES:
.SUFFIXES: .c .o
.PHONY: clean all

all: ${TARGET}

clean:
	/bin/rm -f ${TARGET}
