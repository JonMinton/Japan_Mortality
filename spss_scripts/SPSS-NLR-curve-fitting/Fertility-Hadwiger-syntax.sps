
* Hadwiger function to smooth five year ASFRs & estimate single year of age detail .

* White.
* .
MODEL PROGRAM a=1 b=4 c=28.
COMPUTE White_Pr  = (a*b/c)*(c/age)**(3/2)*exp(-b*b*(c/age+age/c-2)).
NLR wht
  /PRED White_Pr 
  /SAVE PRED 
  /CRITERIA ITER 10000 .
VARIABLE LABELS   White_Pr 'White Pred_Val Hadwiger' .
* .
*ASFR curves for Hadwiger for ethnic group White.
TSPLOT VARIABLES= wht White_Pr 
  /ID= age
  /NOLOG.
* .

* Black-African.
* .
MODEL PROGRAM a=1 b=4 c=28.
COMPUTE bl_af_Pr  = (a*b/c)*(c/age)**(3/2)*exp(-b*b*(c/age+age/c-2)).
NLR bla
  /PRED bl_af_Pr 
  /SAVE PRED
  /CRITERIA ITER 10000 .
VARIABLE LABELS   bl_af_Pr 'Black African Pred_Val Hadwiger' .
* .
*ASFR curves for Hadwiger for ethnic group Black African.
TSPLOT VARIABLES= bla bl_af_Pr 
  /ID= age
  /NOLOG.
* .

* Black-Carribean.
* .
MODEL PROGRAM a=1 b=4 c=28.
COMPUTE bl_cb_pr = (a*b/c)*(c/age)**(3/2)*exp(-b*b*(c/age+age/c-2)).
NLR blc
  /PRED bl_cb_Pr 
  /SAVE PRED 
  /CRITERIA ITER 10000 .
VARIABLE LABELS   bl_cb_Pr 'Black Caribbean Pred_Val Hadwiger' .
* .
*ASFR curves for Hadwiger for ethnic group Black-Carribean.
TSPLOT VARIABLES= blc  bl_cb_Pr 
  /ID= age
  /NOLOG.
* .

* Indian.
* .
MODEL PROGRAM a=1 b=4 c=28.
COMPUTE indian_Pr  = (a*b/c)*(c/age)**(3/2)*exp(-b*b*(c/age+age/c-2)).
NLR ind
  /PRED indian_Pr 
  /SAVE PRED
  /CRITERIA ITER 10000 .
VARIABLE LABELS   indian_Pr 'Indian Pred_Val Hadwiger' .
* .
*ASFR curves for Hadwiger for ethnic group indian.
TSPLOT VARIABLES= ind indian_Pr 
  /ID= age
  /NOLOG.
* .

* Pakistani.
* .
MODEL PROGRAM a=1 b=4 c=28.
COMPUTE pakistani_Pr  = (a*b/c)*(c/age)**(3/2)*exp(-b*b*(c/age+age/c-2)).
NLR pak
  /PRED pakistani_Pr
  /SAVE PRED 
  /CRITERIA ITER 10000 .
VARIABLE LABELS   pakistani_Pr 'Pakistani Pred_Val Hadwiger' .
* .
*ASFR curves for Hadwiger for All_grps.
TSPLOT VARIABLES= pak pakistani_Pr 
  /ID= age
  /NOLOG.
* .

* Bangladeshi.
* .
MODEL PROGRAM a=1 b=4 c=28.
COMPUTE bangl_Pr = (a*b/c)*(c/age)**(3/2)*exp(-b*b*(c/age+age/c-2)).
NLR bng 
  /PRED bangl_Pr
  /SAVE PRED
  /CRITERIA ITER 10000 .
VARIABLE LABELS   bangl_Pr 'Bangladeshi Pred_Val Hadwiger' .
* .
*ASFR curves for Hadwiger for All_grps.
TSPLOT VARIABLES= bng bangl_Pr 
  /ID= age
  /NOLOG.
* .

* Chinese.
* .
MODEL PROGRAM a=1 b=4 c=28.
COMPUTE chinese_Pr = (a*b/c)*(c/age)**(3/2)*exp(-b*b*(c/age+age/c-2)).
NLR chi
  /PRED chinese_Pr
  /SAVE PRED 
  /CRITERIA ITER 10000 .
VARIABLE LABELS   chinese_Pr 'Chinese Pred_Val Hadwiger' .
* .
*ASFR curves for Hadwiger for All_grps.
TSPLOT VARIABLES= chi chinese_Pr 
  /ID= age
  /NOLOG.
* .

* Other.
* .
MODEL PROGRAM a=1 b=4 c=28.
COMPUTE other_Pr  = (a*b/c)*(c/age)**(3/2)*exp(-b*b*(c/age+age/c-2)).
NLR oth
  /PRED other_Pr
  /SAVE PRED 
  /CRITERIA ITER 10000 .
VARIABLE LABELS   other_Pr 'Other Pred_Val Hadwiger' .
* .
*ASFR curves for Hadwiger for All_grps.
TSPLOT VARIABLES= oth other_Pr 
  /ID= age
  /NOLOG.
* .

* All women.
* .
MODEL PROGRAM a=1 b=4 c=28.
COMPUTE aw_Pr  = (a*b/c)*(c/age)**(3/2)*exp(-b*b*(c/age+age/c-2)).
NLR aw  
  /PRED aw_Pr
  /SAVE PRED 
  /CRITERIA ITER 10000 .
VARIABLE LABELS   aw_Pr 'All women Pred_Val Hadwiger' .
* .
*ASFR curves for Hadwiger for All Women.
TSPLOT VARIABLES= aw  aw_Pr 
  /ID= age
  /NOLOG.
* .


* All women VS.
* .
MODEL PROGRAM a=1 b=4 c=28.
COMPUTE vs_Pr  = (a*b/c)*(c/age)**(3/2)*exp(-b*b*(c/age+age/c-2)).
NLR vs 
  /PRED vs_Pr
  /SAVE PRED 
  /CRITERIA ITER 10000 .
VARIABLE LABELS   vs_Pr 'VS Pred_Val Hadwiger' .
* .
*ASFR curves for Hadwiger for All Women.
TSPLOT VARIABLES= vs  vs_Pr 
  /ID= age
  /NOLOG.
* .

*Estimated curves .
TSPLOT VARIABLES=  White_Pr  bl_af_Pr  bl_cb_Pr indian_Pr  pakistani_Pr bangl_Pr chinese_Pr other_Pr 
  /NOLOG.
* .
