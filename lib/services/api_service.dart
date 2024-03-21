import 'package:api_integration/models/User_details_model.dart';
import 'package:get/get.dart';

class ApiService extends GetConnect{
  Future<List<UserDetailsModel>?> fetchUserDetailsListPage() async {
    var response = await get("https://dummy.restapiexample.com/api/v1/employees",headers: {});

    List<UserDetailsModel> userList = List<UserDetailsModel>.empty(growable: true).obs;

    if(response.isOk) {
      var body = response.body;
      if (body != null) {
        var data = body["data"];
        for(var d in data) {
          userList.add(UserDetailsModel.fromJson(d));
        }
        return userList;
      }
    }
    return List.empty();
  }
}