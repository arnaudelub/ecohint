import 'package:ecohint/misc/k_constant.dart';
import 'package:ecohint/injections.dart';
import 'package:ecohint/screens/bloc/crops/crops_bloc.dart';
import 'package:ecohint/screens/posts_screen.dart';
import 'package:ecohint/widgets/crop_listener.dart';
import 'package:ecohint/widgets/item_selector_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _isLoading = true;
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  int _selectedIndex = 0;
  BuildContext blocContext;

  static List<Widget> _widgetOptions;

  Widget getProvider() {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) =>
                getIt<CropsBloc>()..add(const CropsEvent.getCrops()))
      ],
      child: BlocBuilder<CropsBloc, CropsState>(builder: (newContext, state) {
        blocContext = newContext;
        return CropListener();
      }),
    );
  }

  @override
  void initState() {
    super.initState();

    _widgetOptions = [
      getProvider(),
      Text('Timers'),
      PostsScreen(),
      Text('About')
    ];
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
                title: Container(
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
                actions: [
                  _selectedIndex == 0
                      ? PopupMenuButton(
                          onSelected: (_) =>
                              _showConfirmationDialog(blocContext),
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
                      : Text(''),
                ],
              ),
              body: _widgetOptions.elementAt(_selectedIndex),
              floatingActionButton: _selectedIndex == 0
                  ? FloatingActionButton(
                      clipBehavior: Clip.hardEdge,
                      onPressed: () => _showAddCropDialog(blocContext),
                      child: const Icon(Icons.add),
                    )
                  : null,
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.centerFloat,
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

  void _showAddCropDialog(BuildContext context) {
    showGeneralDialog(
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
                          ],
                        ),
                      ),
                    ),
                    actions: <Widget>[
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

  void _showConfirmationDialog(BuildContext context) {
    showDialog(
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
