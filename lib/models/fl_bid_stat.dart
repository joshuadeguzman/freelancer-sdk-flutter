// Copyright 2019 Joshua de Guzman (https://joshuadeguzman.github.io). All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

class FLBidStats {
  int bidCount;
  double bidAvg;

  FLBidStats({this.bidCount, this.bidAvg});

  FLBidStats.fromJson(Map<String, dynamic> json) {
    bidCount = json['bid_count'];
    bidAvg = json['bid_avg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['bid_count'] = this.bidCount;
    data['bid_avg'] = this.bidAvg;
    return data;
  }
}