
MODEL PROGRAM A=1 B=1 C=1 D=1 E=10 F=20 G=1 H=1 K=2     .
COMPUTE dth_pr =  A**(age+B)**C + D*exp(-E*(ln(age)-ln(F))**2) + G*H**age / 1+K*G*H**age .
NLR pr_death 
  /PRED dth_pr
  /SAVE PRED 
  /CRITERIA ITER 1000 .
VARIABLE LABELS dth_pr 'Predicted Data' .
* .
*Estimated curve .
TSPLOT VARIABLES= dth_pr pr_death
  /ID= age
  /NOLOG.
* .



USE ALL.
COMPUTE filter_$=(age<20).
VARIABLE LABEL filter_$ 'age<20 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMAT filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

MODEL PROGRAM A=1 B=1 C=1 D=1 E=10 F=20 G=1 H=1 K=2     .
COMPUTE dth_lt20 = A**(age+B)**C     .
NLR pr_death 
  /PRED dth_lt20
  /SAVE PRED 
  /CRITERIA ITER 1000 .
VARIABLE LABELS dth_lt20 'Predicted Data' .
* .
*Estimated curve .
TSPLOT VARIABLES= dth_lt20 pr_death
  /ID= age
  /NOLOG.
* .

USE ALL.
COMPUTE filter_$=(age>5 and age<60).
VARIABLE LABEL filter_$ 'age<20 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMAT filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

MODEL PROGRAM A=1 B=1 C=1 D=1 E=10 F=20 G=1 H=1 K=2     .
COMPUTE dth_5_60 =  D*exp(-E*(ln(age)-ln(F))**2)   .
NLR pr_death 
  /PRED dth_5_60
  /SAVE PRED 
  /CRITERIA ITER 1000 .
VARIABLE LABELS dth_5_60 'Predicted Data' .
* .
*Estimated curve .
TSPLOT VARIABLES= dth_5_60 pr_death
  /ID= age
  /NOLOG.
* .

USE ALL.
COMPUTE filter_$=(age>5).
VARIABLE LABEL filter_$ 'age<20 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMAT filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

MODEL PROGRAM A=1 B=1 C=1 D=1 E=10 F=20 G=1 H=1 K=2     .
COMPUTE dth_gt5 =  G*H**age / 1+K*G*H**age .
NLR pr_death 
  /PRED dth_gt5
  /SAVE PRED 
  /CRITERIA ITER 1000 .
VARIABLE LABELS dth_gt5 'Predicted Data' .
* .
*Estimated curve .
TSPLOT VARIABLES= dth_gt5 pr_death
  /ID= age
  /NOLOG.
* .

USE ALL.

*Estimated curve .
TSPLOT VARIABLES= pr_death dth_pr dth_gt5 dth_5_60 dth_lt20
  /ID= age
  /NOLOG.
* .
