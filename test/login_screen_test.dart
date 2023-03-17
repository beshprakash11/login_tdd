import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:login_tdd/login_screen.dart';

void main() {
  testWidgets('Should have a title', (WidgetTester tester) async {
    tester.pumpWidget(
      MaterialApp(
        home: LoginScreen(),
      ),
    );
  });
}
