import 'package:flutter/material.dart';
import 'package:learn_flutter_widget/app_bar_example.dart';
import 'package:learn_flutter_widget/aspect_ratio_example.dart';
import 'package:learn_flutter_widget/cupertino_picker_example.dart';
import 'package:learn_flutter_widget/cupertino_segmented_control_example.dart';
import 'package:learn_flutter_widget/cupertino_sliver_navigation_bar_example.dart';
import 'package:learn_flutter_widget/data_table_example.dart';
import 'package:learn_flutter_widget/decorateBox_transation_example.dart';
import 'package:learn_flutter_widget/draggable_scrollable_sheet.dart';
import 'package:learn_flutter_widget/fitted_box_example.dart';
import 'package:learn_flutter_widget/flow_example.dart';
import 'package:learn_flutter_widget/fractionally_sizedbox_example.dart';
import 'package:learn_flutter_widget/intrinsic_height_width_example.dart';
import 'package:learn_flutter_widget/limited_box_example.dart';
import 'package:learn_flutter_widget/notification_scroll_listener_example.dart';
import 'package:learn_flutter_widget/sliver_appbar_example.dart';
import 'package:learn_flutter_widget/sliver_grid_and_list_example.dart';
import 'package:learn_flutter_widget/tab_page_selector_example.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: GridView.count(
            mainAxisSpacing: 20.0,
            crossAxisSpacing: 4.0,
            childAspectRatio: 16 / 4,
            crossAxisCount: 2,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const AppBarExample(),
                    ),
                  );
                },
                child: const Text('Appbar'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const AspectRatioExample(),
                    ),
                  );
                },
                child: const Text('Aspect ratio'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const CupertinoPickerExample(),
                    ),
                  );
                },
                child: const Text('Cupertino picker'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const SegmentedControlExample(),
                    ),
                  );
                },
                child: const Text('Cupertino segmented control'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const SliverNavBarExample(),
                    ),
                  );
                },
                child: const Text('Cupertino sliver navigation bar'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const DataTableExample(),
                    ),
                  );
                },
                child: const Text('Data table'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const DecoratedBoxTransitionExample(),
                    ),
                  );
                },
                child: const Text('Decorated box'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const DraggableScrollableSheetExample(),
                    ),
                  );
                },
                child: const Text('DraggableScrollableSheet'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const FittedBoxExample(),
                    ),
                  );
                },
                child: const Text('Fitted box'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const FlowExample(),
                    ),
                  );
                },
                child: const Text('Flow'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const FractionallySizedBoxExample(),
                    ),
                  );
                },
                child: const Text('Fractionally Sizedbox'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const IntrinsicHeightWidthExample(),
                    ),
                  );
                },
                child: const Text('Intrinsic Height Width'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const LimitedBoxExample(),
                    ),
                  );
                },
                child: const Text('Limited Box'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const NotificationScrollListenerExample(),
                    ),
                  );
                },
                child: const Text('Notification scroll listener'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const SliverAppBarExample(),
                    ),
                  );
                },
                child: const Text('Sliver app bar'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const SliverGridAndListExample(),
                    ),
                  );
                },
                child: const Text('Sliver grid and list'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const TabPageSelectorExample(),
                    ),
                  );
                },
                child: const Text('Tab page selector'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
