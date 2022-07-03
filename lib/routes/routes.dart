import 'package:task/views/LogoutPage.dart';
import 'package:task/views/homepage.dart';
import 'package:task/views/LoginPage.dart';
import 'package:task/views/LogoutPage.dart';

const String homePage = "/homePage";
const String loginPage = "/loginPage";
const String logoutPage = "/logoutPage";
final route = {
  homePage: (context) => HomePage(),
  loginPage: (context) => LoginScreen(),
  logoutPage: (context) => LogoutScreen(),
};
