// require("dotenv").config()

// const { ethers } = require("ethers");

// const {ethers}=require("ethers")
console.log("App.js is running")
let contract;
let provider;
let signer;
const contract_address="0x45cb1fb9ff46c277f8ea4a4f9fcc7468ee305a0f"
const cont_abi=[
    "function deposit() public payable",
    "function getBalance() external view returns(uint256)",
    "event Deposit(address user, uint256 amount)"
]

document.getElementById("connectWall").onclick=async function(){
    if(!window.ethereum){
        alert("Please install Metamask")
        return
    }

    provider=new ethers.BrowserProvider(window.ethereum)
    signer=await provider.getSigner()

    const address= await signer.getAddress();
    document.getElementById("account").innerText=
    "Connected account: "+address;

    contract = new ethers.Contract(
        contract_address,
        cont_abi,
        signer
    );
};

document.getElementById("getBal").onclick=async function(){
    if(!contract){
        alert("Please connect your wallet first")
        return;
    }
    const network = await provider.getNetwork();
    console.log("Connected to network: ",network.name);

    const code=await provider.getCode(contract_address);
    console.log("Contract code: ",code);
    const balance = await contract.getBalance();
    document.getElementById("balance").innerText=
    "Contract Balance: "+ethers.formatUnits(balance,18)+" ETH";
};

document.getElementById("depositBtn").onclick=async function(){
    const ethAmount=document.getElementById("depositAmount").value;
    if(!ethAmount || ethAmount<=0){
        alert("Enter a valid amount")
        return;
    }
    document.getElementById("txnstatus").innerText="Initiating transaction...";
    try{
        const txn=await contract.deposit({
            value: ethers.parseEther(ethAmount)
        });
        document.getElementById("txnstatus").innerText="Transaction sent. Waiting for confirmation...";
        await txn.wait();
        document.getElementById("txnstatus").innerText="Transaction confirmed! Txn Hash: "+txn.hash;
    }catch(err){
        console.error(err);
        document.getElementById("txnstatus").innerText="Transaction failed: "+err.message;  
    }
};
