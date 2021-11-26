import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
      ),
      body: Obx(() {
        return FutureBuilder(
            future: FutureList.value,
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                print(snapshot.data![0]);
                return ListView(
                  children: List.generate(
                    snapshot.data!.length,
                    (index) {
                      return Card(
                        child: ListTile(
                          title: Text(snapshot.data![index]),
                        ),
                      );
                    },
                  ),
                );
              } else {
                return Text('Get Your Location .... ');
              }
            });
      }),
    );
  }
}
