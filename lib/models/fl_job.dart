// Copyright 2019 Joshua de Guzman (https://joshuadeguzman.github.io). All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:freelancer_sdk/models/fl_category.dart';

class FLJob {
  FLCategory category;
  String name;
  String seoUrl;
  Null activeProjectCount;
  bool local;
  int id;
  Null seoInfo;

  FLJob({
    this.category,
    this.name,
    this.seoUrl,
    this.activeProjectCount,
    this.local,
    this.id,
    this.seoInfo,
  });

  FLJob.fromJson(Map<String, dynamic> json) {
    category = json['category'] != null
        ? new FLCategory.fromJson(json['category'])
        : null;
    name = json['name'];
    seoUrl = json['seo_url'];
    activeProjectCount = json['active_project_count'];
    local = json['local'];
    id = json['id'];
    seoInfo = json['seo_info'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['seo_url'] = this.seoUrl;
    if (this.category != null) {
      data['category'] = this.category.toJson();
    }
    data['active_project_count'] = this.activeProjectCount;
    data['local'] = this.local;
    data['id'] = this.id;
    data['seo_info'] = this.seoInfo;
    return data;
  }
}
