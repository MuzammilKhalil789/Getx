import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/counter_controller.dart';


class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {

    final CounterController controller = Get.put(CounterController());

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('GetX MVC Counter'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            tooltip: 'Refresh / Reset',
            onPressed: controller.reset,
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Card(
                elevation: 2,
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    '⚡ GetX Reactive State Management (MVC)\n'
                    'Sirf Obx widget re-draw hota hai, puri screen nahi!',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              const SizedBox(height: 40),

              const Text(
                'Current Counter Value:',
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
              const SizedBox(height: 12),


              Obx(
                () => Container(
                  padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 20),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primaryContainer,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    '${controller.count}',
                    style: TextStyle(
                      fontSize: 64,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 50),


              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // 1. Decrement Button (-)
                  FloatingActionButton(
                    heroTag: 'btn_dec',
                    onPressed: controller.decrement,
                    tooltip: 'Decrement',
                    backgroundColor: Colors.red.shade100,
                    foregroundColor: Colors.red.shade900,
                    child: const Icon(Icons.remove),
                  ),
                  const SizedBox(width: 24),

                  // 2. Refresh / Reset Button
                  FloatingActionButton(
                    heroTag: 'btn_refresh',
                    onPressed: controller.reset,
                    tooltip: 'Reset',
                    backgroundColor: Colors.amber.shade100,
                    foregroundColor: Colors.amber.shade900,
                    child: const Icon(Icons.restore),
                  ),
                  const SizedBox(width: 24),

                  // 3. Increment Button (+)
                  FloatingActionButton(
                    heroTag: 'btn_inc',
                    onPressed: controller.increment,
                    tooltip: 'Increment',
                    backgroundColor: Colors.green.shade100,
                    foregroundColor: Colors.green.shade900,
                    child: const Icon(Icons.add),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
