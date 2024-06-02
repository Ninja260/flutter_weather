import 'package:open_meteo_api/open_meteo_api.dart';
import 'package:test/test.dart';

void main() {
  group('Weather', () {
    group('fromJson', () {
      test('return corrrect Weather object', () {
        expect(
            Weather.fromJson(
              <String, dynamic>{
                'temperature': 15.3,
                'weathercode': 63,
              },
            ),
            isA<Weather>()
                .having((w) => w.temperature, 'temperature', 15.3)
                .having((w) => w.weatherCode, 'weathercode', 63));
      });
    });
  });
}
