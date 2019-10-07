// Copyright 2019 Joshua de Guzman (https://joshuadeguzman.github.io). All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// TODO: Complete upgrades model, remove null data types
class FLUpgrades {
  bool nonCompete;
  bool projectManagement;
  bool nDA;
  bool assisted;
  bool urgent;
  bool featured;
  bool nonpublic;
  bool fulltime;
  bool qualified;
  bool sealed;
  bool pfOnly;
  bool ipContract;

  FLUpgrades({
    this.nonCompete,
    this.projectManagement,
    this.nDA,
    this.assisted,
    this.urgent,
    this.featured,
    this.nonpublic,
    this.fulltime,
    this.qualified,
    this.sealed,
    this.pfOnly,
    this.ipContract,
  });

  FLUpgrades.fromJson(Map<String, dynamic> json) {
    nonCompete = json['non_compete'];
    projectManagement = json['project_management'];
    nDA = json['NDA'];
    assisted = json['assisted'];
    urgent = json['urgent'];
    featured = json['featured'];
    nonpublic = json['nonpublic'];
    fulltime = json['fulltime'];
    qualified = json['qualified'];
    sealed = json['sealed'];
    pfOnly = json['pf_only'];
    ipContract = json['ip_contract'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['active_prepaid_milestone'] = this.activePrepaidMilestone;
    data['success_bundle'] = this.successBundle;
    data['non_compete'] = this.nonCompete;
    data['project_management'] = this.projectManagement;
    data['extend'] = this.extend;
    data['NDA'] = this.nDA;
    data['assisted'] = this.assisted;
    data['urgent'] = this.urgent;
    data['featured'] = this.featured;
    data['nonpublic'] = this.nonpublic;
    data['fulltime'] = this.fulltime;
    data['qualified'] = this.qualified;
    data['sealed'] = this.sealed;
    data['pf_only'] = this.pfOnly;
    data['ip_contract'] = this.ipContract;
    data['recruiter'] = this.recruiter;
    data['listed'] = this.listed;
    return data;
  }
}
