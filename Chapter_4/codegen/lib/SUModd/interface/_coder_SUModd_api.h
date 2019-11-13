/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 * File: _coder_SUModd_api.h
 *
 * MATLAB Coder version            : 4.1
 * C/C++ source code generated on  : 25-Aug-2019 13:50:47
 */

#ifndef _CODER_SUMODD_API_H
#define _CODER_SUMODD_API_H

/* Include Files */
#include "tmwtypes.h"
#include "mex.h"
#include "emlrt.h"
#include <stddef.h>
#include <stdlib.h>
#include "_coder_SUModd_api.h"

/* Variable Declarations */
extern emlrtCTX emlrtRootTLSGlobal;
extern emlrtContext emlrtContextGlobal;

/* Function Declarations */
extern void SUModd(real_T N);
extern void SUModd_api(const mxArray * const prhs[1], int32_T nlhs);
extern void SUModd_atexit(void);
extern void SUModd_initialize(void);
extern void SUModd_terminate(void);
extern void SUModd_xil_terminate(void);

#endif

/*
 * File trailer for _coder_SUModd_api.h
 *
 * [EOF]
 */
