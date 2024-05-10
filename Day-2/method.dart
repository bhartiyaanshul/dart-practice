// import 'dart:math';
// void main(){
//   var a = Point(1,2);
//   var b = Point(2,3);
  
//   var distance = Point.distbtwn(a, b);
//   print(distance);
// }

// class Point{
//   double x,y;
  
//   Point(this.x,this.y);
  
//   static double distbtwn(Point a, Point b){
//     var dx = a.x - a.y;
//     var dy = b.x - b.y;
//     return sqrt(dx * dx + dy * dy);
//   }
// }

// Getter and Setter
class Rectangle{
  double left, top, width, height;
  
  Rectangle(this.left, this.top, this.height, this.width);
  
  double get right => left + width;
  set right(double value) => left = value - width;
  
  double get bottom => top + height;
  set bottom(double value) => top = value - height;
  
}

void main(){
  var rect = Rectangle(2,3,15,17);
  rect.right = 12;
  print(rect);
}
