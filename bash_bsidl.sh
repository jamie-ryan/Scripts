#!/bin/bash

nohup nice ssw < $1 >& $2 &
