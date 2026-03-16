import 'package:flutter_test/flutter_test.dart';
import 'package:monie/main.dart';

void main() {
  testWidgets('App loads successfully', (WidgetTester tester) async {
    await tester.pumpWidget(const MonieApp());
    // Verify the login screen shows up
    expect(find.text('Welcome Back'), findsOneWidget);
  });
}
