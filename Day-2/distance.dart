import 'dart:math';
void main(){
  var a = Point(1,2);
  var b = Point(2,3);
  
  var distance = Point.distbtwn(a, b);
  print(distance);
}

class Point{
  double x,y;
  
  Point(this.x,this.y);
  
  static double distbtwn(Point a, Point b){
    var dx = a.x - a.y;
    var dy = b.x - b.y;
    return sqrt(dx * dx + dy * dy);
  }
}