import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:social_media/components/custom_text_field.dart';
import 'package:social_media/components/my_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController postController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        //drawer button
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        title: const Text('H O M E'),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.background,
      ),
      backgroundColor: Theme.of(context).colorScheme.background,

      //Drawer
      drawer: myDrawer(context),

      //Home Screen body
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              children: [
                //post textfield
                Expanded(
                  child: MyTextField(
                    hintText: 'Post Somthing',
                    obsecureText: false,
                    controller: postController,
                  ),
                ),
                const Gap(30),
                iconClick(context),
              ],
            ),

            //List of posts
            // StreamBuilder(stream: stream, builder: builder)
          ],
        ),
      ),
    );
  }

  GestureDetector iconClick(BuildContext context) {
    return GestureDetector(
      // post when click
      onTap: () {},
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(15),
          ),
          border: Border.all(
            color: Theme.of(context).colorScheme.inversePrimary,
          ),
        ),
        child: Icon(
          Icons.check,
          color: Theme.of(context).colorScheme.inversePrimary,
        ),
      ),
    );
  }
}
