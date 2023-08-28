# Polygon-Module 1: Building with Polygon Bridge

Deploying an NFT collection on Ethereum and mapping it to Polygon, while also using an image generation tool like DALL-E 2 or Midjourney for the NFT images, is an exciting project. Here's a step-by-step guide on how to achieve this:

## Getting Started

### Step 1: Generating the NFT Collection

Use Lexica to generate a 5-item NFT collection. Store the generated NFTs on IPFS and copy the URLs of the IPFS content. Upload the NFT metadata to Pinata Cloud for hosting.

### Step 2: Create and Test the NFT Contract on Ethereum

Create an ERC-721 smart contract on the Ethereum network. Test the contract to ensure it functions as expected.

### Step 3: Set up the Polygon Network

Prepare the environment to deploy and interact with the Polygon network.

### Step 4: Deploy the NFT Contract on Polygon

Deploy the ERC-721 smart contract on the Polygon network.

### Step 5: Map the NFT Collection to Polygon

Associate the NFT collection deployed on Ethereum with the corresponding contract deployed on Polygon. This allows the NFTs to be used on both networks.

### Step 6: Transfer Assets via the Polygon Bridge

Use the Polygon Bridge to transfer the NFT assets from the Ethereum network to the Polygon network.

## Executing Program

To run the project, follow these steps:

1. Clone the repository and open the terminal.

2. Install the required dependencies by running the command:

```shell
npm install or npm i
```

3. After installing the dependencies, run the test file using the following command:

```shell
npx hardhat test
```

## Deploying the ERC721A Contract

Before deploying, rename the file ".env.example" to ".env" and provide your wallet private key where required, i.e., `PRIVATE_KEY='your wallet private key'`. To deploy the ERC721 contract to the Goerli Ethereum Testnet, execute the following command:

```shell
npx hardhat run scripts/deploy.js --network goerli
```

**NOTE:** After deploying, an address will be generated. Copy that address into `contractAddress.js` (stored in the metadata folder) and also in `batchMint.js` (stored in the scripts folder) as well as in `approveDeposit.js`.

## Batch Mint NFTs

To batch-mint NFTs using the deployed ERC721 contract, run the following command:

```shell
npx hardhat run scripts/batchMint.js --network goerli
```

The script will mint the specified number of NFTs and assign them to your address.

## Approve and Deposit NFTs

To approve and deposit the minted NFTs from Ethereum to the  network using the FxPortal Bridge, run the following commands:

```shell
npx hardhat run scripts/approveDeposit.js --network goerli
```

## Author

Sangam Kumar - Chandigarh University

## Video Walkthrough

https://www.loom.com/share/9eac62de25eb41ccb353ef93cd0347d0?sid=d77e021d-bc7e-4ff9-b26f-bad8632c3abc

## License

This project is licensed under the [MIT License](LICENSE).

You can make a copy of the project to use for your own purposes.
