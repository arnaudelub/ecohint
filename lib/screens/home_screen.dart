import 'package:ecohint/widgets/crop_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("EcoHint")),
      ),
      body: Container(
        child: GridView.builder(
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
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.local_florist), title: Text("Crops")),
          BottomNavigationBarItem(
              icon: Icon(Icons.access_alarms), title: Text("Timers")),
        ],
      ),
    );
  }
}
