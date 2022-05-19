import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:untitled/widgets/my_custom_tile.dart';
void main() {

  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  bool isDark=false;
  @override
  Widget build(BuildContext context) {
 return MaterialApp(
   title: 'My First App',
   home: HomeScrean(),
   debugShowCheckedModeBanner: false,
   theme: ThemeData(
     brightness: isDark==false? Brightness.light: Brightness.dark,
     primarySwatch: Colors.amber,
   ),
 );
  }

}
class HomeScrean extends StatelessWidget{
  List<String> userList= ['Home', 'Category', 'Favorite'];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: _myDrawer(context),
      appBar: _myAppBar(context),

      body:_myBody(context) ,
      floatingActionButton: _myFloatingActionButton(context),

    );

  }

  Widget _myDrawer(BuildContext context) {

    return Drawer(

      child: ListView(
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text('Foysal'),
            accountEmail: Text('muhammadfoysal2448@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: Icon(Icons.person),
            ),
          ),

          MyCustomTile(title: userList[0], icon:Icons.home_outlined, onClickedEvant: (){Navigator.pop(context);
          }),
          MyCustomTile(title: userList[1], icon:Icons.category_outlined, onClickedEvant: (){Navigator.pop(context);
          }),
          MyCustomTile(title: userList[2], icon: null , onClickedEvant: (){Navigator.pop(context);
          }),


        ],
      ),
    );
  }

  _myFloatingActionButton(BuildContext context) {

    return FloatingActionButton(onPressed: (){
      print('Clicked');},
      child: const Icon(Icons.mail_outline),
    );
  }

   _myAppBar(BuildContext context) {

   return AppBar(
      title:const Text('FoysalMart',style:TextStyle(
          fontSize: 25.0,
          color: Colors.black,
          fontStyle: FontStyle.normal,
          fontWeight:FontWeight.bold
      ),),

      elevation: 10.0,
      actions: [

        IconButton(onPressed:(){
          print('IconButton Clicked');
          Fluttertoast.showToast(
              webPosition:'Center',
              msg: "Searching...",
              toastLength: Toast.LENGTH_LONG,
              gravity: ToastGravity.SNACKBAR,
              timeInSecForIosWeb: 2,

              fontSize: 16.0
          );

        },
            icon:Icon(Icons.search_outlined)),
        IconButton(onPressed:(){


        },

            icon:Icon(Icons.person_outlined)),
      ],
    );
  }
  _myBody(BuildContext context) {
    return Container();
  }


}


