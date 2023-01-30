@echo on
echo ethereum　server bat
echo dir path : %1

geth ^
--networkid 15 ^
--datadir test ^
--snapshot=false ^
--ws ^
--ws.api personal,eth,net,web3,admin,txpool,miner ^
--ws.origins * ^
--allow-insecure-unlock ^
--http ^
--http.corsdomain "*" ^
--http.api web3,eth,debug,personal,net,admin,miner ^
--vmdebug ^
--http.vhosts "*" ^
console

pause