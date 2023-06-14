--------------------------- MODULE simpleprogram ---------------------------
EXTENDS Integers
VARIABLES i, pc   

Init == (pc = "start") /\ (i = 0)

Pick == /\ pc = "start"  
        /\ i' \in 0..1000
        /\ pc' = "middle"

Add1 == /\ pc = "middle" 
        /\ i' = i + 1
        /\ pc' = "done"  
           
Next == Pick \/ Add1

=============================================================================
\* Modification History
\* Last modified Wed Jun 14 13:21:37 ICT 2023 by sytd
\* Created Wed Jun 14 13:17:29 ICT 2023 by sytd
