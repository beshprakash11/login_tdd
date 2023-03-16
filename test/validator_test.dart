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

  //check validate for password isempty
  test(
    'validate for a password',
    () {
      //Arrange & Act
      var result = Validator.validatePassword('');

      //ASSERT
      expect(result, "Required Field");
    },
  );

  //test validate for invalid password
  test(
    'validate for invalid password',
    () {
      //Arrange & Act
      var result = Validator.validatePassword('pass');

      //ASSERT 
      expect(result, "Please enter atleast 8 charactor for password.");
    },
  );

  //test validate for valid password
  test(
    'validate for valid password',
    () {
      //Arrange & Act
      var result = Validator.validatePassword('password');

      //ASSERT 
      expect(result, null);
    },
  );
}
