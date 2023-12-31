class AgeModel {
  int? year;
  int? month;
  int? day;

  AgeModel({
    this.year,
    this.month,
    this.day,
  });

  AgeModel.fromJson(Map<String, dynamic> json) {
    year = json['year'];
    month = json['month'];
    day = json['day'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['year'] = year;
    data['month'] = month;
    data['day'] = day;

    return data;
  }
}
