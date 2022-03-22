import 'package:flutter/material.dart';

import 'package:flutter_tailor_app/controller/onboardingcontroller.dart';
import 'package:get/get.dart';

class OnboardingPage extends StatelessWidget {
  // const OnboardingPage({Key? key}) : super(key: key);

  OnboardingController _controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: _controller.pageController,
            onPageChanged: _controller.selectedPageIndex,
            itemCount: _controller.onboardingPages.length,
            itemBuilder: (context, index) {
              return Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(_controller.onboardingPages[index].imageAsset),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      _controller.onboardingPages[index].title,
                      textScaleFactor: 2,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Text(
                        _controller.onboardingPages[index].description,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 18, color: Colors.black54),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
          Positioned(
            bottom: 20,
            left: 20,
            child: Row(
              children: List.generate(
                _controller.onboardingPages.length,
                (index) => Obx(() {
                  return Container(
                    margin: const EdgeInsets.all(4),
                    width: 12,
                    height: 12,
                    decoration: BoxDecoration(
                      color: _controller.selectedPageIndex.value == index
                          ? Colors.red
                          : Colors.grey,
                      shape: BoxShape.circle,
                    ),
                  );
                }),
              ),
            ),
          ),
          Positioned(
              right: 20,
              bottom: 20,
              child: FloatingActionButton(
                onPressed: () {
                  _controller.forwardAction();
                },
                child:
                    Obx(() => Text(_controller.isLastPage ? "Start" : "Next")),
              ))
        ],
      ),
    );
  }
}
