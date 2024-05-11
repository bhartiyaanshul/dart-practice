import 'package:http/http.dart' as http;
import 'dart:convert';

void main() async {
  quotes q = quotes();
  q.quote();
}

class quotes{

  List quotesData = [];

  void quote() async{
    final httpPackageUrl = Uri.parse('https://api.quotable.io/quotes');
    final httpPackageInfo = await http.read(httpPackageUrl);
    final httpPackageJson = json.decode(httpPackageInfo) as Map<String, dynamic>;
    final results = httpPackageJson['results'];
    
    for(var result in results){
      quotesData.add(result);
    }
    
    print(quotesData);
  }
}