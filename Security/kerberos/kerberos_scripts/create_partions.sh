#!/bin/bash

for i in `cat hosts`
do
	ssh $i 'echo -e "o\nn\np\n1\n\n\nw"'
done
