import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:todoapp/config/routes/routes.dart';
import 'package:todoapp/data/data.dart';
import 'package:todoapp/utils/utils.dart';
import 'package:todoapp/widget/widgets.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  static HomeScreen builder(BuildContext context, GoRouterState state) =>
      const HomeScreen();
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.colorSchame;
    final deviceSize = context.deviceSize;

    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: deviceSize.height * 0.3,
                width: deviceSize.width,
                color: colors.secondary,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DisplayWhiteText(
                      text: 'Aug 7, 2023',
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                    ),
                    Gap(10),
                    DisplayWhiteText(text: 'My Todo List', fontSize: 40),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: 170,
            left: 0,
            right: 0,
            child: SafeArea(
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const DisplayListOfTask(
                      tasks: [
                        Task(
                            title: 'title',
                            note: 'note',
                            time: '10:12',
                            date: 'Aug, 02',
                            isComplated: false,
                            category: TaskCategories.shopping),
                        Task(
                            title: 'title',
                            note: 'note',
                            time: '10:12',
                            date: 'Aug, 02',
                            isComplated: false,
                            category: TaskCategories.education),
                      ],
                    ),
                    const Gap(20),
                    Text(
                      'Complated',
                      style: context.textTheme.headlineSmall,
                    ),
                    const Gap(20),
                    const DisplayListOfTask(
                      tasks: [
                        Task(
                            title: 'title',
                            note: 'note',
                            time: '10:12',
                            date: 'Aug, 02',
                            isComplated: true,
                            category: TaskCategories.travel),
                        Task(
                            title: 'title',
                            note: '',
                            time: '10:12',
                            date: 'Aug, 02',
                            isComplated: true,
                            category: TaskCategories.personal),
                      ],
                      isCompletedTasks: true,
                    ),
                    const Gap(20),
                    ElevatedButton(
                      onPressed: () => context.push(RouteLocation.createTask),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: DisplayWhiteText(text: 'Add New Task'),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
