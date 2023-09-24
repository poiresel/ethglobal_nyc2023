# HOA DAO for ETHNY 2023

Built off of the Scaffold-Eth2 Framework

⚙️ Built using NextJS, RainbowKit, Hardhat, Wagmi, and Typescript.

- ✅ **Contract Hot Reload**: Your frontend auto-adapts to your smart contract as you edit it.
- 🔥 **Burner Wallet & Local Faucet**: Quickly test your application with a burner wallet and local faucet.
- 🔐 **Integration with Wallet Providers**: Connect to different wallet providers and interact with the Ethereum network.

![Debug Contracts tab](https://github.com/scaffold-eth/scaffold-eth-2/assets/55535804/1171422a-0ce4-4203-bcd4-d2d1941d198b)

## Requirements

Before you begin, you need to install the following tools:

- [Node (v18 LTS)](https://nodejs.org/en/download/)
- Yarn ([v1](https://classic.yarnpkg.com/en/docs/install/) or [v2+](https://yarnpkg.com/getting-started/install))
- [Git](https://git-scm.com/downloads)

## Quickstart

To get started with Scaffold-ETH 2, follow the steps below:

1. Clone this repo & install dependencies

```
git clone https://github.com/scaffold-eth/scaffold-eth-2.git
cd scaffold-eth-2
yarn install
```

2. Run a local network in the first terminal:

```
yarn chain
```

This command starts a local Ethereum network using Hardhat. The network runs on your local machine and can be used for testing and development. You can customize the network configuration in `hardhat.config.ts`.

3. On a second terminal, deploy the test contract:

```
yarn deploy
```

This command deploys a test smart contract to the local network. The contract is located in `packages/hardhat/contracts` and can be modified to suit your needs. The `yarn deploy` command uses the deploy script located in `packages/hardhat/deploy` to deploy the contract to the network. You can also customize the deploy script.

4. On a third terminal, start your NextJS app:

```
yarn start
```

Visit your app on: `http://localhost:3000`. You can interact with your smart contract using the contract component or the example ui in the frontend. You can tweak the app config in `packages/nextjs/scaffold.config.ts`.

Run smart contract test with `yarn hardhat:test`

- Edit your smart contract `YourContract.sol` in `packages/hardhat/contracts`
- Edit your frontend in `packages/nextjs/pages`
- Edit your deployment scripts in `packages/hardhat/deploy`


# Scroll Sepolia Deploys

HOA DAO + Slogan Proposal

deploying "SloganProposal" (tx: 0x029109a6d8b2619078f24fb08bb91e1ed861f8b776eb6b3f7091ef9                9ebae4e07)...: deployed at 0x7FC5258b8659014a3E95Daf8C242E7B2a868dc2e with 512556 gas
deploying "WrappedGHOToken" (tx: 0xa92e0f3952fd021f64313d04dded525bd42f995304864f6b91b2a9173d9e7b1e)...: deployed at 0x6d96A3c560C85e20615a30f938849b780627B6F1 with 2337796 gas
deploying "HOAGovernanceToken" (tx: 0xf12c762b443028ac370903e540683de34fbf886939e587e8b6f84de254de4af5)...: deployed at 0x1808b9B6D1aE63a1BDbC6db01C1656C4c2708BeE with 2143327 gas
deploying "Timelock" (tx: 0x0003ce8e1434034a22a5b298fb730d2ed23fd7842a70af154914a2419f6a22e8)...: deployed at 0xC8FC93979Dc7fEdb6404B4DAaF7e81c621c20e10 with 1912033 gas
deploying "HOAGovernor" (tx: 0xa2db59ee9d681298a71ac6cf86d6d0a56d3228d11e952b26e868b52ed8fac4b1)...: deployed at 0xe9B1Fe58299868Ea93F19e660b14E14f9157aFE5 with 4855067 gas

Snapshot for ths proposal

The strategy goes cross chain across both Sepolia and Sepolia Scroll to sum up USDC tokens.
https://demo.snapshot.org/#/hoadao.eth/proposal/0x7632709ed21adc7cd89387dca9f2a43f2aa33dbba168ae65a62e374c53302bdd
