import 'package:ecohint/misc/k_constant.dart';
import 'package:ecohint/models/crop.dart';
import 'package:ecohint/screens/bloc/crops/crops_bloc.dart';
import 'package:ecohint/widgets/crop_card.dart';
import 'package:ecohint/widgets/crop_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CropListener extends StatelessWidget {
  final bool showCropData;
  const CropListener({Key key, this.showCropData = true}) : super(key: key);
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
              ),
              itemBuilder: (BuildContext context, int index) {
                return CropCard(state.crops[index], index);
              },
              itemCount: state.crops.length,
            );
          } else {
            return Row(
              children: [
                Column(
                  children: [
                    Container(
                      width: constraints.maxWidth * 0.25,
                      height: constraints.maxHeight,
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent:
                              MediaQuery.of(context).size.height * .4,
                        ),
                        itemBuilder: (BuildContext context, int index) {
                          // See line 12.
                          //return CropCard(state.crops[index]);
                          return CropCard(state.crops[index], index);
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
                          margin: const EdgeInsets.only(top: 10, left: 10),
                          height: constraints.maxHeight - 10,
                          width: (constraints.maxWidth * .75) - 10,
                          decoration: BoxDecoration(
                            color: kCreme,
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(65),
                            ),
                          ),
                          child: Container(
                            margin: const EdgeInsets.only(top: 10, left: 40),
                            height: constraints.maxHeight - 10,
                            width: (constraints.maxWidth * .7) - 40,
                            decoration: BoxDecoration(
                              color: kGreenAlgua.withOpacity(1),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(65),
                              ),
                            ),
                            child: Visibility(
                              visible: showCropData,
                              child: CropData(
                                crop: state.selectedCrop,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            );
          }
        },
      );
    });
  }
}
