import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_implementation/routes/app_route_constant.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            child: const Center(
              child: Text('Home'),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                GoRouter.of(context).push(Uri(path: '/about').toString());
              },
              child: const Text('About Page')),
          ElevatedButton(
              onPressed: () {
                GoRouter.of(context)
                    .pushNamed(MyAppRouteConstants.contactUsRouteName);
              },
              child: const Text('ContactUs Page')),
          ElevatedButton(
              onPressed: () {
                GoRouter.of(context)
                    .pushNamed(MyAppRouteConstants.profileRouteName, params: {
                  'username': 'Akshit Madan',
                  'userid': 'uhfhfhfdghfk'
                });
              },
              child: const Text('Profile Page 1')),
        ],
      ),
    );
  }
}
