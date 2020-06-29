import 'package:ecohint/core/observables.dart';
import 'package:ecohint/misc/k_constant.dart';
import 'package:ecohint/injections.dart';
import 'package:ecohint/models/crop.dart';
import 'package:ecohint/screens/bloc/crops/crops_bloc.dart';
import 'package:ecohint/screens/posts_screen.dart';
import 'package:ecohint/screens/timers_screen.dart';
import 'package:ecohint/widgets/crop_listener.dart';
import 'package:ecohint/widgets/item_selector_dropdown.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/streams.dart';

class HomeScreen extends StatefulWidget {
  final List<Crop> crops;

  const HomeScreen({Key key, this.crops}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  int _selectedIndex = 0;
  bool showCropData = true;
  ValueStream<Map<String, dynamic>> timerObs = timerSubject.stream;
  ValueStream<int> dialogObs = cardClickedSubject.stream;
  static List<Widget> _widgetOptions;

  @override
  void initState() {
    super.initState();
    timerObs.listen(_onValue);
    dialogObs.listen(_onClick);
    _widgetOptions = [
      CropListener(showCropData: showCropData),
      TimersScreen(),
      PostsScreen(),
      Text('About')
    ];
  }

  _setCropDataVisibility() {
    setState(() {
      showCropData = !showCropData;
    });
    reSetWidgetOptions();
  }

  void _onClick(int value) {
    _setCropDataVisibility();
  }

  void reSetWidgetOptions() {
    _widgetOptions = [
      CropListener(showCropData: showCropData),
      TimersScreen(),
      PostsScreen(),
      Text('About')
    ];
  }

  void _onValue(Map<String, dynamic> data) {
    context
        .bloc<CropsBloc>()
        .add(CropsEvent.timerChanged(data['timer'], index: data['index']));
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getIt.allReady(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Scaffold(
              backgroundColor: kCreme,
              appBar: AppBar(
                centerTitle: true,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    kIsWeb
                        ? InkWell(
                            onTap: () => _showAddCropDialog(context)
                                .then((_) => _setCropDataVisibility()),
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: kGreenBush,
                              ),
                              child: Text(
                                "Add a new crop",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                            ),
                          )
                        : Container(),
                    Container(
                      width: 100,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset(
                            "assets/images/logoSmall.png",
                            height: 40,
                          ),
                          const Positioned(
                            top: 15,
                            child: FittedBox(
                              child: Text(
                                "EcoHint",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w100),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    _selectedIndex == 0
                        ? PopupMenuButton(
                            onSelected: (_) =>
                                _showConfirmationDialog(context).then(
                              (_) => _setCropDataVisibility(),
                            ),
                            icon: const Icon(Icons.menu),
                            elevation: 12,
                            itemBuilder: (BuildContext context) {
                              return {'Remove crops'}
                                  .map((choice) => PopupMenuItem(
                                        value: choice,
                                        child: Text(choice),
                                      ))
                                  .toList();
                            },
                          )
                        : Container(),
                  ],
                ),
                actions: [],
              ),
              body: _widgetOptions.elementAt(_selectedIndex),
              floatingActionButton: _selectedIndex == 0
                  ? FloatingActionButton(
                      clipBehavior: Clip.hardEdge,
                      onPressed: () => _showAddCropDialog(context).then(
                        (_) => _setCropDataVisibility(),
                      ),
                      child: const Icon(Icons.add),
                    )
                  : null,
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.endFloat,
              bottomNavigationBar: BottomNavigationBar(
                currentIndex: _selectedIndex,
                onTap: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                      icon: Icon(Icons.local_florist), title: Text("Crops")),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.access_alarms), title: Text("Timers")),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.developer_board), title: Text("Posts")),
                ],
              ),
            );
          } else {
            return const Scaffold(
                body: Center(
              child: CircularProgressIndicator(),
            ));
          }
        });
  }

  Future<Null> _showAddCropDialog(BuildContext context) {
    _setCropDataVisibility();
    return showGeneralDialog(
        context: context,
        pageBuilder: (context, anim1, anim2) {
          return null;
        },
        barrierDismissible: true,
        barrierColor: Theme.of(context).accentColor.withOpacity(0.4),
        barrierLabel: '',
        transitionDuration: const Duration(milliseconds: 200),
        transitionBuilder: (_, anim1, anim2, child) {
          final curvedValue = Curves.easeInOutQuad.transform(anim1.value) - 1.0;
          return Transform(
              transform: Matrix4.translationValues(0.0, curvedValue * 200, 0.0),
              child: Opacity(
                  opacity: anim1.value,
                  child: AlertDialog(
                    title: const Text("Add a new Crop"),
                    content: SingleChildScrollView(
                      child: Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            TextFormField(
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return 'Please enter a name.';
                                  } else if (value.length > 15) {
                                    return 'Name is too long';
                                  }
                                  return null;
                                },
                                decoration: const InputDecoration(
                                  prefixIcon: Icon(Icons.description),
                                  labelText: 'Name',
                                ),
                                onChanged: (value) => context
                                    .bloc<CropsBloc>()
                                    .add(CropsEvent.nameChanged(value))),
                            const SizedBox(height: 8),
                            ItemSelectorDropDown(blocContext: context),
                            const SizedBox(height: 8),
                            TextFormField(
                                keyboardType: TextInputType.number,
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return 'Please enter a timer.';
                                  } else {
                                    try {
                                      int.parse(value);
                                      return null;
                                    } on FormatException catch (_) {
                                      return "Enter a valid number";
                                    }
                                  }
                                },
                                decoration: const InputDecoration(
                                  prefixIcon: Icon(Icons.timer),
                                  labelText: 'Hours',
                                ),
                                onChanged: (value) {
                                  final timer =
                                      Duration(hours: int.parse(value));
                                  context.bloc<CropsBloc>().add(
                                      CropsEvent.timerChanged(timer.inSeconds));
                                }),
                          ],
                        ),
                      ),
                    ),
                    actions: <Widget>[
                      FlatButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text('Cancel'),
                      ),
                      FlatButton(
                        onPressed: () {
                          if (_formKey.currentState.validate()) {
                            context
                                .bloc<CropsBloc>()
                                .add(const CropsEvent.createCrop());
                            Navigator.of(context).pop();
                          }
                        },
                        child: const Text('Save me!'),
                      )
                    ],
                  )));
        });
  }

  Future<Null> _showConfirmationDialog(BuildContext context) {
    _setCropDataVisibility();
    return showDialog(
        context: context,
        builder: (_) => AlertDialog(
              title: const Text(
                "Removing crops",
                textAlign: TextAlign.center,
              ),
              content: const Text(
                "Are you sure you want to remove every crops?",
                textAlign: TextAlign.center,
              ),
              actions: [
                FlatButton(
                  onPressed: () {
                    context
                        .bloc<CropsBloc>()
                        .add(const CropsEvent.deleteCrops());
                    Navigator.of(context).pop();
                  },
                  child: const Text("Yes"),
                ),
                FlatButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text("No"),
                ),
              ],
            ));
  }
}
