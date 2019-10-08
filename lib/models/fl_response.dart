// Copyright 2019 Joshua de Guzman (https://joshuadeguzman.github.io). All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// TODO: Handling generics is not native in Flutter. Find a library, or create a base serializer class.
// https://stackoverflow.com/questions/51575371/flutter-how-to-parsed-nested-json-to-a-class-with-generics/51575683
import 'package:freelancer_sdk/models/fl_project_result.dart';

class FLResponse<T> {
  String status;
  String requestId;
  T result;

  FLResponse({
    this.status,
    this.requestId,
    this.result,
  });

  FLResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    requestId = json['request_id'];

    // TODO: Handling generics
    // Do not parse result when the request is not succesful, just show the user the error message.
    if (json['result'] != null && json['status'] == "success") {
      switch (T) {
        case FLProjectResult:
          result = FLProjectResult.fromJson(json['result']) as T;
          break;
      }
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['request_id'] = this.requestId;

    // TODO: Handling generics
    // Do not parse result when the request is not succesful, just show the user the error message.
    if (this.result != null && this.status == "success") {
      switch (T) {
        case FLProjectResult:
          data['result'] = (result as FLProjectResult).toJson();
          break;
      }
    }

    return data;
  }
}
