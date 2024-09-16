import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/app_colors.dart';
import 'package:widgets_app/config/menu/menu_item.dart';
import 'package:widgets_app/presentation/screens/buttons/buttons_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text('Widgets en flutter',
            style: TextStyle(color: Colors.white)),
      ),
      body: _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const  BouncingScrollPhysics(), 
      itemCount: appMenuItem.length,
      itemBuilder: (context, index) {
        final menuItem = appMenuItem[index];
         return _CustomLisTile(menuItem: menuItem);
      });
  }
}

class _CustomLisTile extends StatelessWidget {

  final MenuItem menuItem;

  const _CustomLisTile({
     required this.menuItem,
  });

  @override
  Widget build(BuildContext context) {

    return ListTile(
     title: Text(menuItem.title),
     subtitle: Text(menuItem.subTitle),
     leading: Icon(menuItem.icon, color:AppColors.primaryColor),
     trailing: const Icon(Icons.arrow_forward_ios, color:AppColors.primaryColor),
     onTap: () {
        context.push(menuItem.link);
     },
    );
  }
}