class FLTimezone {
  String country;
  int offset;
  int id;
  String timezone;

  FLTimezone({this.country, this.offset, this.id, this.timezone});

  FLTimezone.fromJson(Map<String, dynamic> json) {
    country = json['country'];
    offset = json['offset'];
    id = json['id'];
    timezone = json['timezone'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['country'] = this.country;
    data['offset'] = this.offset;
    data['id'] = this.id;
    data['timezone'] = this.timezone;
    return data;
  }
}