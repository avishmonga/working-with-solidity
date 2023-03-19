var Contract = require('web3-eth-contract');
Contract.setProvider('ws://localhost:8545');
let contract_abi =[
  {
    "anonymous": false,
    "inputs": [
      {
        "indexed": true,
        "internalType": "address",
        "name": "sender",
        "type": "address"
      },
      {
        "indexed": false,
        "internalType": "string",
        "name": "message",
        "type": "string"
      },
      {
        "indexed": true,
        "internalType": "uint256",
        "name": "count",
        "type": "uint256"
      }
    ],
    "name": "messLog",
    "type": "event"
  },
  {
    "inputs": [],
    "name": "test",
    "outputs": [],
    "stateMutability": "nonpayable",
    "type": "function"
  }
]
let EventTest = new Contract(contract_abi , "0xDc64a140Aa3E981100a9becA4E685f962f0cF6C9")

let a = EventTest.methods.test().send({from:"0x976EA74026E726554dB657fA54763abd0C3a0aa9"},function(err,result){
  console.log("err*********", err)
  console.log("result&&&&&&&&&&&",result)
}).on('transactionHash', function(hash){
  console.log(hash)
})
.on('confirmation', function(confirmationNumber, receipt){
console.log("confirmationNumber",confirmationNumber  , receipt)})
.on('receipt', function(receipt){
  // receipt example
  console.log("receipt",receipt);
  
  
})
.on('error', function(error, receipt) { // If the transaction was rejected by the network with a receipt, the second parameter will be the receipt.
console.log("error",error)
});
EventTest.events.messLog(function(err,data){
  console.log("Count was incremented by address: " + data.logIndex);

  console.log("err",err)
  console.log("data",data)
})


