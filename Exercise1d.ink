/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Varrying text via loops
 - Functions
 
 In the assignment:
 - A story with at least 6 knots
 - Vary some text via a loop
 - Create a function that serves as a timer. (This is shown in the video)
*/


VAR time = -1 //  0 Morning, 1 Noon, 2 Night




-> seashore

== seashore ==
You are sitting on the beach.
It is {advance_time() }
* { time == 0} [Feel the sand] ->sand


It is {advance_time() }
* { time == 2} [Dip toes in water] -> water
+ [Stroll down the beach ] -> beach2
-> DONE

== beach2 ==
This is further down the beach.
It is { advance_time() }
* { time == 1} [Pick up some shells] -> shells 
+ [Stroll back through the beach] -> seashore

== beach3 ==
You are still on the beach but closer to town.
It is { advance_time() }
* { time == 1} [Grab some sand to take back] -> sand 
+ [Stroll back up the beach] -> beach3

== shells ==
You pick up the shells
-> beach2

==water==
You feel the refreshing sea water.
->seashore

==sand==
You dig into grainy sand. 
-> beach3

== function advance_time ==

    ~ time = time + 1
    
    {
        - time > 2:
            ~ time = 0
    }    
    
    {    
        - time == 0:
            ~ return "Morning"
        
        - time == 1:
            ~ return "Noon"
        
        - time == 2:
            ~ return "Night"
    
    }

    
        
    ~ return time
    
    
    
