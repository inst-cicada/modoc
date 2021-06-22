import 'package:http/http.dart' as http;

Future predictionAPI(url,username,diseases) async{
  http.Response Response=await http.get(Uri.parse(url+'predictDisease?username='+username+'&symptoms='+diseases));
  return Response.body;
}