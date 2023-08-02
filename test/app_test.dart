import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:delivery_app_talentql/main.dart';
import 'package:delivery_app_talentql/screens/login_screen.dart';

void main() {
  testWidgets('MyApp should contain MaterialApp with LoginScreen', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    // Verify that MaterialApp is rendered
    expect(find.byType(MaterialApp), findsOneWidget);

    // Verify that the MaterialApp contains LoginScreen
    expect(find.byType(LoginScreen), findsOneWidget);
  });
}
