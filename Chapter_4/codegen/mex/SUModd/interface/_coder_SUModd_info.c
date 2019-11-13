/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * _coder_SUModd_info.c
 *
 * Code generation for function '_coder_SUModd_info'
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "SUModd.h"
#include "_coder_SUModd_info.h"

/* Function Definitions */
mxArray *emlrtMexFcnProperties(void)
{
  mxArray *xResult;
  mxArray *xEntryPoints;
  const char * fldNames[6] = { "Name", "NumberOfInputs", "NumberOfOutputs",
    "ConstantInputs", "FullPath", "TimeStamp" };

  mxArray *xInputs;
  const char * b_fldNames[4] = { "Version", "ResolvedFunctions", "EntryPoints",
    "CoverageInfo" };

  xEntryPoints = emlrtCreateStructMatrix(1, 1, 6, fldNames);
  xInputs = emlrtCreateLogicalMatrix(1, 1);
  emlrtSetField(xEntryPoints, 0, "Name", emlrtMxCreateString("SUModd"));
  emlrtSetField(xEntryPoints, 0, "NumberOfInputs", emlrtMxCreateDoubleScalar(1.0));
  emlrtSetField(xEntryPoints, 0, "NumberOfOutputs", emlrtMxCreateDoubleScalar
                (0.0));
  emlrtSetField(xEntryPoints, 0, "ConstantInputs", xInputs);
  emlrtSetField(xEntryPoints, 0, "FullPath", emlrtMxCreateString(
    "C:\\Users\\sulaymon.eshkabilov\\Documents\\MATLAB\\MY_MATLAB_Book\\Chapter_4\\SUModd.m"));
  emlrtSetField(xEntryPoints, 0, "TimeStamp", emlrtMxCreateDoubleScalar
                (737662.57675925922));
  xResult = emlrtCreateStructMatrix(1, 1, 4, b_fldNames);
  emlrtSetField(xResult, 0, "Version", emlrtMxCreateString(
    "9.5.0.1033004 (R2018b) Update 2"));
  emlrtSetField(xResult, 0, "ResolvedFunctions", (mxArray *)
                emlrtMexFcnResolvedFunctionsInfo());
  emlrtSetField(xResult, 0, "EntryPoints", xEntryPoints);
  return xResult;
}

