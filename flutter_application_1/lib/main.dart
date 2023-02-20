import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_page/Home_page.dart';
import 'package:flutter_application_1/auth/login.dart';
import 'package:flutter_application_1/auth/register.dart';
// import 'package:flutter_application_1/home_page/newhomepage.dart';
import 'package:flutter_application_1/viewmodels/auth_viewmodel.dart';
import 'package:flutter_application_1/viewmodels/global_ui_viewmodel.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:provider/provider.dart';

void main () async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider (create: (_) => GlobalUIViewModel()),
        ChangeNotifierProvider (create: (_) => AuthViewModel()),

      ],
      child: GlobalLoaderOverlay(
        useDefaultLoading: false,
        overlayWidget: Center(
          child: Image.asset("assets/images/loader.gif", height: 100, width: 100,),
        ),
        child: Consumer<GlobalUIViewModel>(
          builder: (context, loader, child) {
            if(loader.isLoading){
              context.loaderOverlay.show();
            }else{
              context.loaderOverlay.hide();
            }
            return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/Login",
      routes: {
        "/":(context) => Login_page(),
        Hello.LoginRoute:(context) => Login_page(),
        Hello.RegisterRoute:(context) => Register_Page(),
        Hello.HomeRoute:((context) => Homepage()),
        // Hello.NewHomeRoute:((context) => NewHomePage())
      

      },
   
    );
          }
        ),
      ),
    );
 
  }
}

class Hello{
  static String LoginRoute="/Login";
  static String RegisterRoute="/Register";
  static String HomeRoute="/Home_Page";
  static String NewHomeRoute  ="/NewHomePage";
  


}