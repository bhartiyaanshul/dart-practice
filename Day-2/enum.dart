// enum names{
//   anshul, ridham, piyu
// }

// void main(){
//   for(names n in names.values){
//     print(n);
//   }
// }

enum names{
  anshul, ridham, piyu
}

void main(){
  var name = names.anshul;
  
  switch(name){
    case names.anshul : print('Is is right answer!');
      break;
    case names.piyu : print('Is not a right answer!');
      break;
    case names.ridham : print('Is not a right answer!');
      break;
  }
}