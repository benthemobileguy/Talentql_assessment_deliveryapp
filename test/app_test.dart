import 'package:delivery_app_talentql/screens/home_screen.dart';
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
    testWidgets('LoginScreen should navigate to HomeScreen on login button tap', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    // Tap the "Login with Google" button
    await tester.tap(find.widgetWithText(ElevatedButton, "Login with Google"));
    await tester.pumpAndSettle();

    // Verify that the HomeScreen is rendered
    expect(find.byType(HomeScreen), findsOneWidget);
  });
  
}
