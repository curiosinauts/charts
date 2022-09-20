#!/bin/bash

cr package $1

cr upload

cr index

git add .

git commit -m "updating index"

git push

helm repo update curiosinauts