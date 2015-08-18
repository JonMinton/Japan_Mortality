
* curve1 .
*.
MODEL PROGRAM  h=50 p=25 r=0.5    .
COMPUTE curve1_pr =   (h*exp(-(unit-p)**2/r))  .
NLR curve1 
  /PRED curve1_pr
  /SAVE PRED 
  /CRITERIA ITER 1000 .
VARIABLE LABELS curve1_pr 'Predicted Data' .
* .
*Estimated curve .
TSPLOT VARIABLES= curve1 curve1_pr
  /ID= unit
  /NOLOG.
* .

* curve2 .
* .
MODEL PROGRAM h=50 ra=0.5 rd=0.5 p=20 .
COMPUTE curve2_pr =  (h*exp(-rd*(unit-p)-exp(-ra*(unit-p)))) .
NLR curve2 
  /PRED curve2_pr
  /SAVE PRED 
  /CRITERIA ITER 1000 .
VARIABLE LABELS curve2_pr 'Predicted Data' .
* .
*Estimated curve .
TSPLOT VARIABLES= curve2 curve2_pr
  /ID= unit
  /NOLOG.
* .

* curve3 .
* .
MODEL PROGRAM h=50 ra=0.5 rd=0.5 p=30 .
COMPUTE curve3_pr =  (h*exp(-rd*(unit-p)-exp(-ra*(unit-p)))) .
NLR curve3 
  /PRED curve3_pr
  /SAVE PRED 
  /CRITERIA ITER 1000 .
VARIABLE LABELS curve3_pr 'Predicted Data' .
* .
*Estimated curve .
TSPLOT VARIABLES= curve3 curve3_pr
  /ID= unit
  /NOLOG.
* .

* curve4 .
* .
MODEL PROGRAM h=50 r=0.5 .
COMPUTE curve4_pr =  (h*exp(r*unit)) .
NLR curve4 
  /PRED curve4_pr
  /SAVE PRED 
  /CRITERIA ITER 1000 .
VARIABLE LABELS curve4_pr 'Predicted Data' .
* .
*Estimated curve .
TSPLOT VARIABLES= curve4 curve4_pr
  /ID= unit
  /NOLOG.
* .

* curve5 .
* .
MODEL PROGRAM h=50 r=0.5 .
COMPUTE curve5_pr =  (h*exp(-r*unit)) .
NLR curve5 
  /PRED curve5_pr
  /SAVE PRED 
  /CRITERIA ITER 1000 .
VARIABLE LABELS curve5_pr 'Predicted Data' .
* .
*Estimated curve .
TSPLOT VARIABLES= curve5 curve5_pr
  /ID= unit
  /NOLOG.
* .

*Curve6 .
* .
MODEL PROGRAM a=50 b=5 c=.5 .
COMPUTE logistic_pr =  a/(1+exp(b+c*unit)) .
NLR curve6 
  /PRED logistic_pr
  /SAVE PRED 
  /CRITERIA ITER 1000 .
VARIABLE LABELS  logistic_pr 'Predicted Data' .
* .
*Estimated curve .
TSPLOT VARIABLES= curve6 logistic_pr
  /ID= unit
  /NOLOG.
* .


*Curve6 .
* .
MODEL PROGRAM a=50 b=5 c=.5 .
COMPUTE gompertz_pr = a*exp(-exp(b-c*unit)) .
NLR curve6 
  /PRED gompertz_pr
  /SAVE PRED 
  /CRITERIA ITER 1000 .
VARIABLE LABELS  gompertz_pr 'Predicted Data' .
* .
*Estimated curve .
TSPLOT VARIABLES= curve6 gompertz_pr
  /ID= unit
  /NOLOG.
* .

*Curve6 .
* .
MODEL PROGRAM a=50 b=5 c=.5 d=2 .
COMPUTE weibull_pr = a+(b-a)*exp(-c*unit**d) .
NLR curve6 
  /PRED weibull_pr
  /SAVE PRED 
  /CRITERIA ITER 1000 .
VARIABLE LABELS  weibull_pr 'Predicted Data' .
* .
*Estimated curve .
TSPLOT VARIABLES= curve6 weibull_pr
  /ID= unit
  /NOLOG.
* .

*Estimated curves .
TSPLOT VARIABLES=  curve1_pr curve2_pr curve3_pr curve4_pr curve5_pr  logistic_pr
  /NOLOG.
* .

*Estimated curves .
TSPLOT VARIABLES=  logistic_pr gompertz_pr weibull_pr
  /NOLOG.
* .
