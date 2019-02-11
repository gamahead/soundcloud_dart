// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthResponse _$AuthResponseFromJson(Map<String, dynamic> json) {
  return AuthResponse(json['access_token'] as String, json['expires_in'] as int,
      json['scope'] as String, json['refresh_token'] as String);
}

Map<String, dynamic> _$AuthResponseToJson(AuthResponse instance) =>
    <String, dynamic>{
      'access_token': instance.access_token,
      'expires_in': instance.expires_in,
      'scope': instance.scope,
      'refresh_token': instance.refresh_token
    };

Track _$TrackFromJson(Map<String, dynamic> json) {
  return Track(
      json['reposts_count'] as int,
      json['attachments_uri'] as String,
      json['video_url'] as String,
      json['track_type'] as String,
      json['release_month'] as int,
      json['original_format'] as String,
      json['label_name'] as String,
      json['duration'] as int,
      json['id'] as int,
      json['streamable'] as bool,
      json['user_id'] as int,
      json['user_favorite'] as bool,
      json['title'] as String,
      json['favoritings_count'] as int,
      json['commentable'] as bool,
      json['label_id'] as String,
      json['state'] as String,
      json['downloadable'] as bool,
      json['waveform_url'] as String,
      json['sharing'] as String,
      json['description'] as String,
      json['release_day'] as int,
      json['purchase_url'] as String,
      json['permalink'] as String,
      json['comment_count'] as int,
      json['purchase_title'] as String,
      json['stream_url'] as String,
      json['last_modified'] as String,
      json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      json['genre'] as String,
      json['isrc'] as bool,
      json['download_count'] as int,
      json['permalink_url'] as String,
      json['playback_count'] as int,
      json['kind'] as String,
      json['release_year'] as int,
      json['license'] as String,
      json['artwork_url'] as String,
      json['created_at'] as String,
      json['bpm'] as int,
      json['uri'] as String,
      json['original_content_size'] as int,
      json['key_signature'] as String,
      json['user_playback_count'] as int,
      json['release'] as int,
      json['tag_list'] as String,
      json['embeddable_by'] as String);
}

Map<String, dynamic> _$TrackToJson(Track instance) => <String, dynamic>{
      'reposts_count': instance.reposts_count,
      'attachments_uri': instance.attachments_uri,
      'video_url': instance.video_url,
      'track_type': instance.track_type,
      'release_month': instance.release_month,
      'original_format': instance.original_format,
      'label_name': instance.label_name,
      'duration': instance.duration,
      'id': instance.id,
      'streamable': instance.streamable,
      'user_id': instance.user_id,
      'user_favorite': instance.user_favorite,
      'title': instance.title,
      'favoritings_count': instance.favoritings_count,
      'commentable': instance.commentable,
      'label_id': instance.label_id,
      'state': instance.state,
      'downloadable': instance.downloadable,
      'waveform_url': instance.waveform_url,
      'sharing': instance.sharing,
      'description': instance.description,
      'release_day': instance.release_day,
      'purchase_url': instance.purchase_url,
      'permalink': instance.permalink,
      'comment_count': instance.comment_count,
      'purchase_title': instance.purchase_title,
      'stream_url': instance.stream_url,
      'last_modified': instance.last_modified,
      'user': instance.user,
      'genre': instance.genre,
      'isrc': instance.isrc,
      'download_count': instance.download_count,
      'permalink_url': instance.permalink_url,
      'playback_count': instance.playback_count,
      'kind': instance.kind,
      'release_year': instance.release_year,
      'license': instance.license,
      'artwork_url': instance.artwork_url,
      'created_at': instance.created_at,
      'bpm': instance.bpm,
      'uri': instance.uri,
      'original_content_size': instance.original_content_size,
      'key_signature': instance.key_signature,
      'user_playback_count': instance.user_playback_count,
      'release': instance.release,
      'tag_list': instance.tag_list,
      'embeddable_by': instance.embeddable_by
    };

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
      json['username'] as String,
      json['permalink'] as String,
      json['avatar_url'] as String,
      json['kind'] as String,
      json['uri'] as String,
      json['last_modified'] as String,
      json['permalink_url'] as String,
      json['id'] as int);
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'username': instance.username,
      'permalink': instance.permalink,
      'avatar_url': instance.avatar_url,
      'kind': instance.kind,
      'uri': instance.uri,
      'last_modified': instance.last_modified,
      'permalink_url': instance.permalink_url,
      'id': instance.id
    };
