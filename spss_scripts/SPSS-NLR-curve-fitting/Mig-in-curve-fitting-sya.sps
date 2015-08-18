
* 2 component (no elderly) with constant.
* .
MODEL PROGRAM h1=1 r1=0.1 h2=1 ra1=0.1 rd1=0.1 p1=25  .
COMPUTE c1_in2pr =  (h1*exp(-r1*age)) + (h2*exp(-rd1*(age-p1)-exp(-ra1*(age-p1))))  + 0.005 .
NLR c1_in
  /PRED c1_in2pr
  /SAVE PRED 
  /CRITERIA ITER 1000 .

* 3 component (no retirement) with constant.
* .
MODEL PROGRAM h1=1 r1=0.1 h2=1 ra1=0.1 rd1=0.1 p1=25 h4=1 r2=0.1  .
COMPUTE c1_in3pr =  (h1*exp(-r1*age)) + (h2*exp(-rd1*(age-p1)-exp(-ra1*(age-p1)))) + (h4*exp(r2*age)) + 0.005 .
NLR c1_in
  /PRED c1_in3pr
  /SAVE PRED 
  /CRITERIA ITER 1000 .

* 4 component (with elderly & retirement) with constant.
* .
MODEL PROGRAM h1=1 r1=0.1 h2=1 ra1=0.1 rd1=0.1 p1=25  h3=1 ra2=0.1 rd2=0.1 p2=55 h4=1 r2=0.1  .
COMPUTE c1_in4pr =  (h1*exp(-r1*age)) + (h2*exp(-rd1*(age-p1)-exp(-ra1*(age-p1)))) + (h3*exp(-rd2*(age-p2)-exp(-ra2*(age-p2)))) + (h4*exp(r2*age)) + 0.005 .
NLR c1_in
  /PRED c1_in4pr
  /SAVE PRED 
  /CRITERIA ITER 1000 .






* 2 component (no elderly) with constant.
* .
MODEL PROGRAM h1=1 r1=0.1 h2=1 ra1=0.1 rd1=0.1 p1=25  .
COMPUTE c2_in2pr =  (h1*exp(-r1*age)) + (h2*exp(-rd1*(age-p1)-exp(-ra1*(age-p1))))  + 0.005 .
NLR c2_in
  /PRED c2_in2pr
  /SAVE PRED 
  /CRITERIA ITER 1000 .

* 3 component (no retirement) with constant.
* .
MODEL PROGRAM h1=1 r1=0.1 h2=1 ra1=0.1 rd1=0.1 p1=25 h4=1 r2=0.1  .
COMPUTE c2_in3pr =  (h1*exp(-r1*age)) + (h2*exp(-rd1*(age-p1)-exp(-ra1*(age-p1)))) + (h4*exp(r2*age)) + 0.005 .
NLR c2_in
  /PRED c2_in3pr
  /SAVE PRED 
  /CRITERIA ITER 1000 .

* 4 component (with elderly & retirement) with constant.
* .
MODEL PROGRAM h1=1 r1=0.1 h2=1 ra1=0.1 rd1=0.1 p1=25  h3=1 ra2=0.1 rd2=0.1 p2=55 h4=1 r2=0.1  .
COMPUTE c2_in4pr =  (h1*exp(-r1*age)) + (h2*exp(-rd1*(age-p1)-exp(-ra1*(age-p1)))) + (h3*exp(-rd2*(age-p2)-exp(-ra2*(age-p2)))) + (h4*exp(r2*age)) + 0.005 .
NLR c2_in
  /PRED c2_in4pr
  /SAVE PRED 
  /CRITERIA ITER 1000 .







* 2 component (no elderly) with constant.
* .
MODEL PROGRAM h1=1 r1=0.1 h2=1 ra1=0.1 rd1=0.1 p1=25  .
COMPUTE c3_in2pr =  (h1*exp(-r1*age)) + (h2*exp(-rd1*(age-p1)-exp(-ra1*(age-p1))))  + 0.005 .
NLR c3_in
  /PRED c3_in2pr
  /SAVE PRED 
  /CRITERIA ITER 1000 .

