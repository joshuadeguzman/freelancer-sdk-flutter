// Copyright 2019 Joshua de Guzman (https://joshuadeguzman.github.io). All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// TODO: Complete project model, remove null data types
import 'package:freelancer_sdk/models/fl_bid_stat.dart';
import 'package:freelancer_sdk/models/fl_budget.dart';
import 'package:freelancer_sdk/models/fl_currency.dart';
import 'package:freelancer_sdk/models/fl_location.dart';
import 'package:freelancer_sdk/models/fl_upgrades.dart';

class FLProject {
  bool hidebids;
  bool isEscrowProject;
  int bidperiod;
  FLCurrency currency;
  bool featured;
  String previewDescription;
  FLUpgrades upgrades;
  int id;
  List<String> poolIds;
  Null activePrepaidMilestone;
  bool negotiated;
  String title;
  int submitdate;
  bool nonpublic;
  FLLocation location;
  bool isBuyerKycRequired;
  String type;
  bool hireme;
  int ownerId;
  String status;
  bool deleted;
  int timeFreeBidsExpire;
  String frontendProjectStatus;
  int timeUpdated;
  String language;
  String seoUrl;
  bool urgent;
  bool local;
  int timeSubmitted;
  FLBudget budget;
  FLBidStats bidStats;
  bool isSellerKycRequired;

  FLProject({
    this.hidebids,
    this.isEscrowProject,
    this.bidperiod,
    this.currency,
    this.featured,
    this.previewDescription,
    this.upgrades,
    this.id,
    this.poolIds,
    this.activePrepaidMilestone,
    this.negotiated,
    this.title,
    this.submitdate,
    this.nonpublic,
    this.location,
    this.isBuyerKycRequired,
    this.type,
    this.hireme,
    this.ownerId,
    this.status,
    this.deleted,
    this.timeFreeBidsExpire,
    this.frontendProjectStatus,
    this.timeUpdated,
    this.language,
    this.seoUrl,
    this.urgent,
    this.local,
    this.timeSubmitted,
    this.budget,
    this.bidStats,
    this.isSellerKycRequired,
  });

  FLProject.fromJson(Map<String, dynamic> json) {
    hidebids = json['hidebids'];
    isEscrowProject = json['is_escrow_project'];
    bidperiod = json['bidperiod'];
    currency = json['currency'] != null
        ? new FLCurrency.fromJson(json['currency'])
        : null;
    featured = json['featured'];
    previewDescription = json['preview_description'];
    upgrades = json['upgrades'] != null
        ? new FLUpgrades.fromJson(json['upgrades'])
        : null;
    id = json['id'];
    poolIds = json['pool_ids'].cast<String>();
    activePrepaidMilestone = json['active_prepaid_milestone'];
    negotiated = json['negotiated'];
    title = json['title'];
    submitdate = json['submitdate'];
    nonpublic = json['nonpublic'];
    location = json['location'] != null
        ? new FLLocation.fromJson(json['location'])
        : null;
    isBuyerKycRequired = json['is_buyer_kyc_required'];
    type = json['type'];
    hireme = json['hireme'];
    ownerId = json['owner_id'];
    status = json['status'];
    deleted = json['deleted'];
    timeFreeBidsExpire = json['time_free_bids_expire'];
    frontendProjectStatus = json['frontend_project_status'];
    timeUpdated = json['time_updated'];
    language = json['language'];
    seoUrl = json['seo_url'];
    urgent = json['urgent'];
    local = json['local'];
    timeSubmitted = json['time_submitted'];
    budget =
        json['budget'] != null ? new FLBudget.fromJson(json['budget']) : null;
    bidStats = json['bid_stats'] != null
        ? new FLBidStats.fromJson(json['bid_stats'])
        : null;
    isSellerKycRequired = json['is_seller_kyc_required'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['hidebids'] = this.hidebids;
    data['is_escrow_project'] = this.isEscrowProject;
    data['bidperiod'] = this.bidperiod;
    if (this.currency != null) {
      data['currency'] = this.currency.toJson();
    }
    data['featured'] = this.featured;
    data['preview_description'] = this.previewDescription;
    if (this.upgrades != null) {
      data['upgrades'] = this.upgrades.toJson();
    }
    data['id'] = this.id;
    data['pool_ids'] = this.poolIds;
    data['active_prepaid_milestone'] = this.activePrepaidMilestone;
    data['negotiated'] = this.negotiated;
    data['title'] = this.title;
    data['submitdate'] = this.submitdate;
    data['nonpublic'] = this.nonpublic;
    if (this.location != null) {
      data['location'] = this.location.toJson();
    }
    data['is_buyer_kyc_required'] = this.isBuyerKycRequired;
    data['type'] = this.type;
    data['hireme'] = this.hireme;
    data['owner_id'] = this.ownerId;
    data['status'] = this.status;
    data['deleted'] = this.deleted;
    data['time_free_bids_expire'] = this.timeFreeBidsExpire;
    data['frontend_project_status'] = this.frontendProjectStatus;
    data['time_updated'] = this.timeUpdated;
    data['language'] = this.language;
    data['seo_url'] = this.seoUrl;
    data['urgent'] = this.urgent;
    data['local'] = this.local;
    data['time_submitted'] = this.timeSubmitted;
    if (this.budget != null) {
      data['budget'] = this.budget.toJson();
    }
    if (this.bidStats != null) {
      data['bid_stats'] = this.bidStats.toJson();
    }
    data['is_seller_kyc_required'] = this.isSellerKycRequired;
    return data;
  }
}
