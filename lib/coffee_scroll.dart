import 'package:coffee_scroll/utils.dart';
import 'package:flutter/material.dart';

class CoffeeScroll extends StatefulWidget {
  CoffeeScroll({Key? key}) : super(key: key);

  @override
  State<CoffeeScroll> createState() => _CoffeeScrollState();
}

class _CoffeeScrollState extends State<CoffeeScroll> {
  final _pageCoffeeController = PageController(viewportFraction: 0.35);
  double _currentPage = 0.0;

  void _coffeeScrollListener() {
    setState(() {
      _currentPage = _pageCoffeeController.page!;
    });
  }

  @override
  void initState() {
    _pageCoffeeController.addListener(_coffeeScrollListener);
    super.initState();
  }

  @override
  void dispose() {
    _pageCoffeeController.removeListener(_coffeeScrollListener);
    _pageCoffeeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Coffee Scroll'),
        backgroundColor: const Color(0xff230808),
      ),
      body: Stack(
        children: [
          // Positioned(
          //   left: 0,
          //   top: 0,
          //   right: 0,
          //   height: 100,
          //   child: Container(color: Colors.red),
          // ),
          Transform.scale(
            scale: 1.6,
            alignment: Alignment.bottomCenter,
            child: PageView.builder(
              controller: _pageCoffeeController,
              scrollDirection: Axis.vertical,
              itemCount: coffees.length + 1,
              itemBuilder: (context, index) {
                if (index == 0) return const SizedBox.shrink();
                final coffee = coffees[index - 1];
                final result = _currentPage - index + 1;
                final value = -0.4 * result + 1;
                final opacity = value.clamp(0.0, 1.0);
                return Padding(
                  padding: EdgeInsets.only(bottom: 30),
                  child: Transform(
                    alignment: Alignment.bottomCenter,
                    transform: Matrix4.identity()
                      ..setEntry(3, 2, 0.001)
                      ..translate(
                          0.0,
                          MediaQuery.of(context).size.height /
                              2.6 *
                              (1 - value).abs())
                      ..scale(value),
                    child: Opacity(
                      opacity: opacity,
                      child: Image.asset(coffee.image, fit: BoxFit.fitHeight),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
