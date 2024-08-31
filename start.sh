#!/bin/sh
echo "si le mandaste mecha despues del codigo voe escribiste esto capo: " $1
redis-server &
python3 -m flask run --host=0.0.0.0