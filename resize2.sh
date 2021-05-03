#!/bin/bash
                                                                                                        :

ffmpeg -f concat -safe 0 -i $1 -c copy video_720.mp4

rm $1
