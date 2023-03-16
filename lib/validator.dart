class Validator {
  static String? validatEmail(String email){
    //check email empty
    if(email.isEmpty){
      return "Require Field";
    }
  }
}