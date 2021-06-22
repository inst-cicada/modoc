import 'package:http/http.dart' as http;

Future logInAPI(url,email,password) async{
  http.Response Response=await http.get(Uri.parse(url+'userLogin?email='+email+'&pwd='+password));
  return Response.body;
}
