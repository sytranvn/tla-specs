-------------------------------- MODULE Jugs --------------------------------

EXTENDS Integers
VARIABLES small, big

TypeOK == /\ small \in 0..3
          /\ big \in 0..5
       
       
Init == /\ small = 0
        /\ big = 0

FillSmall == /\ small' = 3
             /\ big' = big
        
FillBig ==  /\ small' = small
            /\ big' = big
            
EmptyBig == /\ small' = small
            /\ big' = 0

EmptySmall ==   /\ small' = 0
                /\ big' = big          

SmallToBig == IF big + small <= 5
              THEN  /\ big' = big + small
                    /\ small' = 0
              ELSE  /\ big' = 5
                    /\ small' = small + big - 5
                    
BigToSmall == IF big + small <= 3
              THEN  /\ big' = 0
                    /\ small' = big + small
              ELSE  /\ big' = small + big - 3
                    /\ small' = 3
                    

Next == \/ FillSmall
        \/ FillBig
        \/ EmptySmall
        \/ EmptyBig
        \/ SmallToBig
        \/ BigToSmall 

=============================================================================
\* Modification History
\* Last modified Wed Jun 14 13:54:42 ICT 2023 by sytd
\* Created Wed Jun 14 13:41:57 ICT 2023 by sytd
