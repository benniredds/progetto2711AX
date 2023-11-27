NAMESPACE ExampleClassLib.Entry
    FUNCTION_BLOCK EquipmentModule1 // Wrapper FB
       VAR_INPUT
          start : BOOL;
          stop : BOOL;
       END_VAR
       VAR // OK, classes can be instantiated in VAR
          belt1, belt2, belt3 : Belt;
          feed                : OneBeltConveyor;
          transport           : TwoBeltConveyor;
          init                : BOOL := TRUE;
       END_VAR
 
       IF init THEN
          init := FALSE;
          feed.belt := REF(belt1);
          transport.belt1 := REF(belt2);
          transport.belt2 := REF(belt3);
       END_IF;
 
       IF start AND NOT stop THEN
          feed.Run();
          // wait 10s
          transport.Run();
       ELSIF stop THEN
          transport.Stop();
          // wait 10s
          feed.Stop();
       END_IF;
    END_FUNCTION_BLOCK
 END_NAMESPACE