import 'package:ecohint/widgets/crop_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("EcoHint")),
      ),
      body: GridView.builder(
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
