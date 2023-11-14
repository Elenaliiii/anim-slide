import 'package:flutter/material.dart';
/// Flutter code sample for [AnimatedPositioned].
void main() => runApp(const AnimatedPositionedExampleApp());
class AnimatedPositionedExampleApp extends StatelessWidget {
  const AnimatedPositionedExampleApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('AnimatedPositioned Sample')),
        body: const Center(
          child: AnimatedPositionedExample(),
        ),
      ),
    );
  }
}

class AnimatedPositionedExample extends StatefulWidget {
  const AnimatedPositionedExample({super.key});
  @override
  State<AnimatedPositionedExample> createState() =>
      _AnimatedPositionedExampleState();
}
class _AnimatedPositionedExampleState extends State<AnimatedPositionedExample> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return  ListView(
      children: [
        Container(
          height: selected ? 50.0 : 350.0,
          width: MediaQuery.sizeOf(context).width,
          child: Stack(
            children: <Widget>[
              AnimatedPositioned(
                width: MediaQuery.sizeOf(context).width,
                height: selected ? 50.0 : 350.0,
                top: selected ? 0.0 : 0.0,
                duration: const Duration(seconds: 1),
                curve: Curves.elasticOut,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selected = !selected;
                    });
                  },
                  child: const ColoredBox(
                    color: Colors.blue,
                    child: Center(child: Text('Tap me')),
                  ),
                ),
              ),
            ],
          ),
        ),
      Container(
        height: MediaQuery.sizeOf(context).height,
        child: ListView(
          children: [
            for (int i = 0 ; i <=100 ; i++)
              Text("data")
          ],
        ),
      )
      ],
    );
  }
}
