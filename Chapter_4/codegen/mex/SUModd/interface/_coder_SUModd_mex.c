/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * _coder_SUModd_mex.c
 *
 * Code generation for function '_coder_SUModd_mex'
 *
 */

/* Include files */
#include "SUModd.h"
#include "_coder_SUModd_mex.h"
#include "SUModd_terminate.h"
#include "_coder_SUModd_api.h"
#include "SUModd_initialize.h"
#include "SUModd_data.h"

/* Function Declarations */
static void SUModd_mexFunction(int32_T nlhs, int32_T nrhs, const mxArray *prhs[1]);

/* Function Definitions */
static void SUModd_mexFunction(int32_T nlhs, int32_T nrhs, const mxArray *prhs[1])
{
  emlrtStack st = { NULL,              /* site */
    NULL,                              /* tls */
    NULL                               /* prev */
  };

  st.tls = emlrtRootTLSGlobal;

  /* Check for proper number of arguments. */
  if (nrhs != 1) {
    emlrtErrMsgIdAndTxt(&st, "EMLRT:runTime:WrongNumberOfInputs", 5, 12, 1, 4, 6,
                        "SUModd");
  }

  if (nlhs > 0) {
    emlrtErrMsgIdAndTxt(&st, "EMLRT:runTime:TooManyOutputArguments", 3, 4, 6,
                        "SUModd");
  }

  /* Call the function. */
  SUModd_api(prhs, nlhs);
}

void mexFunction(int32_T nlhs, mxArray *plhs[], int32_T nrhs, const mxArray
                 *prhs[])
{
  (void)plhs;
  mexAtExit(SUModd_atexit);

  /* Module initialization. */
  SUModd_initialize();

  /* Dispatch the entry-point. */
  SUModd_mexFunction(nlhs, nrhs, prhs);

  /* Module termination. */
  SUModd_terminate();
}

emlrtCTX mexFunctionCreateRootTLS(void)
{
  emlrtCreateRootTLS(&emlrtRootTLSGlobal, &emlrtContextGlobal, NULL, 1);
  return emlrtRootTLSGlobal;
}

/* End of code generation (_coder_SUModd_mex.c) */
