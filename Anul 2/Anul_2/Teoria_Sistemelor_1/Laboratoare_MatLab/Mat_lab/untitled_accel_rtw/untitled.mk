# Copyright 1994-2004 The MathWorks, Inc.
#
# File    : accel_lcc.tmf   $Revision: 1.19.4.6 $
#
# Abstract:
#	Accelerator template makefile for building a PC-based,
#       RTW generated mex-file of Simulink model using generated C code. 
#	     LCC compiler version 2.4.
#
# 	This makefile attempts to conform to the guidelines specified in the
# 	IEEE Std 1003.2-1992 (POSIX) standard. It is designed to be used
#       with GNU Make (gmake) which is located in matlabroot/rtw/bin/win32.
#
# 	Note that this template is automatically customized by the Real-Time
#	Workshop build procedure to create "<model>.mk"
#
#       The following defines can be used to modify the behavior of the
#	build:
#
#         MEX_OPTS       - User specific mex options.
#	  OPT_OPTS       - Optimization options. Default is none. To enable 
#                          debugging specify as OPT_OPTS=-g. 
#	  USER_SRCS      - Additional user sources, such as files needed by
#			   S-functions.
#	  USER_INCLUDES  - Additional include paths
#			   (i.e. USER_INCLUDES="-Iwhere-ever -Iwhere-ever2")
#			   (For Lcc, have a '/'as file seperator before the 
#			   file name instead of a '\' . 
#			   i.e.,  d:\work\proj1/myfile.c - reqd for 'gmake')
#
#       This template makefile is designed to be used with a system target
#       file that contains 'rtwgensettings.BuildDirSuffix' see accel.tlc

#------------------------ Macros read by make_rtw ------------------------------
#
# The following macros are read by the Real-Time Workshop build procedure:
#
#  MAKECMD         - This is the command used to invoke the make utility
#  HOST            - What platform this template makefile is targeted for
#                    (i.e. PC or UNIX)
#  BUILD           - Invoke make from the Real-Time Workshop build procedure
#                    (yes/no)?
#  SYS_TARGET_FILE - Name of system target file.

MAKECMD         = "%MATLAB%\rtw\bin\win32\gmake"
HOST            = PC
BUILD           = yes
SYS_TARGET_FILE = accel.tlc

#---------------------- Tokens expanded by make_rtw ----------------------------
#
# The following tokens, when wrapped with "|>" and "<|" are expanded by the
# Real-Time Workshop build procedure.
#
#  MODEL_NAME      - Name of the Simulink block diagram
#  MODEL_MODULES   - Any additional generated source modules
#  MAKEFILE_NAME   - Name of makefile created from template makefile <model>.mk
#  MATLAB_ROOT     - Path to were MATLAB is installed.
#  MATLAB_BIN      - Path to MATLAB executable.
#  S_FUNCTIONS     - List of S-functions.
#  S_FUNCTIONS_LIB - List of S-functions libraries to link.
#  SOLVER          - Solver source file name
#  NUMST           - Number of sample times
#  TID01EQ         - yes (1) or no (0): Are sampling rates of continuous task
#                    (tid=0) and 1st discrete task equal.
#  NCSTATES        - Number of continuous states
#  BUILDARGS       - Options passed in at the command line.

MODEL           = untitled
MODULES         = rt_nonfinite.c untitled_acc_data.c 
MAKEFILE        = untitled.mk
MATLAB_ROOT     = C:\MATLAB7
MATLAB_BIN      = C:\MATLAB7\bin\win32
S_FUNCTIONS     = 
S_FUNCTIONS_LIB = 
SOLVER          = ode45.c
NUMST           = 1
TID01EQ         = 0
NCSTATES        = 4
MEM_ALLOC       = RT_STATIC
BUILDARGS       = ADD_MDL_NAME_TO_GLOBALS=1

MODELREFS       = 
SHARED_SRC      = 
SHARED_SRC_DIR  = 
SHARED_BIN_DIR  = 
SHARED_LIB      = 

#--------------------------- Model and reference models -----------------------
MODELLIB                  = untitledlib.lib
MODELREF_LINK_LIBS        = 
MODELREF_INC_PATH         = 
RELATIVE_PATH_TO_ANCHOR   = ..
# ..\..\..\..\..\..\.. or .. or even . if you want it
MODELREF_TARGET_TYPE      = NONE

