NAMESPACE ExampleClassLib
    CLASS Belt
       METHOD PUBLIC RunForward ; END_METHOD
       METHOD PUBLIC RunBackward ; END_METHOD
       METHOD PUBLIC Stop ; END_METHOD
    END_CLASS
    
    CLASS ABSTRACT Conveyor
       METHOD PUBLIC ABSTRACT Run END_METHOD
       METHOD PUBLIC ABSTRACT Stop END_METHOD
    END_CLASS
 
    CLASS OneBeltConveyor EXTENDS Conveyor
       VAR PUBLIC
          belt : REF_TO Belt;
       END_VAR
 
       METHOD PUBLIC OVERRIDE Run
         belt^.RunForward();
       END_METHOD
 
       METHOD PUBLIC OVERRIDE Stop
          belt^.Stop();
       END_METHOD
    END_CLASS
 
    CLASS TwoBeltConveyor EXTENDS Conveyor
       VAR PUBLIC
          belt1 : REF_TO Belt;
          belt2 : REF_TO Belt;
       END_VAR
 
       METHOD PUBLIC OVERRIDE Run
          belt1^.RunForward();
          belt2^.RunBackward();
       END_METHOD
 
       METHOD PUBLIC OVERRIDE Stop
          belt1^.Stop();
          belt2^.Stop();
       END_METHOD
    END_CLASS
 END_NAMESPACE