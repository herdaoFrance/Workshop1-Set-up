//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
// Ici vous pouvez ajouter votre contribution en commentaire

//solene

// Coucou Kelly 

// Définition du contrat NFT
contract NFT {
    // Identifiant unique de chaque jeton
    uint256 public tokenId;
    
    // Propriétaire du jeton
    address public owner;
    
    // Constructeur du contrat qui assigne le propriétaire et l'identifiant unique au jeton
    constructor(uint256 _tokenId, address _owner) public {
        tokenId = _tokenId;
        owner = _owner;
    }
    
    // Fonction pour transférer la propriété d'un jeton à un autre compte
    function transfer(address _to) public {
        // Vérifier que l'appelant est le propriétaire actuel du jeton
        require(msg.sender == owner, "Seul le propriétaire peut transférer un jeton");
        
        // Transférer la propriété du jeton à l'adresse spécifiée
        owner = _to;
    }
}
