import 'package:ecohint/models/crop.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class CropData extends StatefulWidget {
  final Crop crop;

  const CropData({Key key, this.crop}) : super(key: key);

  @override
  _CropDataState createState() => _CropDataState();
}

class _CropDataState extends State<CropData> {
  final _webViewPlugin = FlutterWebviewPlugin();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // on pressing back button, exiting the screen instead of showing loading symbol
    _webViewPlugin.onDestroy.listen((_) {
      if (Navigator.canPop(context)) {
        // exiting the screen
        Navigator.of(context).pop();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    String picture = widget.crop.picture ?? '';
    print("picture");
    return Center(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0),
            child: FittedBox(
              child: Text("Crop informations:",
                  style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.underline,
                      fontSize: 34)),
            ),
          ),
          widget.crop.picture != '' ? Flexible(
            child: WillPopScope(
              onWillPop: () => _webViewPlugin.close(),
              child: WebviewScaffold(
                url:
                    "http://www.gardenology.org/wiki/${picture.split('_')[1]}",
                withZoom: false,
                withLocalStorage: true,
                withJavascript: true,
                appCacheEnabled: true,
              ),
            ),
          ) : Flexible(child: Text('')),
        ],
      ),
    );
  }
}
