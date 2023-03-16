import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:login_tdd/validator.dart';

void main() {
  test(
    'validator for empty email id',
    () {
      //ARRANGE & ACCT
      var result = Validator.validatEmail('');

      //ASSERT
      expect(result, "require field");
    },
  );
}
