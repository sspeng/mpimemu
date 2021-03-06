###############################################################################
# Copyright (c) 2011-2017 Los Alamos National Security, LLC.
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

AC_PREREQ([2.60])

AC_INIT([mpimemu], [1.2-alpha], [samuel@lanl.gov])

# Check If AM_SILENT_RULES Rule Are Supported
# If So, Build Using AM_SILENT_RULES
m4_ifdef([AM_SILENT_RULES], [AM_SILENT_RULES([yes])])

AC_CONFIG_SRCDIR([src])

# note: -Wall -Werror are automake options.  they are NOT compiler flags
AM_INIT_AUTOMAKE([-Wall -Werror foreign])

AM_CONFIG_HEADER([config.h])

# checks for programs.
# note that we are checking for mpicc first, the next check will verify CC
AC_PROG_CC([mpicc cc])

# check for adequate mpi support
AC_MSG_CHECKING([if $CC can compile MPI applications])
AC_LINK_IFELSE([
    AC_LANG_PROGRAM(
        [[#include <mpi.h>]],
        [[MPI_Finalize();]])],
    [AC_MSG_RESULT([yes])],
    [AC_MSG_RESULT([no])
     AC_MSG_ERROR([$CC cannot compile MPI applications. cannot continue.])]
)

AM_PROG_CC_C_O
AC_PROG_CC_C99
AC_GNU_SOURCE

# checks for libraries.
# none at this point

# checks for header files.
AC_CHECK_HEADERS([\
inttypes.h limits.h stdint.h stdlib.h string.h unistd.h stdbool.h time.h \
getopt.h ctype.h netdb.h sys/socket.h netinet/in.h arpa/inet.h
])

# checks for typedefs, structures, and compiler characteristics.
AC_TYPE_PID_T
AC_TYPE_SIZE_T

# checks for library functions.
AC_FUNC_MALLOC
AC_CHECK_FUNCS([memset strerror strtoul])

AC_CONFIG_FILES([Makefile
                 src/Makefile])

AC_OUTPUT

# let the user know the configuration 

cat << EOF

mpimemu configuration
+--------------------
|
| CC      : $CC
| CFLAGS  : $CFLAGS
| LDFLAGS : $LDFLAGS
| LIBS    : $LIBS
| CPPFLAGS: $CPPFLAGS
| CPP     : $CPP

EOF
