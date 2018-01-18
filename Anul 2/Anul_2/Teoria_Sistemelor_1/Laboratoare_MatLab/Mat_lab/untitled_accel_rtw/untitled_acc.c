/*
 * This file is not available for use in any application other than as a
 * MATLAB(R) MEX file for use with the Simulink(R) Accelerator product.
 */

/*
 * untitled_acc.c
 * 
 * Real-Time Workshop code generation for Simulink model "untitled_acc.mdl".
 *
 * Model Version              : 1.0
 * Real-Time Workshop version : 6.0  (R14)  05-May-2004
 * C source code generated on : Wed Apr 09 12:14:26 2014
 */

#include <math.h>
#include <string.h>
#include "untitled_acc.h"
#include "untitled_acc_private.h"
#include <stdio.h>
#include "simstruc.h"
#include "fixedpoint.h"

#define CodeFormat                      S-Function
#define AccDefine1                      Accelerator_S-Function

/* Outputs for root system: '<Root>' */
static void mdlOutputs(SimStruct *S, int_T tid)
{
  /* simstruct variables */
  untitled_BlockIO *untitled_B = (untitled_BlockIO *) _ssGetBlockIO(S);
  untitled_ContinuousStates *untitled_X = (untitled_ContinuousStates*)
    ssGetContStates(S);
  untitled_D_Work *untitled_DWork = (untitled_D_Work *) ssGetRootDWork(S);
  untitled_Parameters *untitled_P = (untitled_Parameters *) ssGetDefaultParam(S);

  /* local block i/o variables */

  real_T rtb_TransferFcn1;
  real_T rtb_temp7;
  real_T rtb_temp8;

  /* tid is required for a uniform function interface. This system
   * is single rate, and in this case, tid is not accessed. */
  UNUSED_PARAMETER(tid);

  /* TransferFcn Block: <Root>/Transfer Fcn4 */
  untitled_B->TransferFcn4 =
    untitled_P->TransferFcn4_C*untitled_X->TransferFcn4_CSTATE;

  /* Scope: '<Root>/Scope' */
  /* Call into Simulink for Scope */
  ssCallAccelRunBlock(S, 0, 1, SS_CALL_MDL_OUTPUTS);

  /* Step: '<Root>/Step' */
  if (ssIsMajorTimeStep(S)) {
    real_T currentTime = ssGetT(S);
    if (currentTime >= untitled_P->Step_Time) {
      untitled_DWork->Step_MODE = 1;
    } else {
      untitled_DWork->Step_MODE = 0;
    }
  }
  /* Output value */
 rtb_temp7 = (untitled_DWork->Step_MODE == 1) ? untitled_P->Step_YFinal :
    untitled_P->Step_Y0;

  untitled_B->Sum = rtb_temp7 - untitled_B->TransferFcn4;

  /* TransferFcn Block: <Root>/Transfer Fcn */
  untitled_B->TransferFcn = untitled_P->TransferFcn_D*untitled_B->Sum;

  /* Step: '<Root>/Step1' */
  if (ssIsMajorTimeStep(S)) {
    real_T currentTime = ssGetT(S);
    if (currentTime >= untitled_P->Step1_Time) {
      untitled_DWork->Step1_MODE = 1;
    } else {
      untitled_DWork->Step1_MODE = 0;
    }
  }
  /* Output value */
 rtb_temp7 = (untitled_DWork->Step1_MODE == 1) ? untitled_P->Step1_YFinal :
    untitled_P->Step1_Y0;

  /* TransferFcn Block: <Root>/Transfer Fcn1 */
  rtb_TransferFcn1 = untitled_P->TransferFcn1_C*untitled_X->TransferFcn1_CSTATE;

  /* TransferFcn Block: <Root>/Transfer Fcn2 */
  rtb_temp8 = untitled_P->TransferFcn2_D*untitled_B->TransferFcn;
  rtb_temp8 += (untitled_P->TransferFcn2_C)*untitled_X->TransferFcn2_CSTATE;

  untitled_B->Sum1 = ((untitled_B->TransferFcn * untitled_P->Gain_Gain) +
    rtb_TransferFcn1) + rtb_temp8;

  /* TransferFcn Block: <Root>/Transfer Fcn3 */
  rtb_temp8 = untitled_P->TransferFcn3_C*untitled_X->TransferFcn3_CSTATE;

  untitled_B->Sum2 = rtb_temp7 + rtb_temp8;
}

