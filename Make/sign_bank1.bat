REM -t MACHINE -s My -p ""
REM -t MACHINE -s TrustedPublisher -p ""
REM PASSWORD="Admin01234"
set certname=gutafilesign1
set certcn="Gutabank.ru Code Signing"
set certpath=E:\yuden\.cert_data
set site="https://global-root-g3.chain-demos.digicert.com/"
set sigcertname=banksign-gen0
MakeCert.exe -$ commercial -n CN=%certcn% -a sha1 -sky signature -l %site% -ic %certpath%\%sigcertname%.cer -iv %certpath%\%sigcertname%.pvk -cy end -m 1200 -h 5 -len 1024 -eku 1.3.6.1.5.5.7.3.3,1.2.643.5.1.24.2.15 -pe -sv  %certpath%\%certname%.pvk %certpath%\%certname%.cer
MakeCert.exe -$ commercial -n CN=%certcn% -a sha1 -sky signature -l %site% -ic %certpath%\%sigcertname%.cer -iv %certpath%\%sigcertname%.pvk -cy end -m 1200 -h 5 -len 1024 -eku 1.3.6.1.5.5.7.3.3,1.2.643.5.1.24.2.15 -pe -crl -sv  %certpath%\%certname%.pvk %certpath%\%certname%.crl
