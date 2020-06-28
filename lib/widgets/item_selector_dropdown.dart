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
  String dropdownValue = '🍈';
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
        isExpanded: true,
        value: dropdownValue,
        icon: Icon(Icons.arrow_downward),
        underline: Container(
          height: 2,
          color: Theme.of(context).accentColor,
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
          '🍈',
          '🍇',
          '🍉',
          '🍊',
          '🍋',
          '🍌',
          '🍍',
          '🥭',
          '🍎',
          '🍏',
          '🍐',
          '🍑',
          '🍒',
          '🍓',
          '🥝',
          '🍅',
          '🥑',
          '🍆',
          '🥔',
          '🥕',
          '🌽',
          '🌶',
          '🥒',
          '🥬',
          '🥦',
          '🧄',
          '🧅',
          '🍄',
        ].map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem(
            value: value,
            child: Text(
              value,
              style: TextStyle(fontSize: 32),
            ),
          );
        }).toList());
  }
}
