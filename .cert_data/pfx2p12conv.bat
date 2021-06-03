@echo off
"%USERPROFILE%\bin\keytool64.bat" -importkeystore -destkeystore %1.p12 -deststoretype pkcs12 -srckeystore %1.pfx
