$name = Read-Host -Prompt "Enter name: "

Function say_hi($name) {

    if($name){
        Write-Host "hi [$name]!" 
    }
    else {
        Write-Warning -Message "No input!"
    }

}

# test 1
say_hi 

# test 2
say_hi $name