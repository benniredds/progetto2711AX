USING AxUnit;
USING myLibrary;

NAMESPACE TestSomma

    {Test(4,4,8)}
    {Test(2,4,8)}
    {Test(1,3,4)}
    {Test(4,4,15)}
    FUNCTION mySomma_test
        
        VAR_INPUT
            input1 : INT;
            input2 : INT;
            exp : INT;
        END_VAR
        
        VAR_TEMP
            risultato : INT;
        END_VAR

        risultato := mySomma(input1,input2);

        AxUnit.Assert.Equal(expected := exp, actual := risultato);

    END_FUNCTION

END_NAMESPACE