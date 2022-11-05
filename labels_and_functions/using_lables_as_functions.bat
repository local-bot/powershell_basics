@echo off

goto :main

:some_other_function
    echo "this function does something else than main" 
goto :eof rem label ends here

:main
    echo "this is inside main label"
    call :some_other_function
    echo "End of main function"
goto :eof
