import 'package:flutter_test/flutter_test.dart';
import 'package:login_tdd/validator.dart';

void main() {

  //check email validation empty or not
  test(
    'validator for empty email id',
    () {
      //ARRANGE & ACCT
      var result = Validator.validatEmail('');

      //ASSERT
      expect(result, "Require Field");
    },
  );

  //email validation , entered field email is empty or not
  test(
    'validator for invalid email id',
    () {
      //ARRANGE & ACCT
      var result = Validator.validatEmail('adfd');

      //ASSERT
      expect(result, "Please enter a valid email id");
    },
  );

  //check entered email is realy email?
  test(
    'validator for valid email id',
    () {
      //ARRANGE & ACCT
      var result = Validator.validatEmail('besh@gmail.com');

      //ASSERT
      expect(result, null);
    },
  );
}
