import 'package:flutter/material.dart';
import 'package:learn_flutter_widget/absorb_pointer.dart';
import 'package:learn_flutter_widget/animated_align.dart';
import 'package:learn_flutter_widget/animated_builder.dart';
import 'package:learn_flutter_widget/animated_container.dart';
import 'package:learn_flutter_widget/animated_cross_fade.dart';
import 'package:learn_flutter_widget/animated_list.dart';
import 'package:learn_flutter_widget/animated_opacity.dart';
import 'package:learn_flutter_widget/animated_text.dart';
import 'package:learn_flutter_widget/app_bar_example.dart';
import 'package:learn_flutter_widget/aspect_ratio_example.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
