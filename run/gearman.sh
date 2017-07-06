#!/bin/bash

docker run --name gearman --restart always -d -p 4730:4730 chenliujin/gearman:1.0.6
