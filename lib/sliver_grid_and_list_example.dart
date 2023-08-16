import 'package:flutter/material.dart';
import 'dart:math' as math;

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate({
    required this.minHeight,
    required this.maxHeight,
    required this.child,
  });
  final double minHeight;
  final double maxHeight;
  final Widget child;
  @override
  double get minExtent => minHeight;
  @override
  double get maxExtent => math.max(maxHeight, minHeight);
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox.expand(child: child);
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}

class SliverGridAndListExample extends StatelessWidget {
  const SliverGridAndListExample({super.key});

  SliverPersistentHeader makeHeader(String headerText) {
    return SliverPersistentHeader(
      pinned: true,
      delegate: _SliverAppBarDelegate(
        minHeight: 60.0,
        maxHeight: 100.0,
        child: Container(
            color: Colors.black,
            child: Center(
                child: Text(
              headerText,
              style: const TextStyle(
                color: Colors.white,
              ),
            ))),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomScrollView(
            slivers: <Widget>[
              makeHeader('SliverGrid.count('),
              SliverGrid.count(
                crossAxisCount: 3,
                children: [
                  Container(color: Colors.red, height: 150.0),
                  Container(color: Colors.purple, height: 150.0),
                  Container(color: Colors.green, height: 150.0),
                  Container(color: Colors.orange, height: 150.0),
                  Container(color: Colors.yellow, height: 150.0),
                  Container(color: Colors.pink, height: 150.0),
                  Container(color: Colors.cyan, height: 150.0),
                  Container(color: Colors.indigo, height: 150.0),
                  Container(color: Colors.blue, height: 150.0),
                ],
              ),
              makeHeader('SliverFixedExtentList'),
              SliverFixedExtentList(
                itemExtent: 150.0,
                delegate: SliverChildListDelegate(
                  [
                    Container(color: Colors.red),
                    Container(color: Colors.purple),
                    Container(color: Colors.green),
                    Container(color: Colors.orange),
                    Container(color: Colors.yellow),
                  ],
                ),
              ),
              makeHeader('SliverGrid'),
              SliverGrid(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200.0,
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 10.0,
                  childAspectRatio: 4.0,
                ),
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return Container(
                      alignment: Alignment.center,
                      color: Colors.teal[100 * (index % 9)],
                      child: Text('grid item $index'),
                    );
                  },
                  childCount: 20,
                ),
              ),
              makeHeader('SliverList'),
              // Yes, this could also be a SliverFixedExtentList. Writing
              // this way just for an example of SliverList construction.
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Container(color: Colors.pink, height: 150.0),
                    Container(color: Colors.cyan, height: 150.0),
                    Container(color: Colors.indigo, height: 150.0),
                    Container(color: Colors.blue, height: 150.0),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
