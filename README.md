# Solidity-based Smart Contract

Source codes of solidity-based smart contract in our proposed BARM.

### 1.Environment

Remix: [http://remix.ethereum.org](http://remix.ethereum.org/)

Compiler: 0.4.23+commit.124ca40d

Language: Solidity

EVM Version: compiler default

Deployment Environment: Javascript VM

Featured Plugins:

1. Debugger
2. Deploy & Run Transactions
3. Solidity Compilier
4. Solidity Static Analysis
5. Solidity Unit Testing

Gas limit 3000000

===================================================================================================================

### 2 Steps

1. Open: [http://remix.ethereum.org](http://remix.ethereum.org/)
2. File explorer: AMST.sol
3. Choose: Environment(Solidity), Compiler (0.4.23+commit.124ca40d), EVM Version (0.4.23+commit.124ca40d)
4. Compile
5. Deploy
6. Invoke

===================================================================================================================

### 3 Related Test data 

HP: 0xca35b7d915458ef540ade6068dfe2f44e8fa733c (balance: 100 ether)

CSP: 0x14723a09acff6d2a60dcdf7aa4aff308fddc160c (balance: 100 ether)

AMS1: ["0xd4035d529c0d00f2a7eaf99b9a52279057c71ac238f3e5c04d984cd1532ce064","0x4a9bc21d0dfe3040fa3c116008f57599a93da506bec58314f7854ae049be16fa"]

AMS2: ["0x22b23d1e1e6881ff7fae736fbdb1eaf6de14e0b2ea3dbadfec36ba8aaa60cb43", "0x014b821f48622deb93cc6ab9af5084e3204e7591fe136a355abb944371220c94"]

et:1653091200

Contract address: 0x4b89842d89030c453be96b410a79139d2555be78812946f42900eda0e3d3741d

===================================================================================================================

### 4 Running results

On basis of the above testing data, we run the algorithms of Deploy, Submit, Query and Revoke in sequence. The running results are showed as follows.

Deploy transaction cost: 623265 gas execution cost: 433853 gas

Submit transaction cost: 133035 gas execution cost: 102739 gas

Query transaction cost: 33422 gas execution cost: 3510 gas

Revoke transaction cost: 29130 gas execution cost: 28348 gas