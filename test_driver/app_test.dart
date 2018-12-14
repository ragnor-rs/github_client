// Imports the Flutter Driver API
import 'package:flutter_driver/flutter_driver.dart' as flutter_driver;
import 'package:test/test.dart';

void main() {
  group('GitHub client', () {
    flutter_driver.FlutterDriver driver;

    // Connect to the Flutter driver before running any tests
    setUpAll(() async {
      driver = await flutter_driver.FlutterDriver.connect();
    });

    // Close the connection to the driver after the tests have completed
    tearDownAll(() async {
      if (driver != null) {
        driver.close();
      }
    });

    test('Repo list loaded', () async {
      // Check whether 'dali' item exists
      expect(await driver.getText(flutter_driver.find.text('dali')), 'dali');
    });
  });
}
