import 'package:api_integration/controllers/user_details_page_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserDetailsPageView extends GetView<UserDetailsPageController> {
  UserDetailsPageView({super.key}) {
    Get.put(UserDetailsPageController());
    controller.fetchUserDetailsList();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text("User List"),
          ),
          body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                        controller.userDetailList[index].employeeName ?? "-"),
                  ),
                );
              },
              itemCount: controller.userDetailList.length,
            ),
          ),
        ),
      );
    });
  }
}
