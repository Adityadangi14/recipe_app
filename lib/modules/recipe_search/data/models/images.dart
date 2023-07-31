import 'package:equatable/equatable.dart';

class Images extends Equatable {
  THUMBNAIL? tHUMBNAIL;
  THUMBNAIL? sMALL;
  THUMBNAIL? rEGULAR;
  THUMBNAIL? lARGE;

  Images({this.tHUMBNAIL, this.sMALL, this.rEGULAR, this.lARGE});

  Images.fromJson(Map<String, dynamic> json) {
    tHUMBNAIL = json['THUMBNAIL'] != null
        ? THUMBNAIL.fromJson(json['THUMBNAIL'])
        : null;
    sMALL = json['SMALL'] != null ? THUMBNAIL.fromJson(json['SMALL']) : null;
    rEGULAR =
        json['REGULAR'] != null ? THUMBNAIL.fromJson(json['REGULAR']) : null;
    lARGE = json['LARGE'] != null ? THUMBNAIL.fromJson(json['LARGE']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (tHUMBNAIL != null) {
      data['THUMBNAIL'] = tHUMBNAIL!.toJson();
    }
    if (sMALL != null) {
      data['SMALL'] = sMALL!.toJson();
    }
    if (rEGULAR != null) {
      data['REGULAR'] = rEGULAR!.toJson();
    }
    if (lARGE != null) {
      data['LARGE'] = lARGE!.toJson();
    }
    return data;
  }

  @override
  // TODO: implement props
  List<Object?> get props => [tHUMBNAIL, sMALL, rEGULAR, lARGE];
}

class THUMBNAIL extends Equatable {
  String? url;
  int? width;
  int? height;

  THUMBNAIL({this.url, this.width, this.height});

  THUMBNAIL.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    width = json['width'];
    height = json['height'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['url'] = url;
    data['width'] = width;
    data['height'] = height;
    return data;
  }

  @override
  // TODO: implement props
  List<Object?> get props => [
        url,
        width,
        height,
      ];
}
