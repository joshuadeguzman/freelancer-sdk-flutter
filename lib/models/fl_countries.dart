// Copyright 2019 Joshua de Guzman (https://joshuadeguzman.github.io). All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'fl_country.dart';

class FLCountries {
  String status;
  Result result;
  String requestId;

  FLCountries({this.status, this.result, this.requestId});

  FLCountries.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    result =
        json['result'] != null ? new Result.fromJson(json['result']) : null;
    requestId = json['request_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.result != null) {
      data['result'] = this.result.toJson();
    }
    data['request_id'] = this.requestId;
    return data;
  }
}

class Result {
  List<FLCountry> countries;

  Result({this.countries});

  Result.fromJson(Map<String, dynamic> json) {
    if (json['countries'] != null) {
      countries = new List<FLCountry>();
      json['countries'].forEach((v) {
        countries.add(new FLCountry.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.countries != null) {
      data['countries'] = this.countries.map((v) => v.toJson()).toList();
    }
    return data;
  }
}