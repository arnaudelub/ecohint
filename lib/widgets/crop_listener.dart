import 'package:ecohint/misc/kConstant.dart';
import 'package:ecohint/models/crop.dart';
import 'package:ecohint/screens/bloc/crops/crops_bloc.dart';
import 'package:ecohint/widgets/crop_card.dart';
import 'package:ecohint/widgets/crop_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CropListener extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: For purpose of front testing

    return BlocBuilder<CropsBloc, CropsState>(builder: (context, state) {
      return LayoutBuilder(
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
                //return CropCard(state.crops[index]);
                return CropCard(state.crops[index]);
              },
              itemCount: state.crops.length,
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
                            // See line 12.
                            //return CropCard(state.crops[index]);
                            return CropCard(state.crops[index]);
                          },
                          itemCount: state.crops.length,
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
      );
    });
  }
}
