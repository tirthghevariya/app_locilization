import 'package:get/get.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    void changeLanguage(String lanCode) async {
      Locale locale = Locale(lanCode);

      await Get.updateLocale(locale);
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('flutter translation'),
        actions: [
          IconButton(
            onPressed: () {
              Get.defaultDialog(
                title: 'select Language',
                middleText: 'Select your prefers language',
                actions: [
                  InputChip(
                    label: const Text('English'),
                    onSelected: (value) {
                      changeLanguage('en');
                    },
                  ),
                  InputChip(
                    label: const Text('Hindi'),
                    onSelected: (value) {
                      changeLanguage('hi');
                    },
                  ),
                  InputChip(
                    label: const Text('Portuguese '),
                    onSelected: (value) {
                      changeLanguage('pt');
                    },
                  ),
                ],
              );
            },
            icon: const Icon(Icons.translate),
          )
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Simple Translation',
                style: TextStyle(fontSize: 20.0),
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Divider(),
              Text('languages_btn_english'.tr),
              const SizedBox(
                height: 10.0,
              ),
              const Divider(),
              Text('home_description'.tr),
              const SizedBox(
                height: 10.0,
              ),
              const Divider(),
              Text('home_btn_text'.tr),
              const SizedBox(
                height: 10.0,
              ),
              const Divider(),
              Text('languages_description'.tr),
            ],
          ),
        ),
      ),
    );
  }
}