/* Update for root system: '<Root>' */
#define MDL_UPDATE
static void mdlUpdate(SimStruct *S, int_T tid)
{

  /* tid is required for a uniform function interface. This system
   * is single rate, and in this case, tid is not accessed. */
  UNUSED_PARAMETER(tid);
}

/* Derivatives for root system: '<Root>' */
#define MDL_DERIVATIVES
static void mdlDerivatives(SimStruct *S)
{
  /* simstruct variables */
  untitled_BlockIO *untitled_B = (untitled_BlockIO *) _ssGetBlockIO(S);
  untitled_ContinuousStates *untitled_X = (untitled_ContinuousStates*)
    ssGetContStates(S);
  untitled_StateDerivatives *untitled_Xdot = (untitled_StateDerivatives*)
    ssGetdX(S);
  untitled_Parameters *untitled_P = (untitled_Parameters *) ssGetDefaultParam(S);

  /* TransferFcn Block: <Root>/Transfer Fcn4 */
  {

    untitled_Xdot->TransferFcn4_CSTATE =
      untitled_P->TransferFcn4_B*untitled_B->Sum2;
    untitled_Xdot->TransferFcn4_CSTATE +=
      (untitled_P->TransferFcn4_A)*untitled_X->TransferFcn4_CSTATE;
  }

  /* TransferFcn Block: <Root>/Transfer Fcn1 */
  {

    untitled_Xdot->TransferFcn1_CSTATE =
      untitled_P->TransferFcn1_B*untitled_B->TransferFcn;
  }

  /* TransferFcn Block: <Root>/Transfer Fcn2 */
  {

    untitled_Xdot->TransferFcn2_CSTATE =
      untitled_P->TransferFcn2_B*untitled_B->TransferFcn;
    untitled_Xdot->TransferFcn2_CSTATE +=
      (untitled_P->TransferFcn2_A)*untitled_X->TransferFcn2_CSTATE;
  }

  /* TransferFcn Block: <Root>/Transfer Fcn3 */
  {

    untitled_Xdot->TransferFcn3_CSTATE =
      untitled_P->TransferFcn3_B*untitled_B->Sum1;
    untitled_Xdot->TransferFcn3_CSTATE +=
      (untitled_P->TransferFcn3_A)*untitled_X->TransferFcn3_CSTATE;
  }
}

/* ZeroCrossings for root system: '<Root>' */
#define MDL_ZERO_CROSSINGS
static void mdlZeroCrossings(SimStruct *S)
{
  /* simstruct variables */
  untitled_Parameters *untitled_P = (untitled_Parameters *) ssGetDefaultParam(S);
  untitled_NonsampledZCs *untitled_NonsampledZC = (untitled_NonsampledZCs *)
    ssGetNonsampledZCs(S);

  /* Step Block: <Root>/Step */
  untitled_NonsampledZC->Step_NSZC = ssGetT(S) - untitled_P->Step_Time;

  /* Step Block: <Root>/Step1 */
  untitled_NonsampledZC->Step1_NSZC = ssGetT(S) - untitled_P->Step1_Time;
}

/* Function to initialize sizes */
static void mdlInitializeSizes(SimStruct *S)
{

  /* checksum */
  ssSetChecksumVal(S, 0, 1235986547U);
  ssSetChecksumVal(S, 1, 3328014407U);
  ssSetChecksumVal(S, 2, 246944596U);
  ssSetChecksumVal(S, 3, 622503952U);

  /* options */
  ssSetOptions(S, SS_OPTION_EXCEPTION_FREE_CODE);

  /* Accelerator check memory map size match for DWork */
  if (ssGetSizeofDWork(S) != sizeof(untitled_D_Work)) {
    ssSetErrorStatus(S,"Unexpected error: Internal DWork sizes do "
     "not match for accelerator mex file.");
  }

  /* Accelerator check memory map size match for BlockIO */
  if (ssGetSizeofGlobalBlockIO(S) != sizeof(untitled_BlockIO)) {
    ssSetErrorStatus(S,"Unexpected error: Internal BlockIO sizes do "
     "not match for accelerator mex file.");
  }

  /* model parameters */
  _ssSetDefaultParam(S, (real_T *) &untitled_DefaultParameters);
}

/* Empty mdlInitializeSampleTimes function (never called) */
static void mdlInitializeSampleTimes(SimStruct *S) { }

/* Empty mdlTerminate function (never called) */
static void mdlTerminate(SimStruct *S) { }

/* MATLAB MEX Glue */
#include "simulink.c"
