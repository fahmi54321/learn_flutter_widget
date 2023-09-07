import 'package:flutter/material.dart';

class NotificationScrollListenerExample extends StatefulWidget {
  const NotificationScrollListenerExample({super.key});

  @override
  State<NotificationScrollListenerExample> createState() =>
      _NotificationScrollListenerExampleState();
}

class _NotificationScrollListenerExampleState
    extends State<NotificationScrollListenerExample> {
  String message = 'New';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: 60.0,
              color: Colors.orangeAccent,
              child: Center(
                child: Text(message),
              ),
            ),
            Expanded(
              child: NotificationListener<ScrollNotification>(
                onNotification: (scrollNotification) {
                  if (scrollNotification is ScrollStartNotification) {
                    setState(() {
                      message = 'Scroll Started';
                    });
                  } else if (scrollNotification is ScrollUpdateNotification) {
                    setState(() {
                      message = 'Scroll Updated';
                    });
                  } else if (scrollNotification is ScrollEndNotification) {
                    setState(() {
                      message = 'Scroll Ended';
                    });
                  }
                  return true;
                },
                child: ListView.builder(
                  itemCount: 100,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      title: Text("Item: $index"),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
