@echo off
set MATLAB=C:\PROGRA~1\MATLAB\R2018b
set MATLAB_ARCH=win64
set MATLAB_BIN="C:\Program Files\MATLAB\R2018b\bin"
set ENTRYPOINT=mexFunction
set OUTDIR=.\
set LIB_NAME=SUModd_mex
set MEX_NAME=SUModd_mex
set MEX_EXT=.mexw64
call "C:\PROGRA~1\MATLAB\R2018b\sys\lcc64\lcc64\mex\lcc64opts.bat"
echo # Make settings for SUModd > SUModd_mex.mki
echo COMPILER=%COMPILER%>> SUModd_mex.mki
echo COMPFLAGS=%COMPFLAGS%>> SUModd_mex.mki
echo OPTIMFLAGS=%OPTIMFLAGS%>> SUModd_mex.mki
echo DEBUGFLAGS=%DEBUGFLAGS%>> SUModd_mex.mki
echo LINKER=%LINKER%>> SUModd_mex.mki
echo LINKFLAGS=%LINKFLAGS%>> SUModd_mex.mki
echo LINKOPTIMFLAGS=%LINKOPTIMFLAGS%>> SUModd_mex.mki
echo LINKDEBUGFLAGS=%LINKDEBUGFLAGS%>> SUModd_mex.mki
echo MATLAB_ARCH=%MATLAB_ARCH%>> SUModd_mex.mki
echo OMPFLAGS= >> SUModd_mex.mki
echo OMPLINKFLAGS= >> SUModd_mex.mki
echo EMC_COMPILER=lcc64>> SUModd_mex.mki
echo EMC_CONFIG=optim>> SUModd_mex.mki
"C:\Program Files\MATLAB\R2018b\bin\win64\gmake" -j 1 -B -f SUModd_mex.mk
