import 'package:json_annotation/json_annotation.dart';

part 'model.g.dart';

typedef bool TrackFilter(Track t);

@JsonSerializable()
class AuthResponse {
  String access_token;
  int expires_in;
  String scope;
  String refresh_token;

  AuthResponse(this.access_token, this.expires_in, this.scope, this.refresh_token);

  factory AuthResponse.fromJson(Map<String, dynamic> json) => _$AuthResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AuthResponseToJson(this);
}

@JsonSerializable()
class Track {
  int reposts_count;
  String attachments_uri;
  String video_url;
  String track_type;
  int release_month;
  String original_format;
  String label_name;
  int duration;
  int id;
  bool streamable;
  int user_id;
  bool user_favorite;
  String title;
  int favoritings_count;
  bool commentable;
  String label_id;
  String state;
  bool downloadable;
  String waveform_url;
  String sharing;
  String description;
  int release_day;
  String purchase_url;
  String permalink;
  int comment_count;
  String purchase_title;
  String stream_url;
  String last_modified;
  User user;
  String genre;
  bool isrc;
  int download_count;
  String permalink_url;
  int playback_count;
  String kind;
  int release_year;
  String license;
  String artwork_url;
  String created_at;
  int bpm;
  String uri;
  int original_content_size;
  String key_signature;
  int user_playback_count;
  int release;
  String tag_list;
  String embeddable_by;

  Track(
      this.reposts_count,
      this.attachments_uri,
      this.video_url,
      this.track_type,
      this.release_month,
      this.original_format,
      this.label_name,
      this.duration,
      this.id,
      this.streamable,
      this.user_id,
      this.user_favorite,
      this.title,
      this.favoritings_count,
      this.commentable,
      this.label_id,
      this.state,
      this.downloadable,
      this.waveform_url,
      this.sharing,
      this.description,
      this.release_day,
      this.purchase_url,
      this.permalink,
      this.comment_count,
      this.purchase_title,
      this.stream_url,
      this.last_modified,
      this.user,
      this.genre,
      this.isrc,
      this.download_count,
      this.permalink_url,
      this.playback_count,
      this.kind,
      this.release_year,
      this.license,
      this.artwork_url,
      this.created_at,
      this.bpm,
      this.uri,
      this.original_content_size,
      this.key_signature,
      this.user_playback_count,
      this.release,
      this.tag_list,
      this.embeddable_by);

  factory Track.fromJson(Map<String, dynamic> json) => _$TrackFromJson(json);

  Map<String, dynamic> toJson() => _$TrackToJson(this);
}

@JsonSerializable()
class User {
  String username;
  String permalink;
  String avatar_url;
  String kind;
  String uri;
  String last_modified;
  String permalink_url;
  int id;

  User(this.username, this.permalink, this.avatar_url, this.kind, this.uri, this.last_modified, this.permalink_url,
      this.id);

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
