#!/bin/bash
for i in $(ls -d */); do 
	cd $i
	name=$(basename "$i")
	docker build -t pardhu72/$name:v1 .
	docker push pardhu72/$name:v1
	cd ..
done

