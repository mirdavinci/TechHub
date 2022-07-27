import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:techub/views/map_page.dart';

import '../controllers/hover_event_controller.dart';
import '../utils/constants.dart';

class CustomOnHoverContainer extends GetView {
  const CustomOnHoverContainer({
    Key? key,
    // required this.child
  }) : super(key: key);

  // final Widget child;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HoverEventController());
    return MouseRegion(
      onEnter: (event) => controller.onEntered(true),
      onExit: (event) => controller.onEntered(false),
      child: Flexible(
        flex: 1,
        child: AnimatedContainer(
          margin: const EdgeInsets.only(right: 405),
          height: 250,
          width: 400,
          duration: const Duration(milliseconds: 200),
          child: Stack(
            children: [
              Obx(
                () => Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: !controller.isHovered.value
                          ? null
                          : const Color(0xff17479D),
                      image: DecorationImage(
                          image: const AssetImage("assets/pics/map.jpg"),
                          opacity: controller.isHovered.value ? 0.5 : 1)),
                ),
              ),
              Center(
                child: Obx(
                  () => Visibility(
                    visible: controller.isHovered.value ? true : false,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color(0xffFFFFFF))),
                      onPressed: () {
                        Get.to(() => const MapPage());
                      },
                      child: const Text(
                        "Show Property Location",
                        style: TextStyle(color: Color(0xff17479D)),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
