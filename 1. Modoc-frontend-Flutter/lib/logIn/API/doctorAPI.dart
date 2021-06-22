import 'package:http/http.dart' as http;

Future doctorAPI(url,icd) async{
  http.Response Response=await http.get(Uri.parse(url+'doctorShow?icd='+icd));
  return Response.body;
}