import 'package:ecohint/screens/bloc/crops/crops_bloc.dart';
import 'package:ecohint/widgets/crop_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CropListener extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CropsBloc, CropsState>(builder: (context, state) {
      return GridView.builder(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: MediaQuery.of(context).size.height * 0.4,
          mainAxisSpacing: 0.0,
          crossAxisSpacing: 0.0,
          childAspectRatio: 1,
        ),
        itemBuilder: (BuildContext context, int index) {
          return CropCard(state.crops[index]);
        },
        itemCount: state.crops.length,
      );
    });
  }
}
