@echo off
rem TTFB check used for the WebPickr cache plugin tests (Windows Command Prompt).
rem Requests the page 5 times and prints time to first byte and total time.
rem It only reads the page; it changes nothing on your PC or the server.
rem Usage: ttfb.cmd https://example.com/your-page/
for /L %%i in (1,1,5) do @curl -o NUL -s -w "TTFB %%{time_starttransfer}s total %%{time_total}s\n" "%~1"
