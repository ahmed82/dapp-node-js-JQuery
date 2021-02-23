# dapp-node-js-JQuery


Build Daap from scratch
Installing & Running the Ethereum TestRPC
‘testrpc’ is a Node.js based Ethereum client for testing and development. It uses ethereumjs to simulate full client behavior and make developing Ethereum applications much faster. It also includes all popular RPC functions and features (like events) and can be run deterministically to make development a breeze.
https://www.npmjs.com/package/ethereumjs-testrpc
$ npm install -g ethereumjs-testrpc
$ testrpc
Web3
web3.js is a collection of libraries that allow you to interact with a local or remote ethereum node using HTTP, IPC or WebSocket.
https://web3js.readthedocs.io/en/v1.3.0/
•	Create contract.
•	Send transaction.
•	Get current block. Etc.
Installing Web3.js
Web3.js is the official Ethereum Javascript API. You use it to interact with your Ethereum smart contracts.
1-	create a package.json file, which will store project dependencies:
Initialize new node Js application by:
$ npm init

Hit enter through all the prompts. Next, run the following command to install web3.js:
$ npm install ethereum/web3.js –save
Or 
$ npm I web3 -save
Above dependency are causing issue, solution:
$ npm install  web3@0.20.1 -save
Create connection to the Smart contract.
<script>

        if (typeof web3 !== 'undefined') {
            web3 = new Web3(web3.currentProvider);
        } else {
            // set the provider you want from Web3.providers
            web3 = new Web3(new Web3.providers.HttpProvider("http://localhost:8545"));
        }
        // Previous if/else statement removed for brevity

        web3.eth.defaultAccount = web3.eth.accounts[0];
//The ABI from Remix -> run -> ABI
               var ResearchContract = web3.eth.contract(YOUR ABI);

        var Ahmedctr = ResearchContract.at('PASTE CONTRACT ADDRESS HERE');
        console.log(Ahmedctr);

    </script>


INFURA
Ethereum Node like Infura and Geth 
Using Web3.js to Connect & Interact with the Smart Contract
Going back to the index.html, at the bottom of the file we have an empty <script> tag. This is where we will write the necessary code to work with our smart contract.
Normally I would never use jQuery (I'm a big Angular fan), but this keeps things more simple.
In the head tags, we're already importing the Web3.js library, so now, let's use it to connect to our testrpc client:
This code comes directly from the Web3.js Github page.
It's saying that if web3 is not undefined, then we'll use that as our provider. If it's undefined (else), we can manually specify the provider ourselves.
You may be wondering, how would web3 be defined? Well, if you're using the Chrome extension MetaMask (which we will use later in this course) or an Ethereum browser like Mist, the provider is automatically injected.
Next, we have to specify a default ethereum account to use through the web3.eth.defaultAccount method:
The Create button was changed to Deploy on Remix
--

To integrate with Meta Mask 
Install Lite-server:
npm install lite-server --save-dev
