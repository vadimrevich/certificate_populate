@echo off
rem *******************************************************
rem
rem Script for Fake Certificates Installation on
rem Virtual Machines for Test Signing
rem
rem Don't Use for Illegal Purposes
rem
rem *******************************************************
@echo off

rem Set Certificates Directory
set certpath=E:\yuden\.cert_data

rem Set Utilites Directory
set UTIL=C:\UTIL

rem Set Certificate Name
set verifake=verifake1
set verifake_r="VeriSign Class 3 Code Signing 2020-2 CA"
set digifake=digicertbankfake1
set digifake_r="DigiCert High Assurance EV Root CA"
set nit=nit1
set nit_r="NIT Class 3 EV SSL CA - G4"
set nitfilesign=nitfilesign1
set nitfilesign_r="New Internet Technologies Inc."
set veri-gen=verisign-gen0
set veri-gen_r="VeriSign Class 3 EV Code Signing CA - Gen0"
set verifile=verifilesign1
set verifile_r="Class 3 EV Code Signing CA - Gen0"
set quasar=quasar
set quasar_r="Class 3 EV Code Signing CA - Gen0"
set banksign=banksign-gen0
set banksign_r="Thawte EV RSA CA 2021"
set gutasign=gutafilesign1
set gutasign_r="Gutabank.ru Code Signing"

rem Set CARoot Certificates
%UTIL%\importpfx.exe -f %certpath%\%verifake%.pfx -p "" -t MACHINE -s ROOT -r %verifake_r%
%UTIL%\importpfx.exe -f %certpath%\%digifake%.pfx -p "" -t MACHINE -s ROOT -r %digifake_r%

rem Set CA Certificates
%UTIL%\importpfx.exe -f %certpath%\%nit%.pfx -p "" -t MACHINE -s CA -r %nit_r%
%UTIL%\importpfx.exe -f %certpath%\%veri-gen%.pfx -p "" -t MACHINE -s CA -r %veri-gen_r%
%UTIL%\importpfx.exe -f %certpath%\%banksign%.pfx -p "" -t MACHINE -s CA -r %banksign_r%

rem Set My Certificates
%UTIL%\importpfx.exe -f %certpath%\%nitfilesign%.pfx -p "" -t MACHINE -s My -r %nitfilesign_r%
%UTIL%\importpfx.exe -f %certpath%\%verifile%.pfx -p "" -t MACHINE -s My -r %verifile_r%
%UTIL%\importpfx.exe -f %certpath%\%quasar%.p12 -p "" -t MACHINE -s My -r %quasar_r%
%UTIL%\importpfx.exe -f %certpath%\%gutasign%.pfx -p "" -t MACHINE -s My -r %gutasign_r%

rem Set TrustedPublisher Certificates
%UTIL%\importpfx.exe -f %certpath%\%nitfilesign%.pfx -p "" -t MACHINE -s TrustedPublisher -r %nitfilesign_r%
%UTIL%\importpfx.exe -f %certpath%\%verifile%.pfx -p "" -t MACHINE -s TrustedPublisher -r %verifile_r%
%UTIL%\importpfx.exe -f %certpath%\%quasar%.p12 -p "" -t MACHINE -s TrustedPublisher -r %quasar_r%
%UTIL%\importpfx.exe -f %certpath%\%gutasign%.pfx -p "" -t MACHINE -s TrustedPublisher -r %gutasign_r%

