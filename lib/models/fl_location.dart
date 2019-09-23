// Copyright 2019 Joshua de Guzman (https://joshuadeguzman.github.io). All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:freelancer_sdk/models/fl_country.dart';

// TODO: Complete location model, remove null data types
class FLLocation {
  Null administrativeArea;
  Null city;
  FLCountry country;
  Null vicinity;
  Null longitude;
  Null fullAddress;
  Null latitude;

  FLLocation(
      {this.administrativeArea,
      this.city,
      this.country,
      this.vicinity,
      this.longitude,
      this.fullAddress,
      this.latitude});

  FLLocation.fromJson(Map<String, dynamic> json) {
    administrativeArea = json['administrative_area'];
    city = json['city'];
    country =
        json['country'] != null ? new FLCountry.fromJson(json['country']) : null;
    vicinity = json['vicinity'];
    longitude = json['longitude'];
    fullAddress = json['full_address'];
    latitude = json['latitude'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['administrative_area'] = this.administrativeArea;
    data['city'] = this.city;
    if (this.country != null) {
      data['country'] = this.country.toJson();
    }
    data['vicinity'] = this.vicinity;
    data['longitude'] = this.longitude;
    data['full_address'] = this.fullAddress;
    data['latitude'] = this.latitude;
    return data;
  }
}
