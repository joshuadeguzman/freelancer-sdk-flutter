// Copyright 2019 Joshua de Guzman (https://joshuadeguzman.github.io). All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// TODO: Complete country model, remove null data types
class FLCountry {
  Null highresFlagUrl;
  Null code;
  Null name;
  Null seoUrl;
  Null flagUrlCdn;
  Null highresFlagUrlCdn;
  Null phoneCode;
  Null languageCode;
  Null demonym;
  Null languageId;
  Null person;
  Null iso3;
  Null sanction;
  Null flagUrl;
  Null regionId;

  FLCountry({
    this.highresFlagUrl,
    this.code,
    this.name,
    this.seoUrl,
    this.flagUrlCdn,
    this.highresFlagUrlCdn,
    this.phoneCode,
    this.languageCode,
    this.demonym,
    this.languageId,
    this.person,
    this.iso3,
    this.sanction,
    this.flagUrl,
    this.regionId,
  });

  FLCountry.fromJson(Map<String, dynamic> json) {
    highresFlagUrl = json['highres_flag_url'];
    code = json['code'];
    name = json['name'];
    seoUrl = json['seo_url'];
    flagUrlCdn = json['flag_url_cdn'];
    highresFlagUrlCdn = json['highres_flag_url_cdn'];
    phoneCode = json['phone_code'];
    languageCode = json['language_code'];
    demonym = json['demonym'];
    languageId = json['language_id'];
    person = json['person'];
    iso3 = json['iso3'];
    sanction = json['sanction'];
    flagUrl = json['flag_url'];
    regionId = json['region_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['highres_flag_url'] = this.highresFlagUrl;
    data['code'] = this.code;
    data['name'] = this.name;
    data['seo_url'] = this.seoUrl;
    data['flag_url_cdn'] = this.flagUrlCdn;
    data['highres_flag_url_cdn'] = this.highresFlagUrlCdn;
    data['phone_code'] = this.phoneCode;
    data['language_code'] = this.languageCode;
    data['demonym'] = this.demonym;
    data['language_id'] = this.languageId;
    data['person'] = this.person;
    data['iso3'] = this.iso3;
    data['sanction'] = this.sanction;
    data['flag_url'] = this.flagUrl;
    data['region_id'] = this.regionId;
    return data;
  }
}
