import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:login_tdd/login_screen.dart';

void main() {
  group(
    "Login Flow Test",
    () {
      IntegrationTestWidgetsFlutterBinding.ensureInitialized();

      //Should show Required field error message when user taps on login button without entering valid email and password
      testWidgets(
        "Should show Required field error message when user taps on login button without entering valid email and password",
        (WidgetTester tester) async {
          // ARRANGE
          await tester.pumpWidget(
            const MaterialApp(
              home: LoginScreen(),
            ),
          );

          //ACT
          //login btn taped
          Finder loginButton = find.byType(ElevatedButton);
          await tester.tap(loginButton);
          await tester.pumpAndSettle();

          Finder errorTexts = find.text("Required Field");

          //ASSERT
          expect(errorTexts, findsNWidgets(2));
        },
      );

      //Should show home screen when user taps on login button aftter enter valid email and password
      testWidgets(
        "Should show home screen when user taps on login button aftter enter valid email and password",
        (WidgetTester tester) async {
          // ARRANGE
          await tester.pumpWidget(
            const MaterialApp(
              home: LoginScreen(),
            ),
          );
          //ACT
          Finder userNameTextField = find.byKey(const ValueKey('email_id'));
          Finder passwordTextField = find.byKey(const ValueKey('password'));

          //user and password entered
          await tester.enterText(userNameTextField, "besh@gmail.com");
          await tester.enterText(passwordTextField, "123456789password");

          //login btn taped
          Finder loginButton = find.byType(ElevatedButton);
          await tester.tap(loginButton);
          await tester.pumpAndSettle();

          Finder welcomText = find.byType(Text);

          //ASSERT
          expect(welcomText, findsOneWidget);

        },
      );
    },
  );
}
