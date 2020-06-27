import 'package:ecohint/misc/kConstant.dart';
import 'package:ecohint/widgets/crop_card.dart';
import 'package:ecohint/widgets/crop_data.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kCreme,
      appBar: AppBar(
        title: Container(
          width: 100,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                "assets/images/logoSmall.png",
                height: 40,
              ),
              Positioned(
                top: 15,
                child: FittedBox(
                  child: Text(
                    "EcoHint",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w100),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 770) {
            return GridView.builder(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: MediaQuery.of(context).size.height * 0.4,
                mainAxisSpacing: 0.0,
                crossAxisSpacing: 0.0,
                childAspectRatio: 1,
              ),
              itemBuilder: (BuildContext context, int index) {
                return CropCard(index);
              },
              itemCount: 30,
            );
          } else {
            return Container(
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        width: constraints.maxWidth * 0.25,
                        height: constraints.maxHeight,
                        child: GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent:
                                MediaQuery.of(context).size.height * .4,
                            mainAxisSpacing: 0.0,
                            crossAxisSpacing: 0.0,
                            childAspectRatio: 1,
                          ),
                          itemBuilder: (BuildContext context, int index) {
                            return CropCard(index);
                          },
                          itemCount: 30,
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 10, left: 10),
                            height: constraints.maxHeight - 10,
                            width: (constraints.maxWidth * .75) - 10,
                            decoration: BoxDecoration(
                              color: kGreenAlgua.withOpacity(.7),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(65),
                              ),
                            ),
                            child: Container(
                              margin: EdgeInsets.only(top: 10, left: 40),
                              height: constraints.maxHeight - 10,
                              width: (constraints.maxWidth * .7) - 40,
                              decoration: BoxDecoration(
                                color: kGreenAlgua.withOpacity(1),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(65),
                                ),
                              ),
                              child: CropData(),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        clipBehavior: Clip.hardEdge,
        onPressed: () => print("TODO"),
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.local_florist), title: Text("Crops")),
          BottomNavigationBarItem(
              icon: Icon(Icons.access_alarms), title: Text("Timers")),
        ],
      ),
    );
  }
}
