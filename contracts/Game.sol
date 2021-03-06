// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

import "hardhat/console.sol";



/// @author kaliberpoziomka
/// @title Game




contract Game {

struct CharacterAttributes {
    uint256 characterIndex;
    string name;
    string imageURI;
    uint256 hp;
    uint256 maxHp;
    uint256 attackDamage;
}


CharacterAttributes[] defaultCharacters;

constructor (
    string[] memory characterNames,
    string[] memory characterImageURIs,
    uint256[] memory characterHp,
    uint256[] memory characterAttackDmg
) {
    // pushing all values to the CharacterAttributes
    for (uint256 i = 0; i < characterNames.length; i += 1) {
        defaultCharacters.push(CharacterAttributes({
            characterIndex: i,
            name: characterNames[i],
            imageURI: characterImageURIs[i],
            hp: characterHp[i],
            maxHp: characterHp[i],
            attackDamage: characterAttackDmg[i]
        }));

        CharacterAttributes memory c = defaultCharacters[i];
        console.log("Done initialazing %s, HP %s, img %s", c.name, c.hp, c.imageURI);

    }

}
    
}