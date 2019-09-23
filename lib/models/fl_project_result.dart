// Copyright 2019 Joshua de Guzman (https://joshuadeguzman.github.io). All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'fl_project.dart';

class FLProjectResult {
  int totalCount;
  Null selectedBids;
  Null users;
  List<FLProject> projects;

  FLProjectResult(
      {this.totalCount, this.selectedBids, this.users, this.projects});

  FLProjectResult.fromJson(Map<String, dynamic> json) {
    totalCount = json['total_count'];
    selectedBids = json['selected_bids'];
    users = json['users'];
    if (json['projects'] != null) {
      projects = new List<FLProject>();
      json['projects'].forEach((v) {
        projects.add(FLProject.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['total_count'] = this.totalCount;
    data['selected_bids'] = this.selectedBids;
    data['users'] = this.users;
    if (this.projects != null) {
      data['projects'] = this.projects.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
