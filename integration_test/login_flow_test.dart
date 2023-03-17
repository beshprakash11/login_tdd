import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  group(
    "Login Flow Test",
    () {
      IntegrationTestWidgetsFlutterBinding.ensureInitialized();
      testWidgets(
        "Should show home screen when user taps on login button aftter enter valid email and password",
        (WidgetTester tester) async{
          
        },
      );
    },
  );
}
