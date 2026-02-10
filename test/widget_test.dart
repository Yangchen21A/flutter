import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_new_app/main.dart';

void main() {
  testWidgets('App loads successfully', (WidgetTester tester) async {
    // Build the app
    await tester.pumpWidget(MyApp());

    // Check if main title appears
    expect(find.text('Age Category Checker'), findsOneWidget);
  });
}