#--------------------------- Tool Specifications ------------------------------

LCC = $(MATLAB_ROOT)\sys\lcc
include $(MATLAB_ROOT)\rtw\c\tools\lcctools.mak

MEX = $(MATLAB_BIN)\mex.bat
CC  = $(MATLAB_BIN)\mex.bat -c

#------------------------------ Include Path -----------------------------------

# Additional includes

ADD_INCLUDES = \
	-Ic:\matlab7\work \
	-Ic:\matlab7\work\untitled_accel_rtw \
	-Ic:\matlab7\rtw\c\libsrc \


# see MATLAB_INCLUES and COMPILER_INCLUDES from lcctool.mak

SHARED_INCLUDES =
ifneq ($(SHARED_SRC_DIR),)
SHARED_INCLUDES = -I$(SHARED_SRC_DIR) 
endif

INCLUDES = -I. -I$(RELATIVE_PATH_TO_ANCHOR) $(MATLAB_INCLUDES) $(ADD_INCLUDES) \
           $(COMPILER_INCLUDES) $(USER_INCLUDES) $(MODELREF_INC_PATH) $(SHARED_INCLUDES)

#------------------------ C and MEX optimization options -----------------------
MEX_OPTS  =
OPT_OPTS  = $(DEFAULT_OPT_OPTS)
MEX_OPT_OPTS = $(OPT_OPTS)    # passed to 'mex -c'

ifeq "$(MEX_OPTS)" "-g"
MEX_OPT_OPTS =
endif

#-------------------------------- Mex Options  ---------------------------------
ifndef MEX_OPT_FILE
MEX_OPT_FILE = -f $(MATLAB_BIN)\mexopts\lccopts.bat
endif
MEX_FLAGS = $(MEX_OPT_OPTS) $(MEX_OPTS) $(MEX_OPT_FILE)

#----------------------------- Source Files -----------------------------------
USER_SRCS =

USER_OBJS       = $(USER_SRCS:.c=.obj)
LOCAL_USER_OBJS = $(notdir $(USER_OBJS))

SRCS      = $(MODEL)_acc.c $(MODULES)
OBJS      = $(SRCS:.c=.obj) $(USER_OBJS)
LINK_OBJS = $(SRCS:.c=.obj) $(LOCAL_USER_OBJS)

SHARED_OBJS := $(addsuffix .obj, $(basename $(wildcard $(SHARED_SRC))))
FMT_SHARED_OBJS = $(subst /,\,$(SHARED_OBJS))

#------------------------- Additional Libraries -------------------------------

LIBS =

ifeq ($(OPT_OPTS),$(DEFAULT_OPT_OPTS))
LIBS += $(MATLAB_ROOT)\rtw\c\lib\win32\rtwlib_rtwsfcn_lcc.lib
else
LIBS += rtwlib.lib
endif



LIBUT = $(MATLAB_ROOT)\rtw\c\lib\win32\libut_lcc.lib
LIBS += $(LIBUT)


PROGRAM = ../$(MODEL)_acc.dll

#--------------------------------- Rules --------------------------------------

$(PROGRAM) : $(OBJS) $(LIBS) $(SHARED_LIB)
	@echo ### Linking ...
	$(MEX) $(MEX_FLAGS) -outdir .. $(LINK_OBJS) $(LIBS) $(S_FUNCTIONS_LIB) $(SHARED_LIB)
	@echo ### Created mex file: $(MODEL)_acc.dll

%.obj : %.c
	$(CC) $(MEX_FLAGS) $(INCLUDES) $<

%.obj : ../%.c
	$(CC) $(MEX_FLAGS) $(INCLUDES) $<

%.obj : c:\matlab7\rtw\c\libsrc/%.c
	$(CC) $(MEX_FLAGS) $(INCLUDES) $<



%.obj : $(MATLAB_ROOT)/simulink/src/%.c
	$(CC) $(MEX_FLAGS) $(INCLUDES) $<

# Libraries:



