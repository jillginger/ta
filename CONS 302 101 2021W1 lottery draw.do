cap log close
clear all
set more off

global logpath `"C:\Users\jillb\OneDrive - UBC\CONS 302 TA 2021Fall\flip class\log"'
cd "$logpath"
log using lottery.smcl,replace

*final presentation order lottery draw
*Jing Jiang
*2021-11-16

set obs 8
g group_n = _n

set seed 49
g lottery = rnormal()*3 + 100

sort lottery
g pre_order = _n

log close

sort group_n
