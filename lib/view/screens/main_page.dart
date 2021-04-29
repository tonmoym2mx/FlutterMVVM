import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mvvm/view/screens/dashboard_page.dart';
import 'package:flutter_mvvm/view/screens/job_page.dart';
import 'package:flutter_mvvm/view/screens/profile_page.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  static const platform = const MethodChannel('samples.flutter.dev/battery');
  String _batteryLevel = 'Unknown battery level.';

  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_batteryLevel),),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(title: Text("Dashboard")),
            ListTile(title: Text("Job")),
            ListTile(title: Text("Profile")),
          ],
        ),
      ),
       body: Container(
         child:  changePage(),
       ),

       bottomNavigationBar: BottomNavigationBar(
         backgroundColor: Colors.white,
         unselectedItemColor: Colors.black38,
         selectedItemColor: Colors.black,
         items: [
           BottomNavigationBarItem(icon: Icon(Icons.dashboard),label: "Dashboard"),
           BottomNavigationBarItem(icon: Icon(Icons.work),label: "Job"),
           BottomNavigationBarItem(icon: Icon(Icons.contact_page_rounded),label: "Profile"),
         ],
         currentIndex: _index,
         onTap: (index){
           setState(() {
             _index = index;
             changePage();
           });
         },
       ),
    );
  }

  Widget changePage() {
    switch(_index){
      case 0:{
        _getBatteryLevel();
        return Dashboard();
      }
      case 1:{
        _getBatteryLevel();
        return Job();
      }
      case 2:{
        _getBatteryLevel();
        return Profile();
      }

      default:{
        return Container(child: Text("XXX"));
      }

    }

  }


  Future<void> _getBatteryLevel() async {
    String batteryLevel;
    try {
       var result = await platform.invokeMethod('getBatteryLevel');
      //batteryLevel = 'Battery level at $result % .';
      print(result);
      print("");
    } on PlatformException catch (e) {
      batteryLevel = "Failed to get battery level: '${e.message}'.";
    }

   /* setState(() {
      _batteryLevel = batteryLevel;
    });*/
  }

}
