//Extra_Opgave_7_1_Casus_Geldwisselapparaat

//Opgave_A
/*
Create code that will receive a number.
 This number represents an amount of money.
 The currency will be an input()
 Output should be the amount of coins you need
 in that specific currency.
 NB Euros have a different coin size to Gilders.
 Use an array to have a list of all the different
 coin sizes.
 Work with the smallest increment, so cents
 1 euro == 100 cents
 1 giler == 100 cents
 This helps prevent problems with rounding
 */


/*
Pseudo:
 - get int amount
 - check to see if amount is bigger than largest coinsize[i] 
 - if bigger: divide amount by largest coinsize[i] (floor)
 - assign to variable number of division (how many coins)
 - amount -= coinsize[i] * number of division
 - repeat with new amount
 
 
 */
int amount =  697;

int[] coinSize = {1, 2, 5, 10, 20, 50, 100, 200}; //this is the Euro Coin Size array
//int[] coinSize = {1, 5, 10, 25, 100, 250}; //guldens/gilders
//int[] coinSize = {50,100,200}; // testline
println("Het bedrag is:", amount);
for (int i = coinSize.length-1; i>=0; i--) {
  //println(coinSize[i]); //testline
  if (amount >= coinSize[i]) {
    int div = amount/coinSize[i];
    println("munt ",coinSize[i],":", div);
    amount -= coinSize[i]*div;
  } else {
    println("munt ",coinSize[i],": 0");
  }
}



//println(max(coinSize)); //testline
