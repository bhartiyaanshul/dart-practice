void main(){
  Point(1,1);
}

// Generative constructors
class Point{
  double a,b;
  
  Point(this.a,this.b);
}

//Constant constructors
class ImmutablePoint{
  final double x,y;
  const ImmutablePoint(this.x,this.y);
  
  static final ImmutablePoint origin = const ImmutablePoint(0,0);
}