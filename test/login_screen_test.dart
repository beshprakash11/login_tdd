import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:login_tdd/login_screen.dart';

void main() {
  //login title test
  testWidgets('Should have a title', (WidgetTester tester) async {
    //ARRANGE
    await tester.pumpWidget(
      const MaterialApp(
        home: LoginScreen(),
      ),
    );
    //ACT
    Finder title = find.text('Login');

    //ASSERT
    expect(title, findsOneWidget);
  });

  //email field test
  testWidgets('Should have on text field from to collect user email id',
      (WidgetTester tester) async {
    //ARRANGE
    await tester.pumpWidget(
      const MaterialApp(
        home: LoginScreen(),
      ),
    );
    //ACT
    Finder userNameTextField = find.byKey(const ValueKey('email_id'));

    //ASSERT
    expect(userNameTextField, findsOneWidget);
  });

  //email field test
  testWidgets('Should have on text field from to collect user password id',
      (WidgetTester tester) async {
    //ARRANGE
    await tester.pumpWidget(
      const MaterialApp(
        home: LoginScreen(),
      ),
    );
    //ACT
    Finder passwordTextField = find.byKey(const ValueKey('password'));

    //ASSERT
    expect(passwordTextField, findsOneWidget);
  });

  //login button
  testWidgets('Should have one login button', (WidgetTester tester) async {
    //ARRANGE
    await tester.pumpWidget(
      const MaterialApp(
        home: LoginScreen(),
      ),
    );
    //ACT
    Finder loginButton = find.byType(ElevatedButton);

    //ASSERT
    expect(loginButton, findsOneWidget);
  });

  //Should show Required Fields error message if user email id & password is empty
  testWidgets(
      "Should show Required Fields error message if user email id & password is empty",
      (WidgetTester tester) async {
    // ARRANGE
    await tester.pumpWidget(const MaterialApp(
      home: LoginScreen(),
    ));

    // ACT
    Finder loginButton = find.byType(ElevatedButton);
    await tester.tap(loginButton);
    await tester.pumpAndSettle();
    Finder errorTexts = find.text("Required Field");

    //ASSERT
    expect(errorTexts, findsNWidgets(2));
  });

  //Should submit form whenuser email id & password is valid
  testWidgets(
      "Should submit form whenuser email id & password is valid",
      (WidgetTester tester) async {
      });
}
