import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: 0,
        children: [
          //Home

          Container(
            height: Get.height,
            width: Get.width,
            child: SingleChildScrollView(
              child: Stack(
                children: [
                  Column(
                    children: [
                      //TopBar
                      Container(
                        padding: EdgeInsets.all(Get.width * 0.05),
                        height: Get.height * 0.23,
                        width: Get.width,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(Get.width * 0.08),
                            bottomLeft: Radius.circular(Get.width * 0.08),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Container(
                                height: Get.width * 0.16,
                                child: const CircleAvatar(
                                  backgroundColor: Colors.grey,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Container(
                                padding: EdgeInsets.all(Get.width * 0.02),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Hello, Account Name!",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: Get.width * 0.05,
                                      ),
                                    ),
                                    const Text(
                                      "accountemail@email.com",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.all(Get.width * 0.02),
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Icon(
                                    Icons.notifications,
                                    color: Colors.white,
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    shape: CircleBorder(),
                                    padding: EdgeInsets.all(10),
                                    primary: Colors.black,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      //AppMEnu
                      Container(
                        width: Get.width,
                        height: Get.height * 0.7,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Column(
                            children: [
                              SizedBox(height: Get.height * 0.05),
                              //MENU ===================
                              Container(
                                height: Get.height * 0.15,
                                width: Get.width,
                                padding: EdgeInsets.symmetric(
                                    horizontal: Get.width * 0.05),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: const [
                                    MenuApp(
                                      title: "SDM",
                                    ),
                                    MenuApp(
                                      title: "SIGAP",
                                    ),
                                    MenuApp(
                                      title: "SIPS",
                                    ),
                                    MenuApp(
                                      title: "Siwaslu",
                                    ),
                                    MenuApp(
                                      title: "Gowaslu",
                                    ),
                                  ],
                                ),
                              ),
                              //NEWS ====================
                              Container(
                                width: Get.width,
                                padding: EdgeInsets.only(
                                  bottom: Get.width * 0.05,
                                  left: Get.width * 0.05,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'News',
                                      style: TextStyle(
                                        fontSize: Get.width * 0.05,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.red,
                                      ),
                                    ),
                                    SizedBox(height: Get.width * 0.02),
                                    SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        children: [
                                          const NewsCard(),
                                          const NewsCard(),
                                          const NewsCard(),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              //Activity ====================
                              Container(
                                width: Get.width,
                                padding: EdgeInsets.only(
                                  bottom: Get.width * 0.05,
                                  left: Get.width * 0.05,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Activity',
                                      style: TextStyle(
                                        fontSize: Get.width * 0.05,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.red,
                                      ),
                                    ),
                                    SizedBox(height: Get.width * 0.02),
                                    SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        children: [
                                          const ActivityCard(),
                                          const ActivityCard(),
                                          const ActivityCard(),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  //search
                  Positioned(
                    top: Get.height * 0.18,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        vertical: Get.width * 0.02,
                        horizontal: Get.width * 0.05,
                      ),
                      width: Get.width,
                      height: Get.height * 0.1,
                      child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(
                          vertical: Get.width * 0.02,
                          horizontal: Get.width * 0.02,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(Get.width),
                          boxShadow: const [
                            BoxShadow(
                              offset: Offset(0, 1),
                              blurRadius: 5,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            labelText: 'Search...',
                            focusColor: Colors.black,
                            fillColor: Colors.black,
                            hoverColor: Colors.black,
                            prefixIcon: ElevatedButton(
                              onPressed: () {},
                              child: Icon(
                                Icons.search,
                                color: Colors.white,
                              ),
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                padding: EdgeInsets.all(10),
                                primary: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          //Profile

          //Dashboard

          //Setting
        ],
      ),
      bottomNavigationBar: Container(
        height: Get.height * 0.10,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Get.width * 0.08),
            topRight: Radius.circular(Get.width * 0.08),
          ),
          boxShadow: const [
            BoxShadow(
              offset: Offset(0, 1),
              blurRadius: 5,
              color: Colors.grey,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Get.width * 0.08),
            topRight: Radius.circular(Get.width * 0.08),
          ),
          child: BottomNavigationBar(
            selectedItemColor: Colors.red,
            unselectedItemColor: Colors.grey,
            onTap: (value) => {},
            showUnselectedLabels: true,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: 'Profile'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.dashboard), label: 'Dashboard'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: 'Settings'),
            ],
          ),
        ),
      ),
    );
  }
}

class NewsCard extends StatelessWidget {
  const NewsCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(Get.width * 0.02),
      child: Container(
        padding: EdgeInsets.all(Get.width * 0.02),
        height: Get.width * 0.6,
        width: Get.width * 0.65,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(
            Get.width * 0.05,
          ),
          boxShadow: const [
            BoxShadow(
              offset: Offset(0, 0.3),
              blurRadius: 4,
              color: Colors.grey,
            ),
          ],
        ),
        child: Column(
          children: [
            Container(
              height: Get.width * 0.35,
              width: Get.width,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(
                  Get.width * 0.04,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                vertical: Get.width * 0.005,
              ),
              height: Get.width * 0.15,
              width: Get.width,
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec hendrerit malesuada neque, a vestibulum neque lacinia non. Praesent ac luctus urna. Nunc bibendum sodales tortor, vitae suscipit elit convallis nec. Suspendisse nec mi eu diam porttitor venenatis. Aenean gravida dui bibendum, tincidunt est eu, pharetra erat. In pharetra nisl nibh, sed cursus est tincidunt nec. Duis rhoncus interdum neque, nec elementum quam tristique tempus.',
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: Get.width * 0.04,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Container(
              height: Get.width * 0.05,
              width: Get.width,
              color: Colors.white,
              child: Text(
                'Selasa, 25 Oktober 2022 - 16:00 WIB',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: Get.width * 0.035,
                  color: Colors.red,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ActivityCard extends StatelessWidget {
  const ActivityCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(Get.width * 0.02),
      child: Container(
        padding: EdgeInsets.all(Get.width * 0.04),
        height: Get.width * 0.3,
        width: Get.width * 0.8,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(
            Get.width * 0.05,
          ),
          boxShadow: const [
            BoxShadow(
              offset: Offset(0, 0.3),
              blurRadius: 4,
              color: Colors.grey,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                vertical: Get.width * 0.005,
              ),
              height: Get.width * 0.15,
              width: Get.width,
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec hendrerit malesuada neque, a vestibulum neque lacinia non. Praesent ac luctus urna. Nunc bibendum sodales tortor, vitae suscipit elit convallis nec. Suspendisse nec mi eu diam porttitor venenatis. Aenean gravida dui bibendum, tincidunt est eu, pharetra erat. In pharetra nisl nibh, sed cursus est tincidunt nec. Duis rhoncus interdum neque, nec elementum quam tristique tempus.',
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: Get.width * 0.04,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Container(
              height: Get.width * 0.05,
              width: Get.width,
              color: Colors.white,
              child: Text(
                'Selasa, 25 Oktober 2022 - 16:00 WIB',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: Get.width * 0.035,
                  color: Colors.red,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MenuApp extends StatelessWidget {
  const MenuApp({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: Get.width * 0.07,
            backgroundColor: Colors.grey[300],
          ),
          SizedBox(
            height: Get.width * 0.02,
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: Get.width * 0.04,
            ),
          ),
        ],
      ),
    );
  }
}
