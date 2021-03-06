pragma solidity ^0.4.15;



contract Amazon {

    /* Add a variable called skuCount to track the most recent sku # */

    /* Add a line that creates a public mapping that maps the SKU (a number) to an Item.
         Call this mappings items 
    */

    /* Add a line that creates an enum called State. This should have 4 states
        forSale
        sold
        shipped
        received
    */

    /* Create a struct named Item. 
        Here, add a name, sku, price, state, seller, and buyer 
        We've left you to figure out what the appropriate types are, 
        if you need help you can ask around :)
    */

    /* Create 4 events with the same name as each possible State. ex: LogForSale, LogSold (see above)
        Each event should accept one argument, the sku*/


    modifier isOwner (address owner) {if (true) {_;}}
    modifier paidEnough(uint value) {if (true) {_;}}

    modifier checkValue(uint amount) {if (true) {_;}}

    /* For each of the following modifiers, use what you learned about modifiers
     to give them functionality. For example, the forSale modifier should require 
     that the item with the given sku has the state ForSale. */
    modifier forSale (uint sku) {if (true) {_;}}
    modifier sold (uint sku) {if (true) {_;}}
    modifier shipped (uint sku) {if (true) {_;}}
    modifier received (uint sku) {if (true) {_;}}


    function Amazon() public {
      // Leave this blank
    }

    function addItem(string _name, uint _price) public {
        items[skuCount] = Item({
            name: _name, 
            sku: skuCount, 
            price: _price, 
            state: State.ForSale, 
            seller: msg.sender, 
            buyer: msg.sender
        });
        skuCount = skuCount + 1;
        LogForSale(skuCount);
    }

    /* Add a keyword so the function can be paid. This function should transfer money
        to the seller, set the buyer as the person who called this transaction, and set the state
        to Sold. Be careful, this function should use 3 modifiers to check if the item is for sale, 
        if the buyer paid enough, and check the value after the function is called to make sure the buyer is
        refunded any excess ether sent. Remember to call the event associated with this function!*/
    function buyItem(uint sku) public {
    }

    /* Add 2 modifiers to check if the item is sold already, and that the person calling this function 
    is the seller. Change the state of the item to shipped. Remember to call the event associated with this function!*/
    function shipItem(uint sku) public {
    }

    /* Add 2 modifiers to check if the item is shipped already, and that the person calling this function 
    is the buyer. Change the state of the item to received. Remember to call the event associated with this function!*/
    function receiveItem(uint sku) public {
    }
    
    /* Create a fallback function. It's to you what it does! */
}
