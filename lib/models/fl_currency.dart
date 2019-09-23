// Copyright 2019 Joshua de Guzman (https://joshuadeguzman.github.io). All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// TODO: Complete currency model, remove null data types
class FLCurrency {
  String code;
  String name;
  String country;
  String sign;
  bool isEscrowcomSupported;
  double exchangeRate;
  int id;
  bool isExternal;

  FLCurrency(
      {this.code,
      this.name,
      this.country,
      this.sign,
      this.isEscrowcomSupported,
      this.exchangeRate,
      this.id,
      this.isExternal});

  FLCurrency.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    name = json['name'];
    country = json['country'];
    sign = json['sign'];
    isEscrowcomSupported = json['is_escrowcom_supported'];
    exchangeRate = json['exchange_rate'];
    id = json['id'];
    isExternal = json['is_external'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['name'] = this.name;
    data['country'] = this.country;
    data['sign'] = this.sign;
    data['is_escrowcom_supported'] = this.isEscrowcomSupported;
    data['exchange_rate'] = this.exchangeRate;
    data['id'] = this.id;
    data['is_external'] = this.isExternal;
    return data;
  }
}