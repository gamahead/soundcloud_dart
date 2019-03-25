import 'dart:convert';
import 'dart:async';

import 'package:http/http.dart' as http;
import 'package:soundcloud_dart/soundcloud_lib.dart';

class SoundcloudClient {
  final String _clientId;
  final String _clientSecret;
  final String _username;
  final String _password;

  static final String host = 'api.soundcloud.com';
  static final String soundcloudApiUrl = 'http://${host}';
  static final String authPath = '/oauth2/token';
  static final String tracksPath = '/tracks';
  static final int trackLimit = 200;

  SoundcloudClient(this._clientId, this._clientSecret, this._username, this._password);

  String get username => _username;

  String get clientId => _clientId;

  Future<AuthResponse> connect() {
    return http.post(soundcloudApiUrl + authPath, body: getAuthRequestBody()).then(_handleConnectResponse);
  }

  Future<Track> getTrack(int trackId) {
    Uri trackUri = Uri.http(host, '${tracksPath}/${trackId}', getClientQueryParamMap());

    return http.get(trackUri).then(_handleTrackResponse);
  }

  Future<List<Track>> getTracks(List<int> trackIds, [TrackFilter trackFilter]) {
    if (trackFilter == null) {
      trackFilter = (Track t) => true;
    }

    Map<String, dynamic> queryParams = getClientQueryParamMap();
    queryParams['ids'] = trackIds.join(",");

    Uri tracksUri = Uri.http(host, tracksPath, queryParams);
    print(tracksUri);
    return http
        .get(tracksUri)
        .then(_handleTracksResponse)
        .then((List<Track> tracks) => tracks.where(trackFilter).toList());
  }

  Future<List<Track>> getRecentTracks({int limit = 200, TrackFilter trackFilter}) {
    assert(limit <= trackLimit, 'limit must be less than 200');

    if (trackFilter == null) {
      trackFilter = (Track t) => true;
    }

    Map<String, dynamic> queryParams = getClientQueryParamMap();
    queryParams['limit'] = limit.toString();

    Uri recentTracksUri = Uri.http(host, tracksPath, queryParams);

    return http
        .get(recentTracksUri)
        .then(_handleTracksResponse)
        .then((List<Track> tracks) => tracks.where(trackFilter).toList());
  }

  Map<String, dynamic> getAuthRequestBody() {
    return {
      'client_id': this._clientId,
      'client_secret': this._clientSecret,
      'grant_type': 'password',
      'password': this._password,
      'username': this._username,
      'scope': ''
    };
  }

  Map<String, String> getClientQueryParamMap() {
    return {'client_id': clientId};
  }

  AuthResponse _handleConnectResponse(http.Response response) {
    if (response.statusCode != 200) throw (_produceErrorMessage(response));

    return new AuthResponse.fromJson(json.decode(response.body));
  }

  Track _handleTrackResponse(http.Response response) {
    if (response.statusCode != 200) throw (_produceErrorMessage(response));

    return new Track.fromJson(json.decode(response.body));
  }

  List<Track> _handleTracksResponse(http.Response response) {
    if (response.statusCode != 200) throw (_produceErrorMessage(response));

    List<dynamic> tracks = json.decode(response.body);

    return tracks.map((track) => new Track.fromJson(track)).toList();
  }

  String _produceErrorMessage(http.Response response) {
    return 'Failed to connect to ${host}: ${response.statusCode} -> ${response.reasonPhrase}';
  }
}
