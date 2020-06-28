import 'package:ecohint/screens/bloc/crops/crops_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ItemSelectorDropDown extends StatefulWidget {
  final BuildContext blocContext;

  const ItemSelectorDropDown({Key key, this.blocContext}) : super(key: key);
  @override
  _ItemSelectorDropDownState createState() => _ItemSelectorDropDownState();
}

class _ItemSelectorDropDownState extends State<ItemSelectorDropDown> {
  String dropdownValue = '🍈_melon';

  @override
  void initState() {
    widget.blocContext
        .bloc<CropsBloc>()
        .add(CropsEvent.pictureChanged(dropdownValue));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
        isExpanded: true,
        value: dropdownValue,
        icon: Icon(Icons.arrow_downward),
        underline: Container(
          height: 1,
          color: Theme.of(context).primaryColor,
        ),
        iconSize: 18,
        elevation: 12,
        itemHeight: 60.0,
        onChanged: (String selected) {
          setState(() {
            dropdownValue = selected;
          });
          widget.blocContext
              .bloc<CropsBloc>()
              .add(CropsEvent.pictureChanged(selected));
        },
        items: <String>[
          '🍈_melon',
          '🍇_grape',
          '🍉_watermelon',
          '🍊_tangerine',
          '🍋_lemon',
          '🍌_banana',
          '🍍_pineapple',
          '🥭_mango',
          '🍎_apple',
          '🍏_apple',
          '🍐_pear',
          '🍑_peach',
          '🍒_cherry',
          '🍓_strawberry',
          '🥝_kiwi',
          '🍅_tomato',
          '🥑_avocado',
          '🍆_eggplant',
          '🥔_potato',
          '🥕_carrot',
          '🌽_corn',
          '🥒_cucumber',
          '🥬_leaf',
          '🥦_broccoli',
          '🧄_garlic',
          '🧅_onion',
          '🍄_mushroom',
        ].map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem(
            value: value,
            child: Text(
              value.split("_")[0],
              style: TextStyle(fontSize: 32),
            ),
          );
        }).toList());
  }
}
