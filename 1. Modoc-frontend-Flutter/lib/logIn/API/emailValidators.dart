import 'package:email_auth/email_auth.dart';
import 'package:email_validator/email_validator.dart';

bool mailValidation(String email){
  bool result=EmailValidator.validate(email);
  return result;
}

Future<bool> sendOtp(String email) async {
  EmailAuth.sessionName = "MoDoc";
  bool result = await EmailAuth.sendOtp(receiverMail: email);
  return result;
}

Future<bool> validateOTP(String email,String otp) async{
  bool result=EmailAuth.validate(
      receiverMail: email,
      userOTP: otp);
  return result;
}