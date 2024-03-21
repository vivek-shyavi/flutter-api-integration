class UserDetailsModel {
  UserDetailsModel({
      int? id, 
      String? employeeName, 
      int? employeeSalary, 
      int? employeeAge, 
      String? profileImage,}){
    _id = id;
    _employeeName = employeeName;
    _employeeSalary = employeeSalary;
    _employeeAge = employeeAge;
    _profileImage = profileImage;
}

  UserDetailsModel.fromJson(dynamic json) {
    _id = json['id'];
    _employeeName = json['employee_name'];
    _employeeSalary = json['employee_salary'];
    _employeeAge = json['employee_age'];
    _profileImage = json['profile_image'];
  }
  int? _id;
  String? _employeeName;
  int? _employeeSalary;
  int? _employeeAge;
  String? _profileImage;

  int? get id => _id;
  String? get employeeName => _employeeName;
  int? get employeeSalary => _employeeSalary;
  int? get employeeAge => _employeeAge;
  String? get profileImage => _profileImage;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['employee_name'] = _employeeName;
    map['employee_salary'] = _employeeSalary;
    map['employee_age'] = _employeeAge;
    map['profile_image'] = _profileImage;
    return map;
  }

}
class UserDetailsModelList {
  List<UserDetailsModel>? data;

  //json to class
  UserDetailsModelList.fromJson(dynamic json) {
    if (json["data"] != null) {
      data?.clear();
      json['data']
          .forEach((value) => {data?.add(UserDetailsModel.fromJson(value))});
    }
  }
}