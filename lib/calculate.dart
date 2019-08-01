import 'package:number_spring/utils/share_preferece.dart';

class Calc{
  int _theNumber;
  Calc(){
    var numbers = List<int>.generate(15, (int index){return index + 1;});
    
    for(int i = 1; i <= 15; i++){
      if(!SharedPref.getBall(i)){
        if(numbers.contains(i)){
          numbers.remove(i);
        }
      }else{
        if(!numbers.contains(i)){
          numbers.add(i);
        }
      }
    }
    
    numbers.shuffle();
    _theNumber = numbers.first;
    print(numbers.first);
  }
  
  get getNumber => _theNumber;
}