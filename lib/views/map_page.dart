import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:techub/views/home_page.dart';

import '../widgets/custom_map.dart';

class MapPage extends GetView {
  const MapPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Your Location"),
      ),
      body: getMap(),
    );
  }
}
