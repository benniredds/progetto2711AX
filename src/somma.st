NAMESPACE myLibrary

FUNCTION mySomma : INT
    VAR_INPUT
        a : INT;
        b : INT;
    END_VAR

    VAR
        {S7.extern=ReadOnly}
        myStat : REAL;
    END_VAR


    mySomma := a + b;

    myStat := mySomma + 7;

END_FUNCTION

END_NAMESPACE