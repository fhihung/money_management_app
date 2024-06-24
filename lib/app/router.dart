// import 'package:flutter/material.dart';
// import 'package:food_delivery_app/app/common_bottom_navigation.dart';
// import 'package:food_delivery_app/cart/screens/cart_screen.dart';
// import 'package:food_delivery_app/common/views/verify_email_view.dart';
// import 'package:food_delivery_app/forgot_password/screens/forgot_password_screen.dart';
// import 'package:food_delivery_app/login/bloc/login_state.dart';
// import 'package:food_delivery_app/login/screens/login_screen.dart';
// import 'package:food_delivery_app/onboarding/screens/onboarding_screen.dart';
// import 'package:food_delivery_app/sign_up/screens/sign_up_screen.dart';
// import 'package:go_router/go_router.dart';
//
// /// The route configuration.
// final GoRouter router = GoRouter(
//   initialLocation: '/',
//   routes: <RouteBase>[
//     GoRoute(
//       path: '/',
//       builder: (BuildContext context, GoRouterState state) {
//         return LoginScreen();
//       },
//       routes: <RouteBase>[
//         GoRoute(
//           path: 'login',
//           builder: (BuildContext context, GoRouterState state) {
//             return const LoginScreen();
//           },
//         ),
//         GoRoute(
//           path: 'sign_up',
//           builder: (BuildContext context, GoRouterState state) {
//             return const SignUpScreen();
//           },
//         ),
//         GoRoute(
//           path: 'home',
//           builder: (BuildContext context, GoRouterState state) {
//             return const CommonBottomNavigation();
//           },
//         ),
//         GoRoute(
//           path: 'forgot_password',
//           builder: (BuildContext context, GoRouterState state) {
//             return const ForgotPasswordScreen();
//           },
//         ),
//         GoRoute(
//           path: 'cart',
//           builder: (BuildContext context, GoRouterState state) {
//             return const CartScreen();
//           },
//         ),
//
//         // GoRoute(
//         //   path: 'verify_email',
//         //   builder: (BuildContext context, GoRouterState state) {
//         //     return const VerifyEmailView(title: title, subTitle: subTitle);
//         //   },
//         // ),
//       ],
//     ),
//   ],
// );
// GoRoute onBoardingRouter(LoginState state) {
//   return GoRoute(
//     path: '/',
//     builder: (BuildContext context, GoRouterState state) {
//       return OnBoardingScreen();
//     },
//     routes: <RouteBase>[
//       GoRoute(
//         path: 'login',
//         builder: (BuildContext context, GoRouterState state) {
//           return const LoginScreen();
//         },
//       ),
//       GoRoute(
//         path: 'sign_up',
//         builder: (BuildContext context, GoRouterState state) {
//           return const SignUpScreen();
//         },
//       ),
//       GoRoute(
//         path: 'home',
//         builder: (BuildContext context, GoRouterState state) {
//           return const CommonBottomNavigation();
//         },
//       ),
//       GoRoute(
//         path: 'forgot_password',
//         builder: (BuildContext context, GoRouterState state) {
//           return const ForgotPasswordScreen();
//         },
//       ),
//       GoRoute(
//         path: 'verify_email/:title/:subTitle',
//         builder: (BuildContext context, GoRouterState state) {
//           return VerifyEmailView(
//             title: state.pathParameters['title']!,
//             subTitle: state.pathParameters['subTitle']!,
//           );
//         },
//       ),
//     ],
//   );
// }
