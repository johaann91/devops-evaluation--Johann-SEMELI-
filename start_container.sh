#!/bin/bash
docker build -t ansible-target .
docker run -d -p 2222:22 --name target ansible-target
