#delimit ;
clear;
set more off;

use "C:\Users\ymori\Dropbox\reserach\habit_formation\data\devDTA.dta",clear;
gen st_nm=20 if State_name_2001==13;
replace st_nm=24 if State_name_2001==23;
replace st_nm=4 if State_name_2001==3;
replace st_nm=33 if State_name_2001==10;
replace st_nm=26 if State_name_2001==4;
replace st_nm=12 if State_name_2001==14;
replace st_nm=6 if State_name_2001==5;
replace st_nm=13 if State_name_2001==15;
replace st_nm=10 if State_name_2001==11;
replace st_nm=11 if State_name_2001==13;
replace st_nm=State_name_2001 if st_nm==.;

gen ac_no=AC_no_2001;
sort st_nm ac_no;

save  "C:\Users\ymori\Dropbox\reserach\habit_formation\data\2004_match.dta",replace;

use "C:\Users\ymori\Dropbox\reserach\habit_formation\data\ac_pc_turnout04.dta",clear;
sort  st_nm ac_no;
merge st_nm ac_no using "C:\Users\ymori\Dropbox\reserach\habit_formation\data\2004_match.dta";
drop _merge;
sort st_nm ac_no;
save  "C:\Users\ymori\Dropbox\reserach\habit_formation\data\2004_match.dta",replace;

use "C:\Users\ymori\Dropbox\reserach\habit_formation\data\ac_pc_turnout04.dta",clear;
gen st_nm=1 if st_name=="Andhra Pradesh";
replace st_nm=4 if st_name=="Bihar";
replace st_nm=6 if st_name=="Gujarat";
replace st_nm=7  if st_name=="Haryana";
replace st_nm=8  if st_name=="Himachal Pradesh";
replace st_nm=33  if st_name=="Jharkhand";
replace st_nm=10  if st_name=="Karnataka";
replace st_nm=11  if st_name=="Kerala";
replace st_nm=12  if st_name=="Madhya Pradesh";
replace st_nm=13 if st_name=="Maharashtra";
replace st_nm=18  if st_name=="Orissa";
replace st_nm=19  if st_name=="Punjab";
replace st_nm=20  if st_name=="Rajasthan";
replace st_nm=22  if st_name=="Tamil Nadu";
replace st_nm=24  if st_name=="Uttar Pradesh";
replace st_nm=25  if st_name=="West Bengal";

