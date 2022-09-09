class Model {
  List<String>? domains;
  String? alphaTwoCode;
  String? country;
  List<String>? webPages;
  String? name;
  String? stateProvince;

  Model(
      {this.domains,
      this.alphaTwoCode,
      this.country,
      this.webPages,
      this.name,
      this.stateProvince});

  Model.fromJson(Map<String, dynamic> json) {
    domains = json['domains'].cast<String>();
    alphaTwoCode = json['alpha_two_code'];
    country = json['country'];
    webPages = json['web_pages'].cast<String>();
    name = json['name'];
    stateProvince = json['state-province'];
  }

  Map<String, dynamic> toJson() {
    // ignore: prefer_collection_literals
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['domains'] = domains;
    data['alpha_two_code'] = alphaTwoCode;
    data['country'] = country;
    data['web_pages'] = webPages;
    data['name'] = name;
    data['state-province'] = stateProvince;
    return data;
  }
}
