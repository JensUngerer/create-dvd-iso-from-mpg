#!/bin/bash

genisoimage -dvd-video -o ./$1.iso ./$1 && rm -rf ./$1
