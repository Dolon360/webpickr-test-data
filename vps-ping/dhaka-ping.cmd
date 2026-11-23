@echo off
rem Ping check used for the WebPickr Dhaka VPS tests (Windows Command Prompt).
rem Sends 10 small packets and prints each round trip plus minimum, maximum and average.
rem It changes nothing on your PC or the server.
rem Usage: dhaka-ping.cmd SERVER_IP
%SystemRoot%\System32\ping.exe -n 10 %1