MODULES_rtwlib = \
          rt_atan2.obj \
          rt_atan232.obj \
          rt_backsubcc_dbl.obj \
          rt_backsubcc_sgl.obj \
          rt_backsubrc_dbl.obj \
          rt_backsubrc_sgl.obj \
          rt_backsubrr_dbl.obj \
          rt_backsubrr_sgl.obj \
          rt_enab.obj \
          rt_forwardsubcc_dbl.obj \
          rt_forwardsubcc_sgl.obj \
          rt_forwardsubcr_dbl.obj \
          rt_forwardsubcr_sgl.obj \
          rt_forwardsubrc_dbl.obj \
          rt_forwardsubrc_sgl.obj \
          rt_forwardsubrr_dbl.obj \
          rt_forwardsubrr_sgl.obj \
          rt_hypot.obj \
          rt_hypot32.obj \
          rt_i32zcfcn.obj \
          rt_intrp1flatcd.obj \
          rt_intrp1flatcf.obj \
          rt_intrp1flatd.obj \
          rt_intrp1flatf.obj \
          rt_intrp1lincd.obj \
          rt_intrp1lincf.obj \
          rt_intrp1linxd.obj \
          rt_intrp1linxf.obj \
          rt_intrp2flatcd.obj \
          rt_intrp2flatcf.obj \
          rt_intrp2flatd.obj \
          rt_intrp2flatf.obj \
          rt_intrp2lincd.obj \
          rt_intrp2lincf.obj \
          rt_intrp2lind.obj \
          rt_intrp2linf.obj \
          rt_intrp2linxd.obj \
          rt_intrp2linxf.obj \
          rt_intrp3lind.obj \
          rt_intrp3linf.obj \
          rt_intrp4lind.obj \
          rt_intrp4linf.obj \
          rt_intrp5lind.obj \
          rt_intrp5linf.obj \
          rt_intrpnflatcd.obj \
          rt_intrpnflatcf.obj \
          rt_intrpnflatd.obj \
          rt_intrpnflatf.obj \
          rt_intrpnlincd.obj \
          rt_intrpnlincf.obj \
          rt_intrpnlind.obj \
          rt_intrpnlinf.obj \
          rt_intrpnlinxd.obj \
          rt_intrpnlinxf.obj \
          rt_intrpnspld.obj \
          rt_intrpnsplf.obj \
          rt_logging.obj \
          rt_look.obj \
          rt_look1d.obj \
          rt_look1d32.obj \
          rt_look2d32_general.obj \
          rt_look2d32_normal.obj \
          rt_look2d_general.obj \
          rt_look2d_normal.obj \
          rt_look32.obj \
          rt_lookflat1bincsd.obj \
          rt_lookflat1bincsf.obj \
          rt_lookflat1binczd.obj \
          rt_lookflat1binczf.obj \
          rt_lookflat1evncsd.obj \
          rt_lookflat1evncsf.obj \
          rt_lookflat1evnczd.obj \
          rt_lookflat1evnczf.obj \
          rt_lookflat1lincsd.obj \
          rt_lookflat1lincsf.obj \
          rt_lookflat1linczd.obj \
          rt_lookflat1linczf.obj \
          rt_lookflat2bincsd.obj \
          rt_lookflat2bincsf.obj \
          rt_lookflat2binczd.obj \
          rt_lookflat2binczf.obj \
          rt_lookflat2evncsd.obj \
          rt_lookflat2evncsf.obj \
          rt_lookflat2evnczd.obj \
          rt_lookflat2evnczf.obj \
          rt_lookflat2lincsd.obj \
          rt_lookflat2lincsf.obj \
          rt_lookflat2linczd.obj \
          rt_lookflat2linczf.obj \
          rt_lookflatnbincsd.obj \
          rt_lookflatnbincsf.obj \
          rt_lookflatnbinczd.obj \
          rt_lookflatnbinczf.obj \
          rt_lookflatnevncsd.obj \
          rt_lookflatnevncsf.obj \
          rt_lookflatnevnczd.obj \
          rt_lookflatnevnczf.obj \
          rt_lookflatnlincsd.obj \
          rt_lookflatnlincsf.obj \
          rt_lookflatnlinczd.obj \
          rt_lookflatnlinczf.obj \
          rt_looklin1bincsd.obj \
          rt_looklin1bincsf.obj \
          rt_looklin1binczd.obj \
          rt_looklin1binczf.obj \
          rt_looklin1binxsd.obj \
          rt_looklin1binxsf.obj \
          rt_looklin1binxzd.obj \
          rt_looklin1binxzf.obj \
          rt_looklin1evncsd.obj \
          rt_looklin1evncsf.obj \
          rt_looklin1evnczd.obj \
          rt_looklin1evnczf.obj \
          rt_looklin1evnxsd.obj \
          rt_looklin1evnxsf.obj \
          rt_looklin1evnxzd.obj \
          rt_looklin1evnxzf.obj \
          rt_looklin1lincsd.obj \
          rt_looklin1lincsf.obj \
          rt_looklin1linczd.obj \
          rt_looklin1linczf.obj \
          rt_looklin1linxsd.obj \
          rt_looklin1linxsf.obj \
          rt_looklin1linxzd.obj \
          rt_looklin1linxzf.obj \
          rt_looklin2bincsd.obj \
          rt_looklin2bincsf.obj \
          rt_looklin2binczd.obj \
          rt_looklin2binczf.obj \
          rt_looklin2binxsd.obj \
          rt_looklin2binxsf.obj \
          rt_looklin2binxzd.obj \
          rt_looklin2binxzf.obj \
          rt_looklin2evncsd.obj \
          rt_looklin2evncsf.obj \
          rt_looklin2evnczd.obj \
          rt_looklin2evnczf.obj \
          rt_looklin2evnxsd.obj \
          rt_looklin2evnxsf.obj \
          rt_looklin2evnxzd.obj \
          rt_looklin2evnxzf.obj \
          rt_looklin2lincsd.obj \
          rt_looklin2lincsf.obj \
          rt_looklin2linczd.obj \
          rt_looklin2linczf.obj \
          rt_looklin2linxsd.obj \
          rt_looklin2linxsf.obj \
          rt_looklin2linxzd.obj \
          rt_looklin2linxzf.obj \
          rt_looklinnbincsd.obj \
          rt_looklinnbincsf.obj \
          rt_looklinnbinczd.obj \
          rt_looklinnbinczf.obj \
          rt_looklinnbinxsd.obj \
          rt_looklinnbinxsf.obj \
          rt_looklinnbinxzd.obj \
          rt_looklinnbinxzf.obj \
          rt_looklinnevncsd.obj \
          rt_looklinnevncsf.obj \
          rt_looklinnevnczd.obj \
          rt_looklinnevnczf.obj \
          rt_looklinnevnxsd.obj \
          rt_looklinnevnxsf.obj \
          rt_looklinnevnxzd.obj \
          rt_looklinnevnxzf.obj \
          rt_looklinnlincsd.obj \
          rt_looklinnlincsf.obj \
          rt_looklinnlinczd.obj \
          rt_looklinnlinczf.obj \
          rt_looklinnlinxsd.obj \
          rt_looklinnlinxsf.obj \
          rt_looklinnlinxzd.obj \
          rt_looklinnlinxzf.obj \
          rt_looksplnbincsd.obj \
          rt_looksplnbincsf.obj \
          rt_looksplnbinczd.obj \
          rt_looksplnbinczf.obj \
          rt_looksplnbinssd.obj \
          rt_looksplnbinssf.obj \
          rt_looksplnbinszd.obj \
          rt_looksplnbinszf.obj \
          rt_looksplnbinxsd.obj \
          rt_looksplnbinxsf.obj \
          rt_looksplnbinxzd.obj \
          rt_looksplnbinxzf.obj \
          rt_looksplnevncsd.obj \
          rt_looksplnevncsf.obj \
          rt_looksplnevnczd.obj \
          rt_looksplnevnczf.obj \
          rt_looksplnevnssd.obj \
          rt_looksplnevnssf.obj \
          rt_looksplnevnszd.obj \
          rt_looksplnevnszf.obj \
          rt_looksplnevnxsd.obj \
          rt_looksplnevnxsf.obj \
          rt_looksplnevnxzd.obj \
          rt_looksplnevnxzf.obj \
          rt_looksplnlincsd.obj \
          rt_looksplnlincsf.obj \
          rt_looksplnlinczd.obj \
          rt_looksplnlinczf.obj \
          rt_looksplnlinssd.obj \
          rt_looksplnlinssf.obj \
          rt_looksplnlinszd.obj \
          rt_looksplnlinszf.obj \
          rt_looksplnlinxsd.obj \
          rt_looksplnlinxsf.obj \
          rt_looksplnlinxzd.obj \
          rt_looksplnlinxzf.obj \
          rt_lu_cplx.obj \
          rt_lu_cplx_sgl.obj \
          rt_lu_real.obj \
          rt_lu_real_sgl.obj \
          rt_matdivcc_dbl.obj \
          rt_matdivcc_sgl.obj \
          rt_matdivcr_dbl.obj \
          rt_matdivcr_sgl.obj \
          rt_matdivrc_dbl.obj \
          rt_matdivrc_sgl.obj \
          rt_matdivrr_dbl.obj \
          rt_matdivrr_sgl.obj \
          rt_matmultandinccc_dbl.obj \
          rt_matmultandinccc_sgl.obj \
          rt_matmultandinccr_dbl.obj \
          rt_matmultandinccr_sgl.obj \
          rt_matmultandincrc_dbl.obj \
          rt_matmultandincrc_sgl.obj \
          rt_matmultandincrr_dbl.obj \
          rt_matmultandincrr_sgl.obj \
          rt_matmultcc_dbl.obj \
          rt_matmultcc_sgl.obj \
          rt_matmultcr_dbl.obj \
          rt_matmultcr_sgl.obj \
          rt_matmultrc_dbl.obj \
          rt_matmultrc_sgl.obj \
          rt_matmultrr_dbl.obj \
          rt_matmultrr_sgl.obj \
          rt_nrand.obj \
          rt_plookbincd.obj \
          rt_plookbincf.obj \
          rt_plookbinkcd.obj \
          rt_plookbinkcf.obj \
          rt_plookbinxd.obj \
          rt_plookbinxf.obj \
          rt_plookevncd.obj \
          rt_plookevncf.obj \
          rt_plookevnkcd.obj \
          rt_plookevnkcf.obj \
          rt_plookevnxd.obj \
          rt_plookevnxf.obj \
          rt_plooklincd.obj \
          rt_plooklincf.obj \
          rt_plooklinkcd.obj \
          rt_plooklinkcf.obj \
          rt_plooklinxd.obj \
          rt_plooklinxf.obj \
          rt_printf.obj \
          rt_sat_div_int16.obj \
          rt_sat_div_int32.obj \
          rt_sat_div_int8.obj \
          rt_sat_div_uint16.obj \
          rt_sat_div_uint32.obj \
          rt_sat_div_uint8.obj \
          rt_sat_prod_int16.obj \
          rt_sat_prod_int32.obj \
          rt_sat_prod_int8.obj \
          rt_sat_prod_uint16.obj \
          rt_sat_prod_uint32.obj \
          rt_sat_prod_uint8.obj \
          rt_tdelay.obj \
          rt_tdelayacc.obj \
          rt_urand.obj \
          rt_zcfcn.obj \
          

rtwlib.lib :  $(MAKEFILE) rtw_proj.tmw $(MODULES_rtwlib)
	@echo ### Creating $@
	@if exist $@ del $@
	$(LIBCMD) /out:$@ $(MODULES_rtwlib)
	@echo ### $@ Created 



clean :
	@echo ### Deleting the objects and $(PROGRAM)
	@del $(OBJS) ..\$(MODEL)_acc.dll $(wildcard *.obj) $(wildcard *.lib)

#----------------------------- Dependencies -------------------------------

$(OBJS) : $(MAKEFILE) rtw_proj.tmw

$(SHARED_OBJS) : $(SHARED_BIN_DIR)/%.obj : $(SHARED_SRC_DIR)/%.c
	$(CC) -outdir $(SHARED_BIN_DIR) $(MEX_FLAGS) $(INCLUDES) $<

$(SHARED_LIB) : $(SHARED_OBJS)
	@echo ### Creating $@ 
	@if exist $@ del $@
	$(LIBCMD) /out:$@ $(FMT_SHARED_OBJS)
	@echo ### $@ Created   


