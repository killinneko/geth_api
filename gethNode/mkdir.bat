echo ethereum　makedir
echo dir path : %1
pause

mkdir %1

copy genesis.json enter

geth ^
--networkid 15 ^
--datadir %1 ^
init %1/genesis.json