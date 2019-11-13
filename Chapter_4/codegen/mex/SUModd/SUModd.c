/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * SUModd.c
 *
 * Code generation for function 'SUModd'
 *
 */

/* Include files */
#include "mwmathutil.h"
#include "rt_nonfinite.h"
#include "SUModd.h"
#include "SUModd_data.h"

/* Variable Definitions */
static emlrtRTEInfo emlrtRTEI = { 13,  /* lineNo */
  1,                                   /* colNo */
  "SUModd",                            /* fName */
  "C:\\Users\\sulaymon.eshkabilov\\Documents\\MATLAB\\MY_MATLAB_Book\\Chapter_4\\SUModd.m"/* pName */
};

/* Function Definitions */
void SUModd(const emlrtStack *sp, real_T N)
{
  real_T Sum;
  real_T ii;
  const mxArray *y;
  const mxArray *m0;
  real_T d0;
  Sum = 0.0;
  ii = 1.0;
  while (ii <= N) {
    if (!muDoubleScalarIsInf(ii)) {
      d0 = muDoubleScalarRem(ii, 2.0);
    } else {
      d0 = rtNaN;
    }

    if (d0 != 0.0) {
      Sum += ii;
    }

    ii++;
    if (*emlrtBreakCheckR2012bFlagVar != 0) {
      emlrtBreakCheckR2012b(sp);
    }
  }

  y = NULL;
  m0 = emlrtCreateDoubleScalar(Sum);
  emlrtAssign(&y, m0);
  emlrtDisplayR2012b(y, "Sum", &emlrtRTEI, sp);
}

/* End of code generation (SUModd.c) */
