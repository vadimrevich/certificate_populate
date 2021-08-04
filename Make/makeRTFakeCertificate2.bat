REM -t MACHINE -s CA -p ""
REM PASSWORD="Admin01234"
set city=Moscow
set certou="www.digicert.com"
set certo="PJSC Rostelecom"
set certcn="PJSC Rostelecom"
set certS="78 Saint Petersburg"
set certL="Saint Petersburg"
set certStreet="Dostoyevskogo street 15"
set certOGRN="1027700198767"
set certINN="7707049388"
set certname=RTFake1
set certsigname=GeoTrustFake1
set certpath=E:\yuden\.cert_data
set site="https://www.verisign.com/rpa"
MakeCert.exe -$ commercial -n C=RU,O=%certo%,CN=%certcn%,S=%certS%,L=%certL%,Street=%certStreet%,OGRN=%certOGRN%,INN=%certINN% -a sha256 -sky signature -l %site% -ic %certpath%\%certsigname%.cer -iv %certpath%\%certsigname%.pvk -cy authority -m 1200 -h 5 -len 1024 -eku 1.3.6.1.5.5.7.3.1,1.3.6.1.5.5.7.3.2,1.3.6.1.5.5.7.3.3,1.3.6.1.5.5.7.3.4,1.2.643.3.205 -pe -sv %certpath%\%certname%.pvk %certpath%\%certname%.cer
MakeCert.exe -$ commercial -n C=RU,O=%certo%,CN=%certcn%,S=%certS%,L=%certL%,Street=%certStreet%,OGRN=%certOGRN%,INN=%certINN% -a sha256  -sky signature -l %site% -ic %certpath%\%certsigname%.cer -iv %certpath%\%certsigname%.pvk -cy authority -m 1200 -h 5 -len 1024 -eku 1.3.6.1.5.5.7.3.1,1.3.6.1.5.5.7.3.2,1.3.6.1.5.5.7.3.3,1.3.6.1.5.5.7.3.4,1.2.643.3.205 -crl -pe -sv %certpath%\%certname%.pvk %certpath%\%certname%.crl
