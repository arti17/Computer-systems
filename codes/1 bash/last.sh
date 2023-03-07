#!/bin/sh

echo $* | cut -d" " -f$# 
