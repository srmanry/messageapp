import 'package:chatapp/features/massage/controller/test_day_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// --------------------
/// Controller
/// --------------------

/// --------------------
/// UI
/// --------------------
class DaysSelectionScreen extends StatelessWidget {
  const DaysSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(DaysController());

    return Scaffold(
      appBar: AppBar(
        title: const Text("Select Days"),
      ),
      body: Obx(
        () => ListView.builder(
          itemCount: controller.days.length,
          itemBuilder: (context, index) {
            final day = controller.days[index];
            final isSelected = controller.selectedDays.contains(day);

            return ListTile(
              title: Text(day),
              trailing: Checkbox(
                value: isSelected,
                onChanged: (_) => controller.toggleDay(day),
              ),
              onTap: () => controller.toggleDay(day),
            );
          },
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ElevatedButton(
          onPressed: controller.selectedDays.isEmpty
              ? null
              : () {
                  final selected = controller.selectedDays.join(", ");
                  showDialog(
                    context: context,
                    builder: (_) => AlertDialog(
                      title: const Text("Selected Days"),
                      content: Text(selected),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text("OK"),
                        ),
                      ],
                    ),
                  );
                },
          child: const Text("Submit Selected Days"),
        ),
      ),
    );
  }
}
