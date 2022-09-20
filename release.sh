#!/bin/bash

chart_name=$1

cr package ${chart_name}

cr upload

cr index

git add .

git commit -m "updating index"

git push

helm repo update curiosinauts

helm show chart curiosinauts/${chart_name}