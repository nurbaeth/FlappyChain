// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FlappyChain {
    struct Player {
        uint256 score;
        uint256 lastJumpBlock;
        bool isPlaying;
    }

    mapping(address => Player) public players;
    uint256 public highScore;
    address public topPlayer;

    event GameStarted(address indexed player);
    event Jump(address indexed player, uint256 score);
    event GameOver(address indexed player, uint256 finalScore);

    function startGame() external {
        require(!players[msg.sender].isPlaying, "Game already in progress");
        players[msg.sender] = Player(0, block.number, true);
        emit GameStarted(msg.sender);
    }

    function jump() external {
        require(players[msg.sender].isPlaying, "Start a game first");
        require(block.number > players[msg.sender].lastJumpBlock, "Wait for next block");
        
        players[msg.sender].score++;
        players[msg.sender].lastJumpBlock = block.number;
        
        emit Jump(msg.sender, players[msg.sender].score);
    }

    function gameOver() external {
        require(players[msg.sender].isPlaying, "Game not started");
        
        uint256 finalScore = players[msg.sender].score;
        players[msg.sender].isPlaying = false;
        
        if (finalScore > highScore) {
            highScore = finalScore;
            topPlayer = msg.sender;
        }
        
        emit GameOver(msg.sender, finalScore);
    }
}
