# FlappyChain 🕊️⛓️

FlappyChain is an on-chain version of the classic Flappy Bird game, built entirely in Solidity. Players interact with the game via blockchain transactions, controlling a bird that must avoid obstacles while aiming for the highest score. Every move is recorded on-chain, ensuring transparency, immutability, and fair competition.

## 🚀 Features
- Fully decentralized and transparent gameplay.
- Simple mechanics: jump by submitting transactions.
- Smart contract records scores and maintains a leaderboard.
- Gas-optimized to reduce transaction costs.
    
## 📜 How It Works
1. **Start a Game:** Call `startGame()` to begin. 
2. **Jump:** Call `jump()` to increase your score (must wait for the next block to jump again).
3. **Game Over:** Call `gameOver()` to finalize your score.
4. **Leaderboard:** The contract keeps track of the highest score and the top player.   

## 🔧 Smart Contract  
The core logic is implemented in Solidity, ensuring fairness and security. Players' progress is recorded on-chain, and the contract prevents spamming by enforcing block delay between jumps.

## 💡 Future Enhancements
- On-chain obstacle generation.
- NFT rewards for top players.
- Frontend integration for a better user experience.

## 📌 Deployment
FlappyChain can be deployed on any EVM-compatible blockchain. Just compile and deploy the contract using Remix, Hardhat, or Foundry.

## 🎮 Play Now!
Deploy the contract and start playing! Who will be the ultimate FlappyChain champion? 🏆
