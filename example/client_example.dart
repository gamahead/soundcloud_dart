import 'dart:convert';
import 'dart:io';
import 'package:soundcloud_dart/soundcloud_lib.dart';

/*
* This example assumes a secrets.json file in the root directory of this project so that I can test it
* with real credentials without worrying about uploading those credentials to github
*
* Special thanks to .gitignore
* */
main() async {
  Map<String, dynamic> secrets =
      await new File('secrets.json').readAsString().then((String fileContent) => jsonDecode(fileContent));

  SoundcloudClient client =
      new SoundcloudClient(secrets['clientId'], secrets['clientSecret'], secrets['username'], secrets['password']);

  // Connect to client
  await client.connect();

  Track first = await client.getTrack(434785983);

  print(first.toJson());
}
