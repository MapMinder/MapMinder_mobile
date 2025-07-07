import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mapminder_mobile/features/map/screen/map_screen.dart';

void main() {
  // setup
  TestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('show loading spinner initially', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: MapScreen()));

    expect(find.byType(CircularProgressIndicator), findsOneWidget);

    await tester.pumpAndSettle();

    expect(find.byType(CircularProgressIndicator), findsNothing);
    expect(find.byType(GoogleMap), findsOneWidget);
  });
}

