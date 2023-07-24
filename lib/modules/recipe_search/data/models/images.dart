import 'package:equatable/equatable.dart';

class Images extends Equatable {
  THUMBNAIL? tHUMBNAIL;
  THUMBNAIL? sMALL;
  THUMBNAIL? rEGULAR;
  THUMBNAIL? lARGE;

  Images({this.tHUMBNAIL, this.sMALL, this.rEGULAR, this.lARGE});

  Images.fromJson(Map<String, dynamic> json) {
    tHUMBNAIL = json['THUMBNAIL'] != null
        ? new THUMBNAIL.fromJson(json['THUMBNAIL'])
        : null;
    sMALL =
        json['SMALL'] != null ? new THUMBNAIL.fromJson(json['SMALL']) : null;
    rEGULAR = json['REGULAR'] != null
        ? new THUMBNAIL.fromJson(json['REGULAR'])
        : null;
    lARGE =
        json['LARGE'] != null ? new THUMBNAIL.fromJson(json['LARGE']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.tHUMBNAIL != null) {
      data['THUMBNAIL'] = this.tHUMBNAIL!.toJson();
    }
    if (this.sMALL != null) {
      data['SMALL'] = this.sMALL!.toJson();
    }
    if (this.rEGULAR != null) {
      data['REGULAR'] = this.rEGULAR!.toJson();
    }
    if (this.lARGE != null) {
      data['LARGE'] = this.lARGE!.toJson();
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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['url'] = this.url;
    data['width'] = this.width;
    data['height'] = this.height;
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
