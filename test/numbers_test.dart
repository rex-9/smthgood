import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:smthgood/controllers/numbers.controller.dart';

import 'package:smthgood/main.dart';

void main() {
  test('Test Populate Numbers Function', () {
    // Check if Populate Numbers Function is populating the array properly
    expect(NumbersController().populateNumbersArray(1, 5),
        equals([1, 2, 3, 4, 5]));
  });

  testWidgets('Test Form Submission', (WidgetTester tester) async {
    // Build the widget tree
    await tester.pumpWidget(const MyApp());

    // Find Start Number Widget
    final startNumberWidget =
        find.widgetWithText(TextFormField, 'Start Number');

    // Verify Start Number Widget is found
    expect(startNumberWidget, findsOneWidget);

    // Find End Number Widget
    final endNumberWidget = find.widgetWithText(TextFormField, 'End Number');

    // Verify End Number Widget is found
    expect(endNumberWidget, findsOneWidget);

    // Find End Number Widget
    final submitButtonWidget = find.byType(ElevatedButton);

    // Verify End Number Widget is found
    expect(submitButtonWidget, findsOneWidget);

    // Enter a value into the Start Number Widget
    await tester.enterText(startNumberWidget, '1');

    // Enter a value into the End Number Widget
    await tester.enterText(endNumberWidget, '5');

    // Tap the Submit Button
    await tester.tap(submitButtonWidget);
    await tester.pump();

    // Add assertions to verify the desired behavior
    expect(find.text('1'), findsOneWidget);
    expect(find.text('5'), findsOneWidget);
  });
}
