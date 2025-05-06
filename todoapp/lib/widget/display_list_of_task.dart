import 'package:flutter/material.dart';
import 'package:todoapp/data/data.dart';
import 'package:todoapp/utils/utils.dart';
import 'package:todoapp/widget/widgets.dart';

class DisplayListOfTask extends StatelessWidget {
  const DisplayListOfTask(
      {super.key, required this.tasks, this.isCompletedTasks = false});

  final List<Task> tasks;
  final bool isCompletedTasks;

  @override
  Widget build(BuildContext context) {
    final deviceSize = context.deviceSize;
    final height =
        isCompletedTasks ? deviceSize.height * 0.25 : deviceSize.height * 0.3;
    final emptyTasksMessage = isCompletedTasks
        ? 'There is no completed task yet'
        : 'There is no task todo!';

    return CommonContainer(
      height: height,
      child: tasks.isEmpty
          ? Center(
              child: Text(
                emptyTasksMessage,
                style: context.textTheme.headlineSmall,
              ),
            )
          : ListView.separated(
              shrinkWrap: true,
              itemCount: tasks.length,
              padding: EdgeInsets.zero,
              itemBuilder: (ctx, index) {
                final task = tasks[index];
                return InkWell(
                  onLongPress: () {
                    // ToDo-Delete Task
                  },
                  onTap: () async {
                    // ToDo-Show Task

                    await showModalBottomSheet(
                      context: context,
                      builder: (ctx) {
                        return TaskDetails(task: task);
                      },
                    );
                  },
                  child: TaskTile(task: task),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const Divider(
                  thickness: 1.5,
                );
              },
            ),
    );
  }
}
