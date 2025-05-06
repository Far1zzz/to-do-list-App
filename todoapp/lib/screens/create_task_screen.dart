import 'package:flutter/material.dart';
import 'package:todoapp/widget/display_white_text.dart';
import 'package:go_router/go_router.dart';
import 'package:todoapp/widget/widgets.dart';
import 'package:gap/gap.dart';

class CreateTaskScreen extends StatelessWidget {
  static CreateTaskScreen builder(BuildContext context, GoRouterState state) =>
      const CreateTaskScreen();
  const CreateTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const DisplayWhiteText(text: 'Add New Task'),
      ),
      body: const SafeArea(
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CommonTextField(
                title: 'Task Title',
                hintText: 'Task Title',
              ),
              Gap(16),
              SelectCategory(),
              Gap(16),
              SelectDateTime(),
              Gap(16),
              CommonTextField(
                title: 'Note',
                hintText: 'Task note',
                maxLines: 6,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            minimumSize: const Size.fromHeight(50), // Full width button
          ),
          child: const DisplayWhiteText(text: 'Save'),
        ),
      ),
    );
  }
}
