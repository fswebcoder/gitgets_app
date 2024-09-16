import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/app_colors.dart';

class ButtonsScreen extends StatelessWidget {
    static const String name = 'button_screen';

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true,
        title: const Text('Botones', style: TextStyle(color: Colors.white)),
      ),
      body:const  _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        
        onPressed: () {
           context.pop();
        },
        child: const Icon(Icons.arrow_back_ios_new_outlined, color: AppColors.platinumColor),
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();


  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: double.infinity,

      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Wrap(
          spacing: 10,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text('ElevatedButton'),
            ),
            const SizedBox(width: 10),
            TextButton(
              onPressed: () {},

              child: const Text('TextButton'),
            ),
            const SizedBox(width: 10),
            OutlinedButton(
              onPressed: () {},
              child: const Text('OutlinedButton'),
            ),
            const SizedBox(width: 10),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add),
            ),
            const SizedBox(width: 10),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.add),
              label: const Text('ElevatedButton.icon'),
            ),
            const SizedBox(width: 10),
            TextButton.icon(
            
              onPressed: () {},
              icon: const Icon(Icons.add),
              label: const Text('TextButton.icon'),
            ),
            const SizedBox(width: 10),
            OutlinedButton.icon(
              onPressed: null,
              icon: const Icon(Icons.add),
              label: const Text('OutlinedButton.icon'),
            ),
            const SizedBox(width: 10),
            FilledButton(
              onPressed: (){}, child: const Text('FilledButton'),),
            const SizedBox(width: 10),
            IconButton(
              onPressed: (){}, 
              icon: const Icon(Icons.app_registration_outlined), 
              color: AppColors.primaryColor, iconSize: 30,
                style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.resolveWith<Color?>(
                      (Set<WidgetState> states) {
                        if (states.contains(WidgetState.disabled)) {
                          return AppColors.primaryColor.withOpacity(0.5);
                        }
                        return AppColors.platinumColor;
                      },
                    )
                ),
              ),
             const SizedBox(width: 10),
            const CustomButton(),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(50),
      child: Material(
        color: AppColors.primaryColor,
        child:   InkWell(
          onTap: () {},
          child: const Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('CustomButton'),
          ),
        ),
      ),
    );
  }
}