@echo off
xc8 --chip=16F877A --opt=1 --warn=3 --std=c99 -I./include main.c
pause
