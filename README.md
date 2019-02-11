A profoundly incomplete soundcloud api library for Dart developers.

Created from templates made available by Stagehand under a BSD-style
[license](https://github.com/dart-lang/stagehand/blob/master/LICENSE).

## Usage

A simple usage example:

```dart
import 'package:soundcloud_dart/soundcloud_lib.dart';

main() async {
  String clientId = 'clientId';
  String clientSecret = 'clientSecret';
  String username = 'username';
  String password = 'password';
  
  SoundcloudClient client = new SoundcloudClient(clientId, clientSecret, username, password);
  
  // Connect to client
  AuthResponse authResponse = await client.connect();
  Track first = await client.getTrack(434785983);
  print(first.toJson());
}
```
