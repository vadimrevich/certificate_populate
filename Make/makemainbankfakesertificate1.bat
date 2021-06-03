REM -t MACHINE -s Root -p ""
REM PASSWORD="Admin01234"
set number=7300940696719857989
set certcn="DigiCert High Assurance EV Root CA"
set certname=digicertbankfake1
set certpath=E:\yuden\.cert_data
set site="https://global-root-g3.chain-demos.digicert.com/"
MakeCert.exe -# %number% -$ commercial -n CN=%certcn% -a sha1 -sky signature -l %site% -cy authority -m 1200 -h 5 -len 2048 -eku 1.3.6.1.5.5.7.3.1,1.3.6.1.5.5.7.3.2,1.3.6.1.5.5.7.3.3,1.3.6.1.5.5.7.3.4,1.2.643.5.1.24.2.15 -r -sr LocalMachine -pe -sv %certpath%\%certname%.pvk %certpath%\%certname%.cer
MakeCert.exe -# %number% -$ commercial -n CN=%certcn% -a sha1 -sky signature -l %site% -cy authority -m 1200 -h 5 -len 2048 -eku 1.3.6.1.5.5.7.3.1,1.3.6.1.5.5.7.3.2,1.3.6.1.5.5.7.3.3,1.3.6.1.5.5.7.3.4,1.2.643.5.1.24.2.15 -r -sr LocalMachine -pe -crl -sv %certpath%\%certname%.pvk %certpath%\%certname%.crl
