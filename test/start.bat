@echo on
echo ethereum　server bat
echo dir path : %1

geth ^
--networkid 15 ^
--datadir enter ^
--snapshot=false ^
--ws ^
--ws.api personal,eth,net,web3,admin,txpool,miner ^
--ws.origins * ^
--allow-insecure-unlock ^
--http ^
--http.corsdomain="https://remix.ethereum.org" ^
--http.api web3,eth,debug,personal,net,admin,miner ^
--vmdebug ^
console

pause