class GiphyVideoAsset {
  final String? url;
  final String? width;
  final String? height;

  GiphyVideoAsset({
    this.url,
    this.width,
    this.height,
  });

  factory GiphyVideoAsset.fromJson(Map<String, dynamic> json) =>
      GiphyVideoAsset(
          url: json['url'] as String?,
          width: json['width'] as String?,
          height: json['height'] as String?);

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'url': url,
      'width': width,
      'height': height,
    };
  }

  @override
  String toString() {
    return 'GiphyVideoAsset{url: $url, width: $width, height: $height}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is GiphyVideoAsset &&
              runtimeType == other.runtimeType &&
              url == other.url &&
              width == other.width &&
              height == other.height;

  @override
  int get hashCode => url.hashCode ^ width.hashCode ^ height.hashCode;
}