import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:ecohint/routes/router.gr.dart';
import 'package:flutter/material.dart';

class Loader extends StatefulWidget {
  @override
  _LoaderState createState() => _LoaderState();
}

class _LoaderState extends State<Loader> with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation<double> animationRotation;
  Animation<double> animationRadiusIn;
  Animation<double> animationRadiusOut;

  final double initialRadius = 30.0;
  double radius = 0.0;

  @override
  void dispose() {
    controller.dispose();
    //this.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 5));

    animationRotation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
        parent: controller,
        curve: const Interval(0.0, 1.0, curve: Curves.linear)));

    animationRadiusIn = Tween<double>(
      begin: 1.0,
      end: 0.0,
    ).animate(CurvedAnimation(
        parent: controller,
        curve: const Interval(0.75, 1.0, curve: Curves.elasticIn)));
    animationRadiusOut = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
        parent: controller,
        curve: const Interval(0.0, 0.25, curve: Curves.elasticOut)));

    controller.addListener(() {
      setState(() {
        if (controller.value >= 0.75 && controller.value <= 1.0) {
          radius = animationRadiusIn.value * initialRadius;
        } else if (controller.value >= 0.0 && controller.value <= 0.25) {
          radius = animationRadiusOut.value * initialRadius;
        }
      });
    });

    controller.repeat();

    Future.delayed(const Duration(milliseconds: 1500), () {
      ExtendedNavigator.of(context).pushReplacementNamed(Routes.splashScreen);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        width: 100.0,
        height: 100.0,
        child: Stack(children: [
          Center(
              child: Transform.translate(
                  offset: const Offset(0.0, 60.0),
                  child: const Text('EcoHint',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Poppins',
                        fontSize: 20.0,
                        fontWeight: FontWeight.normal,
                        decorationColor: Colors.white,
                      )))),
          Center(
            child: RotationTransition(
              turns: animationRotation,
              child: Stack(children: [
                const Dot(radius: 30.0, color: Colors.white, image: true),
                Transform.translate(
                    offset: Offset(radius * cos(pi / 4), radius * sin(pi / 4)),
                    child: Dot(
                      color: Theme.of(context).accentColor,
                      radius: 5.0,
                      image: false,
                    )),
                Transform.translate(
                    offset: Offset(
                        radius * cos(2 * pi / 4), radius * sin(2 * pi / 4)),
                    child: Dot(
                        color: Theme.of(context).accentColor,
                        radius: 5.0,
                        image: false)),
                Transform.translate(
                    offset: Offset(
                        radius * cos(3 * pi / 4), radius * sin(3 * pi / 4)),
                    child: Dot(
                        color: Theme.of(context).accentColor,
                        radius: 5.0,
                        image: false)),
                Transform.translate(
                    offset: Offset(
                        radius * cos(4 * pi / 4), radius * sin(4 * pi / 4)),
                    child: Dot(
                        color: Theme.of(context).accentColor,
                        radius: 5.0,
                        image: false)),
                Transform.translate(
                    offset: Offset(
                        radius * cos(5 * pi / 4), radius * sin(5 * pi / 4)),
                    child: Dot(
                        color: Theme.of(context).accentColor,
                        radius: 5.0,
                        image: false)),
                Transform.translate(
                    offset: Offset(
                        radius * cos(6 * pi / 4), radius * sin(6 * pi / 4)),
                    child: Dot(
                        color: Theme.of(context).accentColor,
                        radius: 5.0,
                        image: false)),
                Transform.translate(
                    offset: Offset(
                        radius * cos(7 * pi / 4), radius * sin(7 * pi / 4)),
                    child: Dot(
                      color: Theme.of(context).accentColor,
                      radius: 5.0,
                      image: false,
                    )),
                Transform.translate(
                    offset: Offset(
                        radius * cos(8 * pi / 4), radius * sin(8 * pi / 4)),
                    child: Dot(
                      color: Theme.of(context).accentColor,
                      radius: 5.0,
                      image: false,
                    )),
              ]),
            ),
          )
        ]));
  }
}

class Dot extends StatelessWidget {
  final double radius;
  final Color color;
  final bool image;

  const Dot({this.color, this.radius, this.image});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: radius,
        height: radius,
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        child: image
            ? Center(child: Image.asset('assets/images/leaf.png'))
            : Container(
                height: 0.0,
                width: 0.0,
              ),
      ),
    );
  }
}
