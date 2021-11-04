import 'package:giphy_picker/src/model/client/video_asset.dart';

class GiphyVideoAssets {
  final GiphyVideoAsset? q360p;
  final GiphyVideoAsset? q480p;
  final GiphyVideoAsset? q720p;
  final GiphyVideoAsset? q1080p;
  final GiphyVideoAsset? q4k;

  GiphyVideoAssets({
    this.q360p,
    this.q480p,
    this.q720p,
    this.q1080p,
    this.q4k,
  });

  factory GiphyVideoAssets.fromJson(Map<String, dynamic> json) {
    return GiphyVideoAssets(
      q360p: json['360p'] == null
          ? null
          : GiphyVideoAsset.fromJson(json['360p'] as Map<String, dynamic>),
      q480p: json['480p'] == null
          ? null
          : GiphyVideoAsset.fromJson(json['480p'] as Map<String, dynamic>),
      q720p: json['720p'] == null
          ? null
          : GiphyVideoAsset.fromJson(json['720p'] as Map<String, dynamic>),
      q1080p: json['1080p'] == null
          ? null
          : GiphyVideoAsset.fromJson(json['1080p'] as Map<String, dynamic>),
      q4k: json['4k'] == null
          ? null
          : GiphyVideoAsset.fromJson(json['4k'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      '360p': q360p,
      '480p': q480p,
      '720p': q720p,
      '1080p': q1080p,
      '4k': q4k,
    };
  }

  @override
  String toString() {
    return 'GiphyVideoAssets{q360p: $q360p, q480p: $q480p, q720p: $q720p, q1080p: $q1080p, q4k: $q4k}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GiphyVideoAssets &&
          runtimeType == other.runtimeType &&
          q360p == other.q360p &&
          q480p == other.q480p &&
          q720p == other.q720p &&
          q1080p == other.q1080p &&
          q4k == other.q4k;

  @override
  int get hashCode =>
      q360p.hashCode ^
      q480p.hashCode ^
      q720p.hashCode ^
      q1080p.hashCode ^
      q4k.hashCode;
}
