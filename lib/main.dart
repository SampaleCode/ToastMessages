import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Toast Message',
      home: ToastPage(),
    );
  }
}

class ToastPage extends StatelessWidget {
  const ToastPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ToastContext().init(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Toast Message'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () =>
                    toastMsg("Short", Toast.lengthShort, Toast.bottom),
                child: const Text('Short Toast')),
            TextButton(
                onPressed: () =>
                    toastMsg("Long", Toast.lengthLong, Toast.bottom),
                child: const Text('Long Toast')),
            TextButton(
                onPressed: () =>
                    toastMsg("Bottom", Toast.lengthShort, Toast.bottom),
                child: const Text('Bottom Toast')),
            TextButton(
                onPressed: () =>
                    toastMsg("Center", Toast.lengthShort, Toast.center),
                child: const Text('Center Toast')),
            TextButton(
                onPressed: () => toastMsg("Top", Toast.lengthShort, Toast.top),
                child: const Text('Top Toast')),
          ],
        ),
      ),
    );
  }
}

void toastMsg(String msg, int length, int gravity) {
  Toast.show(msg, duration: length, gravity: gravity);
}
