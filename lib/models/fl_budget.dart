// Copyright 2019 Joshua de Guzman (https://joshuadeguzman.github.io). All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// TODO: Complete budget model, remove null data types
class FLBudget {
  Null currencyId;
  double minimum;
  double maximum;
  Null projectType;
  Null name;

  FLBudget({
    this.currencyId,
    this.minimum,
    this.maximum,
    this.projectType,
    this.name,
  });

  FLBudget.fromJson(Map<String, dynamic> json) {
    currencyId = json['currency_id'];
    minimum = json['minimum'];
    maximum = json['maximum'];
    projectType = json['project_type'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['currency_id'] = this.currencyId;
    data['minimum'] = this.minimum;
    data['maximum'] = this.maximum;
    data['project_type'] = this.projectType;
    data['name'] = this.name;
    return data;
  }
}
