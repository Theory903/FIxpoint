import 'package:fixpoint/presentation/management_screen/models/outletlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ManagementScreen extends StatelessWidget {
  // Controller for managing the outlets
  final OutletController _outletController = Get.put(OutletController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Outlet Management'),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              // Show dialog to add a new outlet
              _showAddOutletDialog(context);
            },
          ),
        ],
      ),
      body: Obx(() {
        if (_outletController.outlets.isEmpty) {
          return Center(child: Text('No outlets available.'));
        } else {
          return ListView.builder(
            itemCount: _outletController.outlets.length,
            itemBuilder: (context, index) {
              final outlet = _outletController.outlets[index];
              return ListTile(
                leading: Image.asset(outlet.outletoneOne.value),
                title: Text(outlet.peopleCounter.value),
                subtitle: Text(outlet.id.value),
                trailing: IconButton(
                  icon: Icon(Icons.edit),
                  onPressed: () {
                    // Edit outlet
                    _showEditOutletDialog(context, outlet);
                  },
                ),
              );
            },
          );
        }
      }),
    );
  }

  // Show dialog to add a new outlet
  void _showAddOutletDialog(BuildContext context) {
    final TextEditingController peopleCounterController = TextEditingController();
    final TextEditingController outletIdController = TextEditingController();

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Add New Outlet'),
          content: Column(
            children: [
              TextField(
                controller: peopleCounterController,
                decoration: InputDecoration(labelText: 'People Counter'),
              ),
              TextField(
                controller: outletIdController,
                decoration: InputDecoration(labelText: 'Outlet ID'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Get.back();
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                _outletController.addOutlet(
                  peopleCounterController.text,
                  outletIdController.text,
                );
                Get.back();
              },
              child: Text('Add'),
            ),
          ],
        );
      },
    );
  }

  // Show dialog to edit an outlet
  void _showEditOutletDialog(BuildContext context, OutletlistItemModel outlet) {
    final TextEditingController peopleCounterController = TextEditingController(text: outlet.peopleCounter.value);
    final TextEditingController outletIdController = TextEditingController(text: outlet.id.value);

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Edit Outlet'),
          content: Column(
            children: [
              TextField(
                controller: peopleCounterController,
                decoration: InputDecoration(labelText: 'People Counter'),
              ),
              TextField(
                controller: outletIdController,
                decoration: InputDecoration(labelText: 'Outlet ID'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Get.back();
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                _outletController.updateOutlet(
                  outlet,
                  peopleCounterController.text,
                  outletIdController.text,
                );
                Get.back();
              },
              child: Text('Update'),
            ),
          ],
        );
      },
    );
  }
}

class OutletController extends GetxController {
  var outlets = <OutletlistItemModel>[].obs; // Observable list of outlets

  // Add a new outlet
  void addOutlet(String peopleCounter, String id) {
    final newOutlet = OutletlistItemModel(
      peopleCounter: peopleCounter,
      id: id,
    );
    outlets.add(newOutlet);
  }

  // Update an existing outlet
  void updateOutlet(OutletlistItemModel outlet, String peopleCounter, String id) {
    outlet.peopleCounter.value = peopleCounter;
    outlet.id.value = id;
  }

  // Delete an outlet
  void deleteOutlet(OutletlistItemModel outlet) {
    outlets.remove(outlet);
  }
}