* 3 component (no retirement) with constant.
* .
MODEL PROGRAM h1=1 r1=0.1 h2=1 ra1=0.1 rd1=0.1 p1=25 h4=1 r2=0.1  .
COMPUTE c3_in3pr =  (h1*exp(-r1*age)) + (h2*exp(-rd1*(age-p1)-exp(-ra1*(age-p1)))) + (h4*exp(r2*age)) + 0.005 .
NLR c3_in
  /PRED c3_in3pr
  /SAVE PRED 
  /CRITERIA ITER 1000 .

* 4 component (with elderly & retirement) with constant.
* .
MODEL PROGRAM h1=1 r1=0.1 h2=1 ra1=0.1 rd1=0.1 p1=25  h3=1 ra2=0.1 rd2=0.1 p2=55 h4=1 r2=0.1  .
COMPUTE c3_in4pr =  (h1*exp(-r1*age)) + (h2*exp(-rd1*(age-p1)-exp(-ra1*(age-p1)))) + (h3*exp(-rd2*(age-p2)-exp(-ra2*(age-p2)))) + (h4*exp(r2*age)) + 0.005 .
NLR c3_in
  /PRED c3_in4pr
  /SAVE PRED 
  /CRITERIA ITER 1000 .







* 2 component (no elderly) with constant.
* .
MODEL PROGRAM h1=1 r1=0.1 h2=1 ra1=0.1 rd1=0.1 p1=25  .
COMPUTE c4_in2pr =  (h1*exp(-r1*age)) + (h2*exp(-rd1*(age-p1)-exp(-ra1*(age-p1))))  + 0.005 .
NLR c4_in
  /PRED c4_in2pr
  /SAVE PRED 
  /CRITERIA ITER 1000 .

* 3 component (no retirement) with constant.
* .
MODEL PROGRAM h1=1 r1=0.1 h2=1 ra1=0.1 rd1=0.1 p1=25 h4=1 r2=0.1  .
COMPUTE c4_in3pr =  (h1*exp(-r1*age)) + (h2*exp(-rd1*(age-p1)-exp(-ra1*(age-p1)))) + (h4*exp(r2*age)) + 0.005 .
NLR c4_in
  /PRED c4_in3pr
  /SAVE PRED 
  /CRITERIA ITER 1000 .

* 4 component (with elderly & retirement) with constant.
* .
MODEL PROGRAM h1=1 r1=0.1 h2=1 ra1=0.1 rd1=0.1 p1=25  h3=1 ra2=0.1 rd2=0.1 p2=55 h4=1 r2=0.1  .
COMPUTE c4_in4pr =  (h1*exp(-r1*age)) + (h2*exp(-rd1*(age-p1)-exp(-ra1*(age-p1)))) + (h3*exp(-rd2*(age-p2)-exp(-ra2*(age-p2)))) + (h4*exp(r2*age)) + 0.005 .
NLR c4_in
  /PRED c4_in4pr
  /SAVE PRED 
  /CRITERIA ITER 1000 .







* 2 component (no elderly) with constant.
* .
MODEL PROGRAM h1=1 r1=0.1 h2=1 ra1=0.1 rd1=0.1 p1=25  .
COMPUTE c5_in2pr =  (h1*exp(-r1*age)) + (h2*exp(-rd1*(age-p1)-exp(-ra1*(age-p1))))  + 0.005 .
NLR c5_in
  /PRED c5_in2pr
  /SAVE PRED 
  /CRITERIA ITER 1000 .

* 3 component (no retirement) with constant.
* .
MODEL PROGRAM h1=1 r1=0.1 h2=1 ra1=0.1 rd1=0.1 p1=25 h4=1 r2=0.1  .
COMPUTE c5_in3pr =  (h1*exp(-r1*age)) + (h2*exp(-rd1*(age-p1)-exp(-ra1*(age-p1)))) + (h4*exp(r2*age)) + 0.005 .
NLR c5_in
  /PRED c5_in3pr
  /SAVE PRED 
  /CRITERIA ITER 1000 .

