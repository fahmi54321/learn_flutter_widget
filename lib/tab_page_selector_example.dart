import 'package:flutter/material.dart';

List<Widget> widgets = const [
  Icon(Icons.home),
  Icon(Icons.settings),
  Icon(Icons.person),
];

class TabPageSelectorExample extends StatefulWidget {
  const TabPageSelectorExample({super.key});

  @override
  State<TabPageSelectorExample> createState() => _TabPageSelectorExampleState();
}

class _TabPageSelectorExampleState extends State<TabPageSelectorExample>
    with SingleTickerProviderStateMixin {
  late final TabController controller;

  int index = 0;

  @override
  void initState() {
    super.initState();
    controller = TabController(
      length: widgets.length,
      vsync: this,
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          TabBarView(
            controller: controller,
            children: widgets,
          ),
          Positioned(
            bottom: 40.0,
            child: TabPageSelector(
              controller: controller,
              color: Colors.black38,
            ),
          ),
        ],
      ),
      floatingActionButton: ButtonBar(
        children: [
          FloatingActionButton.small(
            onPressed: () {
              (index != widgets.length - 1) ? index++ : index = 0;
              controller.animateTo(index);
            },
            hoverElevation: 0.0,
            elevation: 0.0,
            child: const Icon(Icons.navigate_next),
          ),
        ],
      ),
    );
  }
}
