clearscreen.
 
 set throttle to 1.       


FROM {local countdown is 10.} UNTIL countdown = 0 STEP {SET countdown to countdown - 1. wait 1.} DO {
    PRINT "T-" + countdown.  
}

 stage.                   
 print "We have a liftoff!".

set steering to up. until ship:velocity:surface:mag > 100. 
if ship:velocity:surface:mag >= 100 and ship:velocity:surface:mag < 200. {set steering to heading(90,80). print "80'". wait until ship:velocity:surface:mag >= 200.}
if ship:velocity:surface:mag >= 200 and ship:velocity:surface:mag < 300. {set steering to heading(90,70). print "70'". wait until ship:velocity:surface:mag >= 300.}
if ship:velocity:surface:mag >= 300 and ship:velocity:surface:mag < 400. {set steering to heading(90,60). print "60'". wait until ship:velocity:surface:mag >= 400.} 
if ship:velocity:surface:mag >= 400 and ship:velocity:surface:mag < 500. {set steering to heading(90,50). print "50'". wait until ship:velocity:surface:mag >= 500.} 
if ship:velocity:surface:mag >= 500 and ship:velocity:surface:mag < 600. {set steering to heading(90,45). print "45'". wait until ship:velocity:surface:mag >= 600.}


 if apoapsis < 101000 set throttle to 1. print "1". until apoapsis > 101000. { print "2".}
 if apoapsis > 101000 set throttle to 0. print "3".











//until ship:eta:apoapsis = 0 STEP {print ship:eta:apoapsis. wait 5.}
if ship:eta:apoapsis <= 60. {stage. wait 1. set throttle to 0. print "4". wait until ship:eta:apoapsis = 45.}
if ship:eta:apoapsis <= 45.  {set steering to prograde. print "5". wait until ship:eta:apoapsis = 30.}
if ship:eta:apoapsis <= 30.  {set throttle to 1. print "6".}



wait until false.






