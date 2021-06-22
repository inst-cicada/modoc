import 'package:http/http.dart' as http;

Future signUpAPI(url,username,email,password) async{
  http.Response Response=await http.get(Uri.parse(url+'userSignup?username='+username+'&email='+email+'&pwd='+password));
  return Response.body;
}
