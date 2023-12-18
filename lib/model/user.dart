class UserModel {
  String? nameUser;
  String? birthDateUser;

  UserModel({
    this.nameUser,
    this.birthDateUser,
  });

  UserModel.fromJson(Map<String, dynamic> json) {
    nameUser = json['nameUser'];
    birthDateUser = json['birthDateUser'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['nameUser'] = nameUser;
    data['birthDateUser'] = birthDateUser;
    return data;
  }
}
