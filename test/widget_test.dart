import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sm_redux/main.dart';
import 'package:sm_redux/modules/store.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(
        new StoreProvider<AppState>(store: appStore, child: new SmReduxApp()));

    expect(find.text('0'), findsNWidgets(2));
    expect(find.text('1'), findsNothing);

    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsNWidgets(2));
  });
}
