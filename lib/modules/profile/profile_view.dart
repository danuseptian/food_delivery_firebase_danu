import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_firebase_danu/data/dummy.dart';
import 'package:food_delivery_firebase_danu/modules/dashboard/dashboard_controller.dart';
import 'package:food_delivery_firebase_danu/service/fireauth_service.dart';
import 'package:get/get.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dashboardC = Get.find<DashboardController>();
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: List.generate(
                profileOption.length,
                (index) {
                  var item = profileOption[index];
                  return Column(
                    children: [
                      if (index == 0)
                        Container(
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.topRight,
                                child: IconButton(
                                  icon: Icon(
                                    Icons.logout,
                                  ),
                                  onPressed: () {
                                    AwesomeDialog(
                                      context: context,
                                      keyboardAware: true,
                                      dismissOnBackKeyPress: false,
                                      dialogType: DialogType.WARNING,
                                      animType: AnimType.BOTTOMSLIDE,
                                      btnCancelText: "Cancel",
                                      btnOkText: "Confirm",
                                      title: 'Do you want to logout?',
                                      btnCancelOnPress: () {},
                                      btnOkOnPress: () {
                                        FireAuthService.logout();
                                        dashboardC.selectedIndex.value = 0;
                                      },
                                    ).show();
                                  },
                                ),
                              ),
                              Container(
                                height: 150,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.contain,
                                    image: NetworkImage(
                                        '${FireAuthService.auth.currentUser?.photoURL}'),
                                  ),
                                  shape: BoxShape.circle,
                                ),
                              ),
                              SizedBox(height: 10),
                              Container(
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    '${FireAuthService.auth.currentUser?.displayName}',
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 32,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    '${FireAuthService.auth.currentUser?.email}',
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      Divider(
                        height: 16,
                        thickness: 1,
                        color: Colors.grey[400],
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(vertical: 10),
                                alignment: Alignment.topLeft,
                                child: Text(
                                  '$item',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
