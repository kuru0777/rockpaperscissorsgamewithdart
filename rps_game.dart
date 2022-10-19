import 'dart:math';
import 'dart:io';



enum move1 { rock, paper, scissors }

void main(){
  Map<move1,String> game={
    move1.values[0]:'rock',
    move1.values[1]:'paper',
    move1.values[2]:'scissors'
  };
  int gp=0; //gp is mean gamer's point.
      int pp=0; //pp is mean pc's point.
  while(true){
    final _random = new Random();
    var keys = game.keys.toList();
    var element = keys[_random.nextInt(keys.length)];
    var r = (game[element]);
    String c=r.toString();
    

      print("Type a move (Only rock,paper,scissors): ");
      var move2 = stdin.readLineSync();
      print("Your Move: "+(move2 ?? ""));
      

    
     if(c=="rock" && move2=="rock" || c=="paper" && move2=="paper" || c=="scissors" && move2=="scissors"){
     print("PC:$r YOU:$move2 DRAW!");
     }
     else if(c=="rock" && move2=="paper"){
      gp++;
      print("gp=$gp");
      print("pp=$pp");
     print("PC:$r YOU:$move2  U GOT A SCORE! ");
     }
     else if(c=="rock" && move2=="scissors"){
      pp++;
      print("gp=$gp");
      print("pp=$pp");
     print("PC:$r Sen:$move2  U LOST! ");
     }
     else if(c=="paper" && move2=="scissors"){
      gp++;
      print("gp=$gp");
      print("pp=$pp");
     print("PC:$r Sen:$move2  U GOT A SCORE! ");
     }
     else if(c=="paper" && move2=="rock"){
      pp++;
      print("gp=$gp");
      print("pp=$pp");
     print("PC:$r YOU:$move2  U LOST! ");
     }
     else if(c=="scissors" && move2=="rock"){
      gp++;
      print("gp=$gp");
      print("pp=$pp");
     print("PC:$r YOU:$move2  U GOT A SCORE! ");
     }
     else if(c=="scissors" && move2=="paper"){
      pp++;
      print("gp=$gp");
      print("pp=$pp");
     print("PC:$r YOU:$move2  U LOST! ");
     }
     if(gp==3){
      print("YOU WON!!!CONGRATS!");
      break;
     }
     if(pp==3){
      print("YOU LOST!!! YOU SHOULD BE ASHAMED OF YOURSELF :(");
      break;
     }

     
  }    
      

      
}