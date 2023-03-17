import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:login_tdd/login_screen.dart';

void main() {
  //login title test
  testWidgets('Should have a title', (WidgetTester tester) async {
    //ARRANGE
   await tester.pumpWidget(
      MaterialApp(
        home: LoginScreen(),
      ),
    );
    //ACT
    Finder title = find.text('Login');

    //ASSERT
    expect(title, findsOneWidget);
  });

  //email field test
  testWidgets('Should have on text field from to collect user email id', (WidgetTester tester) async {
    //ARRANGE
   await tester.pumpWidget(
      MaterialApp(
        home: LoginScreen(),
      ),
    );
    //ACT
    Finder title = find.byKey(const ValueKey('email_id'));

    //ASSERT
    expect(title, findsOneWidget);
  });

  //email field test
  testWidgets('Should have on text field from to collect user password id', (WidgetTester tester) async {
    //ARRANGE
   await tester.pumpWidget(
      MaterialApp(
        home: LoginScreen(),
      ),
    );
    //ACT
    Finder title = find.byKey(const ValueKey('password_id'));

    //ASSERT
    expect(title, findsOneWidget);
  });
}
