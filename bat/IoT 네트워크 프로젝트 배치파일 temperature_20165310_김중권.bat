@echo on
:_loop
set /a tmp=%random% %%40+1
mosquitto_pub -t tmp -m "{\"temp\" : %tmp%}"
timeout /t 5 /nobreak > nul
goto _loop