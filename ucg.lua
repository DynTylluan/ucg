io.write("You are dying. 1=live\n");local input = io.read()if input:match("^%s*1%s*$") then print("You won")else print("You died")end