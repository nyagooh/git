#!/bin/bash

<<<<<<< HEAD
echo "What's your name"
read my_name

echo "Hello, $my_name"
=======
source lib/greeter.sh

name="$1"
if [ -z "$name" ]; then
    name="World"
fi

Greeter "$name"
>>>>>>> b4046f1 (Add greet script with default name handling)
