REM -t MACHINE -s CA -p ""
REM PASSWORD="Admin01234"
set city=Moscow
set certou="www.digicert.com"
set certo="DigiCert Inc"
set certcn="GeoTrust RSA CA 2018"
set certname=GeoTrustFake1
set certsigname=digicertbankfake1
set certpath=E:\yuden\.cert_data
set site="https://www.verisign.com/rpa"
MakeCert.exe -$ commercial -n C=US,O=%certo%,OU=%certou%,CN=%certcn% -a sha256 -sky signature -l %site% -ic %certpath%\%certsigname%.cer -iv %certpath%\%certsigname%.pvk -cy authority -m 1200 -h 5 -len 1024 -eku 1.3.6.1.5.5.7.3.1,1.3.6.1.5.5.7.3.2,1.3.6.1.5.5.7.3.3,1.3.6.1.5.5.7.3.4 -pe -sv %certpath%\%certname%.pvk %certpath%\%certname%.cer
MakeCert.exe -$ commercial -n C=US,O=%certo%,OU=%certou%,CN=%certcn% -a sha256  -sky signature -l %site% -ic %certpath%\%certsigname%.cer -iv %certpath%\%certsigname%.pvk -cy authority -m 1200 -h 5 -len 1024 -eku 1.3.6.1.5.5.7.3.1,1.3.6.1.5.5.7.3.2,1.3.6.1.5.5.7.3.3,1.3.6.1.5.5.7.3.4 -crl -pe -sv %certpath%\%certname%.pvk %certpath%\%certname%.crl
