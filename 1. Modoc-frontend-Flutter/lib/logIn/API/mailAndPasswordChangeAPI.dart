import 'package:http/http.dart' as http;

Future emailChangeAPI(url,username,newemail) async{
  http.Response Response=await http.get(Uri.parse(url+'emailChange?username='+username+'&newemail='+newemail));
  return Response.body;
}
Future passwordChangeAPI(url,username,pwd) async{
  http.Response Response=await http.get(Uri.parse(url+'/passwordChange?username='+username+'&newpassword='+pwd));
  return Response.body;
}