const mxArray *emlrtMexFcnResolvedFunctionsInfo(void)
{
  const mxArray *nameCaptureInfo;
  const char * data[21] = {
    "789ced5dcb6fe3c619e76e7793ec212d51204983a24db70d82a00b987af9d543abf7cbd65bb6646d129b9248692c3e249292259f7c2a7acfb5f73645df28d005"
    "9a830e3df45ca03de4d4430bf41f68d1634951b4cd8966c55d51e4529e018cd1f893e637fcf0f1f77dfce641e25e26778f2088afaa7ff7d5bfe21f88597953af",
    "08725edf27cc0596df9bd7df86da4679483c98fdef4d48fed379dd120585192b7a830302931ff24d46521b02cd33d7ddb4451e08b4a054277d86901859e4464c"
    "7b266101c75401cf1c8ab71a69a036f8e42dd1754313699f635da6d5ab0c7942eaca37c3e56e37885bfa7986b8fe0716f55346e88784e44f131fc77e401dc98c",
    "2453f290a327bc286c3172b7473701278ea8b8d81af28ca0c8542e523d8c44a9dcc9a9fee9342a8a3d2ad6a5fb0a239d86a8ca514e6cb7b778f3759c21c6f99a"
    "c5eb806ba33c22deb8d5fa4678199e55bd7d058147ce25bca89b815d78af41ed1b3c5dd216874d8eb9c1fbf98a7829249e59fe3473589f994651123b12cd7f47",
    "b3e16b2328077cfebd26a58822d714c714c37314079a144f2b1cdda4188e1d0a94aa29d5189cb383abe85f77fe1e71d6ee9cb673f7f0c688feacdadddb083c12"
    "92e742b9c6f101bf93dc6df9b6697fad76215ed4d3b7fcc6129c65e320106da7faf7eafddb478ccbaabddd87da4679047d5f2fdf0febf5d635af5f21fab7aab7",
    "f710f824246f896d46da026a90200934b705e4e810704a4650c30446022dd7787fd578a08ec433cb5fd86eb4bf2733ad514f0cb551b0dab67807fdc01ffff3c5"
    "dfb01f58139e537ea0301ac4226c7ab4572d8526ad042f04920d0efb01d7fdc019625cf6da5b226c97bdbd83c0232139c4fb728be66829d1718def7fbb225e11",
    "6a13d0f70cb93d7c6fa8cb519efff5079fe078dfeb3cef2b77fc2325bb2f4a9dae5c49d29d6832338a6f0ecfe3fb78f1f84d7677950b2f7bceb0aa2f38ef4740"
    "df33e44016f4d054d1327ceee57356b58f0212cf2c7fa938800563a6dd1755f3a04cfa72361ef855ed5d1ccf7b9de753c1dea432e8002e568df5ca8368a7da3b",
    "4a609ebfb33c8fc2b3aaaf37a03671fd3d5d026416a88f315daff27a16896796afceebba9e5c98b7c1bcbe46bc5579fd2d041e09c9470326d11fb5e4fdfa4550"
    "148b72c51f3c69109bc3ebdecabbdef0fa631648b2c20247ed6f7a665bbe1e35bf4f4272550da7eae59fb2a2c48962ff541c3112cb8917a72d6dbe7df5b81e2e",
    "a8f118c5c09bbe249ed1ff19d486f10cf94af93ddd8c9ea33f27e383e9e7ff7a88f339afaa3fb01ae7cb078971227e7959cc8e03a15cc0172b45fcbec4e6f883"
    "7f237e6f558f3f46f44f42f275dfd78f9fff85d32ec3f5b56551ceda6bcab6e78307509bb8fe9e2ed1e25ead76799e01086d669c1114dbe685924bc661c8ed78",
    "6ed09e191cb48f67785ed7fbfea132e9037e7b50aef941b31dca344ac59c7f93f2fdf8fe3517b3bdf93626cfbfccbfb4bab4b6a818e7f911b551703ec8193c9c"
    "e7b7a77f1cff9bc76bafbd666c8bff97e5ebd54be7e9b177fdc15ae707aed77fa91f285d53cecf0f4c9fbdf308e783bcee0fa481af7f0ee45084df29ee0ac566",
    "3d78702c47b13fc0fe60f1759be78b9df50740c0fec09a3f00820bfee04fd81f78df1f74e893dd42b0961fec36234a6c9b2e84985029b539fe00cf172fae8d62"
    "b2bf7f9cd9c6ef2f9aef5f15cfe97dbb1b9c17c479fd35e2e1bcbe3dfd7b96d72f19499487d7eb385079f7b5ece30d7f1c9ed5d38f1ce37976c8715a8dd77da2",
    "e378b94f4bdace3e4d57cec7f157bfc3797eeff3bdb213e0cbf15aaadb088a972325c727737e6583f81eefcf3517d4fedc2b447f56f5f44d041e09c917eccf65"
    "c6fd08c789ad99dc2dbe5f352ea822f1cc72fbe202436d3af33b6737e1ee9f7f86f337af2aef5b5defcf371ad271f7b226578e40301ef5fb2e1b01bcdeff2ede",
    "cf5ab959cff313447f56f5f65d041e09c99fe307f2624c5ff3af15b7fcc17445bca7483cb3dc7efb99ab6ffe40e0605e1f9fd7b3463cc79e07020793faa0533f"
    "ee767abbe594d2cb16c7097c5ecfdd781e08976d7b1e7817814742f285e7f56c19a773bab7ef6bd5f8a1b204cf90dbc3ff4f74bdcd6de6f6759c21c669a3dd3c",
    "24ff8779dfebbcbf5315e2b5c1f9055feb30e050d91fe78317890d9acfc5bc6f2e667b2bdb16ff7f88c0232139c4fb74bfcf4da240a0a549654665c9a1d05280"
    "28d8b5cfe06b4bc665c8d939ee699716daea038181ff9715f1e925f886dc1e7f8054a7314de0e43cc1ef3f9370bec8ebfea1548a29bde2b96fb7d9c81fe49b55",
    "7aaf9093939be31ff0fdbdf8baacd9e3ae6dfee37b083c1292c3fe632482764492e84992a315851180d0997dcfade787e94be219fd7fb404cf90db644f0bd4e7"
    "781ef2eabf4dec27bcee272eb3e960eca85fe74bcd423b5267d3b9315fd8a0fc11f6138bafcb9a3dc6372ebff4b2f30b38bfb4b8360ace2f398387f34bf6f43f",
    "45fcfed58cf74cf7f363961369654e89cedae10fc376d9217e3f008c67967bf7bc59fc7e8075e2e1f703d8d3ff14f17bccffe662b6c31fd9b69f60d9fb1e99be"
    "fe824eb7f6057b63fe49db17ac6acad9f73dfef3d3f731bf7b9ddfdb9c924d26e5fe7e4a01d1402b124f36e5da06f13bbe7fcdc56c6f1fb8bd8f00c849cd89c5",
    "385a7697e7bdb5eef8b6da9ccef75f7df62d7c0e84e779ff820d027e9208f8d2d261afe28f8452954e218a79ff6ef0becfb6f8fd75041e399768c71a6931fc5d"
    "e0f5e26a86d097c08856186aae32c7f787fd06ef0bf63eaf0b8df3bd0329db4ba50e8392c85c8a7b62717b83e2797c3f2fae8d62b6bff7dd9eb79da5a872eaff",
    "b8b9dcab7ea08cc433cbed89ef6fd4e6c2396fbfc07ec0fb7e60b4170ced32d983021bdf571abb74f93006f80d5acf3345fc1ee7edcdc57c9e67d8b6b8dfcafb"
    "1f05a0305e9d9f3d44e299e5369ce739d794e3791c7ceedb1af19ce2f90477903fc9fa83876c67c8d3c0d7ed9ca4990de2797c1f2f1effbae2fcf710782424ff",
    "521e3f3a049c9211f2fadb4b3cbb3ed3d9730261b539ba3e079ffbb0463ca7f8bf301ac4226c7ab4572d8526ad042f04920d0ef3ff1de3ff0f6d8beb1f22f0c8"
    "b904c8406009ef9eef9941e299e576d883aa2937f6ede2b87e8d784ef1faf638c7257ba3f67966a73eceb6a54048a8ec6cd0be5d7c1f2f1e3f8eeb715cffbceb",
    "c071bdbb7838aeb7a77f1cd72f1ebf7b71bd400b048eebadd883aa291cd76f189e53e7370f22c3021f9ad443beb21418c6fcccfe88cf1398d7efce7dac151cd7"
    "e3b8de3c6e1cd7bb8b87e37a7bfa9f227e8fd7e5988bd90e73b69da7f075041e09c9217fa007ff8477d7671e23f1ccf217b21b591d24d3a674ab99db0e6c42f3",
    "20c2c1f599bfbcff29de7ff5aafa01abcf01e9faf139978d444029cf979a7bfbec51e1a44478df0ffc1fc4d8b54e",
    "" };

  nameCaptureInfo = NULL;
  emlrtNameCaptureMxArrayR2016a(data, 46184U, &nameCaptureInfo);
  return nameCaptureInfo;
}

/* End of code generation (_coder_SUModd_info.c) */
