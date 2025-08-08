// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// please note that this is a reference to a template of a perfect ERC20 contract hosted on Openzeppelin (OZ) github:
/// it remains mandatory to have a look into : https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol
/// By the way this import is not ok, since it is a particular syntax handled for foundry project (which uses a package manager to retrieve the OZ lib)
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

/// another alternative who be to import directly the ERC20 folder in your root : https://github.com/OpenZeppelin/openzeppelin-contracts/tree/master/contracts/token/ERC20
/// import "./ERC20/ERC20.sol";

/// or use this syntax if you're using Remix browser IDE :
///import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

/// your token inherits all properties of a classical ERC20 (mint, burn, totalSupply, transfer, approve etc...)
contract GLDToken is ERC20 {
    constructor(uint256 initialSupply)
        /// customize your own token in the constructor
        ERC20(
            "<Modify here with the description of your token>",
            "<Add here the symbol of your token eg : ETH, SOL, etc...>"
        )
    {
        _mint(msg.sender, initialSupply);
    }

    /// if you need to override a particular function inherited from ERC20 you can do it in your contract.
    /// https://docs.soliditylang.org/en/latest/contracts.html

    /// or for sure create your own states and functions which belong to your own token
    function sayHello() public view returns (string memory) {
        return "hello beau gosse!";
    }

    uint256 s_coffeeCounter;

    function sendACoffee() public {
        s_coffeeCounter++;
    }

    function getCoffeeCounter() public view returns (uint256) {
        return s_coffeeCounter;
    }
}
