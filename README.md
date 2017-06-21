Solidity-React test

Test Network: testrpc

Compile: truffle compile

Deploy: truffle migrate --reset

Console: truffle console

Get ETH accounts: web3.eth.accounts

Promise is returned after block is mined. Call is a query; does not modify state.


People.deployed().then(a=>a.addPerson("Huy", "N", 30))

People.deployed().then(a=>a.getPeople())

web3.toAscii(hex)
