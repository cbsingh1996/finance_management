import 'package:finance_management/pages/AddExpensePage.dart';
import 'package:finance_management/pages/Finger.dart';
import 'package:finance_management/pages/Travel.dart';
import 'package:finance_management/pages/addcalender.dart';
import 'package:finance_management/pages/car.dart';
import 'package:finance_management/pages/changedsuccesfully.dart';
import 'package:finance_management/pages/launchtwo.dart';
import 'package:finance_management/pages/Rent.dart';
import 'package:finance_management/pages/newhomepage.dart';
import 'package:finance_management/pages/newpassword.dart';
import 'package:finance_management/pages/settingPage.dart';
import 'package:finance_management/pages/editprofile.dart';

import 'package:finance_management/pages/forgot.dart';

import 'package:finance_management/pages/groceries.dart';
import 'package:finance_management/pages/help.dart';
import 'package:finance_management/pages/home.dart';
import 'package:finance_management/pages/homepage.dart';
import 'package:finance_management/pages/login.dart';
import 'package:finance_management/pages/medicine.dart';

import 'package:finance_management/pages/onboardingB.dart';
import 'package:finance_management/pages/onboardinga.dart';

import 'package:finance_management/pages/security.dart';
import 'package:finance_management/pages/securityprofile.dart';
import 'package:finance_management/pages/signup.dart';
import 'package:finance_management/pages/transaction.dart';
import 'package:finance_management/pages/wedding.dart';
import 'package:go_router/go_router.dart';
import 'package:finance_management/pages/launchone.dart';

final GoRouter router = GoRouter(
  initialLocation: '/launchA',
  routes: [
    GoRoute(path: '/launchA', builder: (context, state) => const First()),
    GoRoute(path: '/launchB', builder: (context, state) => const SecondPage()),
    GoRoute(
      path: '/onBoardingA',
      builder: (context, state) => const OnBoardingA(),
    ),
    GoRoute(
      path: '/onBoardingB',
      builder: (context, state) => const OnBoardingB(),
    ),
    GoRoute(path: '/login', builder: (context, state) => const LoginPage()),
    GoRoute(path: '/signup', builder: (context, state) => const SignUp()),
    GoRoute(path: '/forgot', builder: (context, state) => const ForgotPage()),
    GoRoute(
      path: '/security',
      builder: (context, state) => const SecurityPage(),
    ),
    GoRoute(
      path: '/finger',
      builder: (context, state) => const FingerPrintPage(),
    ),
    GoRoute(path: '/home', builder: (context, state) => const Home()),
    GoRoute(path: '/expense', builder: (context, state) => const AddExpensePage()),
    GoRoute(path: '/edit', builder: (context, state) => EditProfilePage()),
    GoRoute(
      path: '/psecurity',
      builder: (context, state) => SecurityProfilePage(),
    ),
    GoRoute(path: '/settings', builder: (context, state) => SettingPage()),
    GoRoute(path: '/help', builder: (context, state) => HelpPage()),
    GoRoute(
      path: '/changed',
      builder: (context, state) => const SuccesfullyPage(),
    ),
    GoRoute(
      path: '/transactions',
      builder: (context, state) => const Transactionpage(),
    ),
    GoRoute(
      path: '/',
      builder: (context, state) => const HomePage(), // default page
    ),
    GoRoute(path: '/car', builder: (context, state) => const CarPage()),
    GoRoute(
      path: '/newPassword',
      builder: (context, state) => const NewPasswordPage(),
    ),
    GoRoute(
      path: '/Medicine',
      builder: (context, state) => const MedicinePage(),
    ),
    GoRoute(
      path: '/Groceries',
      builder: (context, state) => const GroceriesPage(),
    ),
    GoRoute(path: '/Rent', builder: (context, state) => const RentPage()),
    GoRoute(path: '/wedding', builder: (context, state) => const WeddingPage()),
    GoRoute(path: '/newhome', builder: (context, state) => const NewHomePage()),
    GoRoute(
      path: '/calender',
      builder: (context, state) => const ProfilecalenderPage(),
    ),
    GoRoute(path: '/travel', builder: (context, state) => const TravelPge()),
  ],
);
