import 'package:boxigo_project/Utils.dart';
import 'package:boxigo_project/model/customer_estimate_flow.dart';
import 'package:flutter/material.dart';

class ItemsTab extends StatelessWidget {
  final CustomerEstimateFlow customerEstimateFlow;

  const ItemsTab({super.key, required this.customerEstimateFlow});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          for (var inventory in customerEstimateFlow.items.inventory)
            InventoryExpansionTile(inventory: inventory),
          CustomItem(
            customerEstimateFlow: customerEstimateFlow,
          ),
        ],
      ),
    );
  }
}

class InventoryExpansionTile extends StatelessWidget {
  final Inventory inventory;
  const InventoryExpansionTile({super.key, required this.inventory});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      initiallyExpanded: true,
      title: Text(
        inventory.displayName,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.orange,
        ),
      ),
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              inventory.name,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        for (var category in inventory.category) _buildCategoryItem(category),
      ],
    );
  }

  Widget _buildCategoryItem(Category category) {
    return ListTile(
      leading: Icon(itemIcons[category.displayName] ?? Icons.help_outline),
      title: Text(category.displayName),
      subtitle: Text("Type: ${category.displayName}"),
      trailing: Text(category.order.toString()),
    );
  }
}

class CustomItem extends StatelessWidget {
  final CustomerEstimateFlow customerEstimateFlow;

  const CustomItem({super.key, required this.customerEstimateFlow});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      initiallyExpanded: true,
      title: const Text(
        'Custom Items',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.orange,
        ),
      ),
      children: <Widget>[
        for (var item in customerEstimateFlow.items.customItems.items)
          buildItem(
              item.itemName,
              item.itemDescription,
              "L: ${item.itemLength} ft",
              "W: ${item.itemWidth} ft",
              "H: ${item.itemHeight} ft"),
      ],
    );
  }

  Widget buildItem(String title, String description, String length,
      String width, String height) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            ),
          ),
          const SizedBox(height: 4.0),
          Text(
            description,
            style: TextStyle(fontSize: 14.0, color: Colors.grey[700]),
          ),
          const SizedBox(height: 8.0),
          Row(
            children: [
              buildDimensionText(length),
              const SizedBox(width: 16),
              buildDimensionText(width),
              const SizedBox(width: 16),
              buildDimensionText(height),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildDimensionText(String dimension) {
    return Text(
      dimension,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 14.0,
      ),
    );
  }
}
