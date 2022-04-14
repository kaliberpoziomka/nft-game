const { ethers } = require("hardhat");

const main = async () => {
  const Game = await ethers.getContractFactory("Game");
  const game = await Game.deploy(
    ["Tocha"],
    ["ipfs://QmSvrjhVPJ4tdjTpo3f4aGqrTyEZDCksrHJC1Q1hCdZKpz"],
    ["100"],
    ["35"]
  );
  await game.deployed();
  console.log("game deployed at address: ", game.address);
}

main()
  .then(() => {
    process.exit(0);
  })
  .catch((e) => {
    console.log(e);
    process.exit(1);
  })