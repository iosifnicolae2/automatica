/*
 * untitled_acc.h
 *
 * Real-Time Workshop code generation for Simulink model "untitled_acc.mdl".
 *
 * Model Version              : 1.0
 * Real-Time Workshop version : 6.0  (R14)  05-May-2004
 * C source code generated on : Wed Apr 09 12:14:26 2014
 */
#ifndef _RTW_HEADER_untitled_acc_h_
#define _RTW_HEADER_untitled_acc_h_

#include <math.h>
#include <stdlib.h>
#define S_FUNCTION_NAME                 simulink_only_sfcn
#define S_FUNCTION_LEVEL                2
#define RTW_GENERATED_S_FUNCTION

#include "rtwtypes.h"
#include "simstruc.h"
#include "fixedpoint.h"
#include "rtlibsrc.h"

#include "untitled_acc_types.h"

/* Block signals (auto storage) */
typedef struct _untitled_BlockIO {
  real_T Sum;                           /* '<Root>/Sum' */
  real_T TransferFcn;                   /* '<Root>/Transfer Fcn' */
  real_T Sum1;                          /* '<Root>/Sum1' */
  real_T Sum2;                          /* '<Root>/Sum2' */
  real_T TransferFcn4;                  /* '<Root>/Transfer Fcn4' */
} untitled_BlockIO;

/* Block states (auto storage) for system: '<Root>' */
typedef struct untitled_D_Work_tag {
  struct {
    void *LoggedData;
  } Scope_PWORK;                        /* '<Root>/Scope' */
  int_T Step_MODE;                      /* '<Root>/Step' */
  int_T Step1_MODE;                     /* '<Root>/Step1' */
  char pad_Step1_MODE[4];
} untitled_D_Work;

/* Continuous states (auto storage) */
typedef struct _untitled_ContinuousStates {
  real_T TransferFcn4_CSTATE;           /* '<Root>/Transfer Fcn4' */
  real_T TransferFcn1_CSTATE;           /* '<Root>/Transfer Fcn1' */
  real_T TransferFcn2_CSTATE;           /* '<Root>/Transfer Fcn2' */
  real_T TransferFcn3_CSTATE;           /* '<Root>/Transfer Fcn3' */
} untitled_ContinuousStates;

/* State derivatives (auto storage) */
typedef struct _untitled_StateDerivatives {
  real_T TransferFcn4_CSTATE;           /* '<Root>/Transfer Fcn4' */
  real_T TransferFcn1_CSTATE;           /* '<Root>/Transfer Fcn1' */
  real_T TransferFcn2_CSTATE;           /* '<Root>/Transfer Fcn2' */
  real_T TransferFcn3_CSTATE;           /* '<Root>/Transfer Fcn3' */
} untitled_StateDerivatives;

/* State disabled  */
typedef struct _untitled_StateDisabled {
  boolean_T TransferFcn4_CSTATE;        /* '<Root>/Transfer Fcn4' */
  boolean_T TransferFcn1_CSTATE;        /* '<Root>/Transfer Fcn1' */
  boolean_T TransferFcn2_CSTATE;        /* '<Root>/Transfer Fcn2' */
  boolean_T TransferFcn3_CSTATE;        /* '<Root>/Transfer Fcn3' */
} untitled_StateDisabled;

/* Zero-crossing (trigger) state */
typedef struct _untitled_NonsampledZCs {
  real_T Step_NSZC;                     /* '<Root>/Step' */
  real_T Step1_NSZC;                    /* '<Root>/Step1' */
} untitled_NonsampledZCs;

/* Parameters (auto storage) */
struct _untitled_Parameters {
  real_T TransferFcn4_A;                /* Computed Parameter: A
                                         * '<Root>/Transfer Fcn4'
                                         */
  real_T TransferFcn4_B;                /* Computed Parameter: B
                                         * '<Root>/Transfer Fcn4'
                                         */
  real_T TransferFcn4_C;                /* Computed Parameter: C
                                         * '<Root>/Transfer Fcn4'
                                         */
  real_T Step_Time;                     /* Expression: 1
                                         * '<Root>/Step'
                                         */
  real_T Step_Y0;                       /* Expression: 0
                                         * '<Root>/Step'
                                         */
  real_T Step_YFinal;                   /* Expression: 1
                                         * '<Root>/Step'
                                         */
  real_T TransferFcn_D;                 /* Computed Parameter: D
                                         * '<Root>/Transfer Fcn'
                                         */
  real_T Gain_Gain;                     /* Expression: 1
                                         * '<Root>/Gain'
                                         */
  real_T Step1_Time;                    /* Expression: 1
                                         * '<Root>/Step1'
                                         */
  real_T Step1_Y0;                      /* Expression: 0
                                         * '<Root>/Step1'
                                         */
  real_T Step1_YFinal;                  /* Expression: 1
                                         * '<Root>/Step1'
                                         */
  real_T TransferFcn1_B;                /* Computed Parameter: B
                                         * '<Root>/Transfer Fcn1'
                                         */
  real_T TransferFcn1_C;                /* Computed Parameter: C
                                         * '<Root>/Transfer Fcn1'
                                         */
  real_T TransferFcn2_A;                /* Computed Parameter: A
                                         * '<Root>/Transfer Fcn2'
                                         */
  real_T TransferFcn2_B;                /* Computed Parameter: B
                                         * '<Root>/Transfer Fcn2'
                                         */
  real_T TransferFcn2_C;                /* Computed Parameter: C
                                         * '<Root>/Transfer Fcn2'
                                         */
  real_T TransferFcn2_D;                /* Computed Parameter: D
                                         * '<Root>/Transfer Fcn2'
                                         */
  real_T TransferFcn3_A;                /* Computed Parameter: A
                                         * '<Root>/Transfer Fcn3'
                                         */
  real_T TransferFcn3_B;                /* Computed Parameter: B
                                         * '<Root>/Transfer Fcn3'
                                         */
  real_T TransferFcn3_C;                /* Computed Parameter: C
                                         * '<Root>/Transfer Fcn3'
                                         */
};

extern untitled_Parameters untitled_DefaultParameters; /* parameters */

#endif                                  /* _RTW_HEADER_untitled_acc_h_ */
