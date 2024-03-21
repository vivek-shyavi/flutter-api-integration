import 'dart:developer';

import 'package:api_integration/services/api_service.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../models/User_details_model.dart';

class UserDetailsPageController extends GetxController{
    List<UserDetailsModel> userDetailList = List<UserDetailsModel>.empty(growable: true).obs;

    final ApiService _apiService = ApiService();

    fetchUserDetailsList(){
        _apiService.fetchUserDetailsListPage().then((value) => {
            log(value.toString()),
            if(value!=null){
                userDetailList.addAll(value)
            }
        });
    }
}