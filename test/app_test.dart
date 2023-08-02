import 'package:flutter_test/flutter_test.dart';
import 'package:delivery_app_talentql/main.dart' as app;

void main() {
  testWidgets('Login Screen should display', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const app.MyApp());

    // Verify that the login screen displays 'Login with Google' button.
    expect(find.text('Login with Google'), findsOneWidget);
  });
}
