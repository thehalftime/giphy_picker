import 'package:giphy_picker/src/model/client/video_assets.dart';

class GiphyVideo {
  final GiphyVideoAssets assets;

  GiphyVideo({GiphyVideoAssets? assets,})
      : this.assets = assets ?? GiphyVideoAssets();

  factory GiphyVideo.fromJson(Map<String, dynamic> json) =>
      GiphyVideo(assets: json['assets'] == null
          ? null
          : GiphyVideoAssets.fromJson(json['assets'] as Map<String, dynamic>));

  Map<String, dynamic> toJson() => <String, dynamic>{'assets': assets,};

  @override
  String toString() {
    return 'GiphyVideo{assets: $assets}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is GiphyVideo &&
              runtimeType == other.runtimeType &&
              assets == other.assets;

  @override
  int get hashCode => assets.hashCode;
}