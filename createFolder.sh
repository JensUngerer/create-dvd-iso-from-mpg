#!/bin/bash

export VIDEO_FORMAT=PAL
dvdauthor -o ./$1 -t ./$1.VOB && rm ./$1.VOB
