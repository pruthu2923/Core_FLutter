import 'package:e_commerce_app/utils/routes_utils.dart';
import 'package:e_commerce_app/views/screens/cart_page.dart';
import 'package:e_commerce_app/views/screens/detail_page.dart';
import 'package:e_commerce_app/views/screens/home_page.dart';
import 'package:flutter/material.dart';


/*

    - LinearGradient
    - SweepGradient
    - RadialGradient

    Clickable:
      - InkWell           (splashEvents)
      - GestureDetector


  State:
    - information
    - An information of variables/attributes or structure of any page.
    - info stored in objects.

  POP :
    - can't have State.
  OOP :
    - class:
        - StatelessWidget
        - StatefulWidget

  StatelessWidget :
    - static widget.
    - can't be re created once it's created.
    - can't adopt changes of run time.
    - changes can be made by using any external methods (Provider, GetX, Riverpod, Block,...).
    - ex. : Text, Button, .....
    - it doesn't have setState(), which means ui can't be updated directly
    - all the UI is created using overridden build method which takes BuildContext.
    BuildContext :
      - it's an object which contains all kind of widget's data in widget tree.
      - every widget has it's unique BuildContext

    Syntax :

    class [MyApp] extends StatelessWidget {
      const [MyApp]({Key? key}) : super(key: key);

      @override
      Widget build(BuildContext context) {
        return [MyUi](); //App ui part(widgets)
      }
    }

    StatefulWidget :

      - dynamic changes.
      - can be reloaded at run time.
      - changes can be adopted.
      - supports hot-reload using setState() function which reload all the widget
        inside of build function.
      - ex. : Slider, CheckBox, RadioButton, etc...
      - it has 5 main lifecycle methods to maintain and reload it's state
          - createState()
          - initState()
          - build()
          - setState()
          - dispose()

       createState() :
          - is responsible to provide an replaceable appState to the parent widget
          - 1st method to be executed in lifecycle.

       initState()  :
           - is mainly responsible to initialize or re-initialize class attributes.
           - 2nd method to be executed after createState()
           - can be called when we first open the page or we redirect to the page.

       build() :
           - is mainly responsible to create all UI part
           - 3rd method to be executed after initState()
           - can be re-invoked by reloading the UI using hot-reload or setState()
           - contains BuildContext of the UI

       setState() :
           - is responsible to reload the UI by calling build() again
           - 4th method to be executed.
           - can be used number of times to reload the ui.
           - every expression which is updating the data must be written in setState()

        dispose() :
           - similar as destructor, it is responsible to dispose(free-up/destroy) all the
             variable or controllers which means to be erased while leaving the page or app.
           - 5th method to be executed.
           - can be called each time while leaving the page.
           - is optional same as initState(), which means we only use it for certain action
             if required.


        Syntax :

           class [MyApp] extends StatefulWidget {
              const [MyApp]({Key? key}) : super(key: key);

              @override
              State<[MyApp]> createState() => _[MyApp]State();
           }

           class _[MyApp]State extends State<[MyApp]> {

              @override
              initState() {
                super.initState();
              }

              @override
              Widget build(BuildContext context) {
                return [MyUi]();
              }

              @override
              dispose() {
                super.dispose();
              }
           }


*/
void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        Routes.home: (context) => const HomePage(),
        Routes.detailPage: (context) => const DetailPage(),
        Routes.cartPage: (context) => const CartPage(),
      },
    );
  }
}