* 4 component (with elderly & retirement) with constant.
* .
MODEL PROGRAM h1=1 r1=0.1 h2=1 ra1=0.1 rd1=0.1 p1=25  h3=1 ra2=0.1 rd2=0.1 p2=55 h4=1 r2=0.1  .
COMPUTE c5_in4pr =  (h1*exp(-r1*age)) + (h2*exp(-rd1*(age-p1)-exp(-ra1*(age-p1)))) + (h3*exp(-rd2*(age-p2)-exp(-ra2*(age-p2)))) + (h4*exp(r2*age)) + 0.005 .
NLR c5_in
  /PRED c5_in4pr
  /SAVE PRED 
  /CRITERIA ITER 1000 .







* 2 component (no elderly) with constant.
* .
MODEL PROGRAM h1=1 r1=0.1 h2=1 ra1=0.1 rd1=0.1 p1=25  .
COMPUTE c6_in2pr =  (h1*exp(-r1*age)) + (h2*exp(-rd1*(age-p1)-exp(-ra1*(age-p1))))  + 0.005 .
NLR c6_in
  /PRED c6_in2pr
  /SAVE PRED 
  /CRITERIA ITER 1000 .

* 3 component (no retirement) with constant.
* .
MODEL PROGRAM h1=1 r1=0.1 h2=1 ra1=0.1 rd1=0.1 p1=25 h4=1 r2=0.1  .
COMPUTE c6_in3pr =  (h1*exp(-r1*age)) + (h2*exp(-rd1*(age-p1)-exp(-ra1*(age-p1)))) + (h4*exp(r2*age)) + 0.005 .
NLR c6_in
  /PRED c6_in3pr
  /SAVE PRED 
  /CRITERIA ITER 1000 .

* 4 component (with elderly & retirement) with constant.
* .
MODEL PROGRAM h1=1 r1=0.1 h2=1 ra1=0.1 rd1=0.1 p1=25  h3=1 ra2=0.1 rd2=0.1 p2=55 h4=1 r2=0.1  .
COMPUTE c6_in4pr =  (h1*exp(-r1*age)) + (h2*exp(-rd1*(age-p1)-exp(-ra1*(age-p1)))) + (h3*exp(-rd2*(age-p2)-exp(-ra2*(age-p2)))) + (h4*exp(r2*age)) + 0.005 .
NLR c6_in
  /PRED c1_in4pr
  /SAVE PRED 
  /CRITERIA ITER 1000 .







* 2 component (no elderly) with constant.
* .
MODEL PROGRAM h1=1 r1=0.1 h2=1 ra1=0.1 rd1=0.1 p1=25  .
COMPUTE c7_in2pr =  (h1*exp(-r1*age)) + (h2*exp(-rd1*(age-p1)-exp(-ra1*(age-p1))))  + 0.005 .
NLR c7_in
  /PRED c7_in2pr
  /SAVE PRED 
  /CRITERIA ITER 1000 .

* 3 component (no retirement) with constant.
* .
MODEL PROGRAM h1=1 r1=0.1 h2=1 ra1=0.1 rd1=0.1 p1=25 h4=1 r2=0.1  .
COMPUTE c7_in3pr =  (h1*exp(-r1*age)) + (h2*exp(-rd1*(age-p1)-exp(-ra1*(age-p1)))) + (h4*exp(r2*age)) + 0.005 .
NLR c7_in
  /PRED c7_in3pr
  /SAVE PRED 
  /CRITERIA ITER 1000 .

* 4 component (with elderly & retirement) with constant.
* .
MODEL PROGRAM h1=1 r1=0.1 h2=1 ra1=0.1 rd1=0.1 p1=25  h3=1 ra2=0.1 rd2=0.1 p2=55 h4=1 r2=0.1  .
COMPUTE c7_in4pr =  (h1*exp(-r1*age)) + (h2*exp(-rd1*(age-p1)-exp(-ra1*(age-p1)))) + (h3*exp(-rd2*(age-p2)-exp(-ra2*(age-p2)))) + (h4*exp(r2*age)) + 0.005 .
NLR c7_in
  /PRED c7_in4pr
  /SAVE PRED 
  /CRITERIA ITER 1000 .


