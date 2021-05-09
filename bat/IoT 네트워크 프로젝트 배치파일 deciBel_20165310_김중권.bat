@echo on
:_loop
set /a dB=%random% %%100
mosquitto_pub -t dcb -m "{\"dB\" : %dB%}"
timeout /t 1 /nobreak > nul
goto _loop