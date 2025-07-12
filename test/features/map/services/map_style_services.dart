import 'package:flutter_test/flutter_test.dart';
import 'package:mapminder_mobile/features/map/services/map_style_services.dart';

void main() {
  test('loadDarkStyle returns a non-empty string', () async {
    // setup
    TestWidgetsFlutterBinding.ensureInitialized();

    final style = await MapStyleServices.loadDarkStyle();
    expect(style, isNotNull);
    expect(style.isNotEmpty, true);
  });
}
