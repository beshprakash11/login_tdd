import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:login_tdd/login_screen.dart';

void main() {
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
}
