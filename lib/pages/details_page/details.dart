import 'package:boxigo_project/model/customer_estimate_flow.dart';
import 'package:boxigo_project/pages/details_page/tabs/floor_info.dart';
import 'package:boxigo_project/pages/details_page/tabs/items.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final CustomerEstimateFlow customerEstimateFlow;

  const DetailsPage({super.key, required this.customerEstimateFlow});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('New Leads'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Items'),
              Tab(text: 'Floor info'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ItemsTab(
              customerEstimateFlow: customerEstimateFlow,
            ),
            FloorInfo(
              customerEstimateFlow: customerEstimateFlow,
            ),
          ],
        ),
      ),
    );
  }
}
