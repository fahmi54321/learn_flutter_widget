import 'package:flutter/material.dart';
import 'package:learn_flutter_widget/absorb_pointer.dart';
import 'package:learn_flutter_widget/animated_align.dart';
import 'package:learn_flutter_widget/animated_builder.dart';
import 'package:learn_flutter_widget/animated_container.dart';
import 'package:learn_flutter_widget/animated_cross_fade.dart';
import 'package:learn_flutter_widget/animated_list.dart';
import 'package:learn_flutter_widget/animated_opacity.dart';
import 'package:learn_flutter_widget/animated_positioned_example.dart';
import 'package:learn_flutter_widget/animated_size_example.dart';
import 'package:learn_flutter_widget/animated_text.dart';
import 'package:learn_flutter_widget/animated_widget_example.dart';
import 'package:learn_flutter_widget/app_bar_example.dart';
import 'package:learn_flutter_widget/aspect_ratio_example.dart';
import 'package:learn_flutter_widget/autocomplete_example.dart';
import 'package:learn_flutter_widget/backdropfilter_example.dart';
import 'package:learn_flutter_widget/cupertino_picker_example.dart';
import 'package:learn_flutter_widget/cupertino_segmented_control_example.dart';
import 'package:learn_flutter_widget/cupertino_sliver_navigation_bar_example.dart';
import 'package:learn_flutter_widget/data_table_example.dart';
import 'package:learn_flutter_widget/decorateBox_transation_example.dart';
import 'package:learn_flutter_widget/draggable_example.dart';
import 'package:learn_flutter_widget/draggable_scrollable_sheet.dart';
import 'package:learn_flutter_widget/fitted_box_example.dart';
import 'package:learn_flutter_widget/flow_example.dart';
import 'package:learn_flutter_widget/fractionally_sizedbox_example.dart';
import 'package:learn_flutter_widget/indexed_stack_example.dart';
import 'package:learn_flutter_widget/intrinsic_height_width_example.dart';
import 'package:learn_flutter_widget/limited_box_example.dart';
import 'package:learn_flutter_widget/notification_scroll_listener_example.dart';
import 'package:learn_flutter_widget/physical_model.dart';
import 'package:learn_flutter_widget/sliver_appbar_example.dart';
import 'package:learn_flutter_widget/transform_example.dart';

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
                      builder: (_) => AbsorbPointerExample(),
                    ),
                  );
                },
                child: const Text('Absorb pointer'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => AnimatedAlignExample(),
                    ),
                  );
                },
                child: const Text('Animated align'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => AnimatedBuilderExample(),
                    ),
                  );
                },
                child: const Text('Animated builder'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => AnimatedContainerExample(),
                    ),
                  );
                },
                child: const Text('Animated container'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => AnimatedCrossFadeExample(),
                    ),
                  );
                },
                child: const Text('Animated cross fade'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => DefaultTextStyleTransitionExample(),
                    ),
                  );
                },
                child: const Text('Animated text'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => AnimatedListSample(),
                    ),
                  );
                },
                child: const Text('Animated list'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => LogoFade(),
                    ),
                  );
                },
                child: const Text('Animated opacity'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => PhysicalModelExample(),
                    ),
                  );
                },
                child: const Text('Physical Model'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => AnimatedPositionedExample(),
                    ),
                  );
                },
                child: const Text('Animated Posiotioned'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => AnimatedSizeExample(),
                    ),
                  );
                },
                child: const Text('Animated Size'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => AnimatedWidgetExample(),
                    ),
                  );
                },
                child: const Text('Animated Widget'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => AppBarExample(),
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
                      builder: (_) => AspectRatioExample(),
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
                      builder: (_) => AutocompleteBasicExample(),
                    ),
                  );
                },
                child: const Text('Autocomplete'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => BackdropfilterExample(),
                    ),
                  );
                },
                child: const Text('Backdropfilter'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => CupertinoPickerExample(),
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
                      builder: (_) => SegmentedControlExample(),
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
                      builder: (_) => SliverNavBarExample(),
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
                      builder: (_) => DataTableExample(),
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
                      builder: (_) => DecoratedBoxTransitionExample(),
                    ),
                  );
                },
                child: const Text('Decorated box transition'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => DraggableExample(),
                    ),
                  );
                },
                child: const Text('Draggable'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => DraggableScrollableSheetExample(),
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
                      builder: (_) => FittedBoxExample(),
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
                      builder: (_) => FlowExample(),
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
                      builder: (_) => TransformExample(),
                    ),
                  );
                },
                child: const Text('Transform'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => FractionallySizedBoxExample(),
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
                      builder: (_) => IndexedStackExample(),
                    ),
                  );
                },
                child: const Text('Indexed Stack'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => IntrinsicHeightWidthExample(),
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
                      builder: (_) => LimitedBoxExample(),
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
                      builder: (_) => NotificationScrollListenerExample(),
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
                      builder: (_) => SliverAppBarExample(),
                    ),
                  );
                },
                child: const Text('Sliver app bar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
