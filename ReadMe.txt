Tokenization Smart Contract
This project implements a tokenization system using Solidity, allowing for the creation and management of a custom ERC-20 token (ART) with features for auctions related payments. 
The contract is built using OpenZeppelin's ERC-20 implementation and is designed to handle token minting, price differences, and refunds in the context of an auction system.


contents
Deposit.sol
Artoken.sol
Bid.sol


Features
ERC-20 Token: Implements the standard ERC-20 token interface with additional functionality.

Auction System: Supports tokenization of assets with a minimum preset value and current price.

Escrow Payments: Manages payments between buyers and escrow accounts.

Refund Mechanism: Allows refunds of initial payments if the auction is unsuccessful.

Price Difference Collection: Collects additional tokens based on the difference between the current price and the minimum preset value.


Contract Overview
Key Variables
minimumPresetValue: The minimum value set for the auction.

currentPrice: The current price of the asset.

initialPayment: The initial payment made by the buyer.

buyerAddress: The address of the buyer.

escrowAddress: The address of the escrow account.

successful: A boolean indicating whether the auction was successful.


Key Functions
mint(address to, uint256 amount): Mints new tokens to the specified address.

collectDifference(): Collects additional tokens based on the price difference between currentPrice and minimumPresetValue.

releasetokens(): Releases the initial payment back to the buyer if the auction is unsuccessful.


License
This project is licensed under the MIT License. See the LICENSE file for details.

Contributing
Contributions are welcome! Please open an issue or submit a pull request for any improvements or bug fixes.
