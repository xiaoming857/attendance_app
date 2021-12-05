import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/devices_page_controller.dart';

class DevicesPageView extends GetView<DevicesPageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Devices'),
        actions: [
          IconButton(
            icon: Icon(Icons.search_rounded),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.add_rounded),
            onPressed: () {},
          ),
        ],
      ),
      body: GridView.count(
        crossAxisCount: 2,
        shrinkWrap: false,
        childAspectRatio: 0.75,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        children: [
          for (int i = 0; i < 10; i++)
            Card(
              child: InkWell(
                onTap: () {},
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Image.asset(
                        'assets/images/attendance-machine.png',
                        color: Colors.grey,
                      ),
                    ),
                    Column(
                      children: [
                        FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            'Device ${i}',
                            style: const TextStyle(
                              fontSize: 24,
                            ),
                          ),
                        ),
                        const Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ornare eros libero, id mattis est tempor ut.',
                          overflow: TextOverflow.fade,
                          maxLines: 2,
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                    Divider(
                      indent: 10,
                      endIndent: 10,
                      thickness: 5,
                      color: (i == 0)
                          ? Colors.red
                          : (i == 1)
                              ? Colors.orange
                              : Colors.lightGreen,
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
