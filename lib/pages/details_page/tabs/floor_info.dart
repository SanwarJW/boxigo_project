import 'package:boxigo_project/model/customer_estimate_flow.dart';
import 'package:flutter/material.dart';

class FloorInfo extends StatelessWidget {
  final CustomerEstimateFlow customerEstimateFlow;
  const FloorInfo({super.key, required this.customerEstimateFlow});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        // child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: buildHouseDetails(
                'Existing house details',
                floorNo: customerEstimateFlow.oldFloorNo,
                elevatorAvailable: customerEstimateFlow.oldElevatorAvailability,
                packingRequired: customerEstimateFlow.packingService,
                distance: customerEstimateFlow.oldParkingDistance,
                additionalInfo: customerEstimateFlow.oldHouseAdditionalInfo,
                isExisting: true,
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: buildHouseDetails(
                'New house details',
                floorNo: customerEstimateFlow.newFloorNo,
                elevatorAvailable: customerEstimateFlow.newElevatorAvailability,
                packingRequired: customerEstimateFlow.unpackingService,
                distance: customerEstimateFlow.newParkingDistance,
                additionalInfo: customerEstimateFlow.newHouseAdditionalInfo,
                isExisting: false,
              ),
            ),
          ],
        ),
      ),
      // )
    );
  }

  Widget buildHouseDetails(
    String title, {
    required String floorNo,
    required String elevatorAvailable,
    required String packingRequired,
    required String distance,
    required String additionalInfo,
    required bool isExisting,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        // Header with background color
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          color: Colors.grey[200], // Light background for the title
          child: Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: isExisting ? Colors.red : Colors.orange,
            ),
          ),
        ),
        // Rest of the details without background color
        const SizedBox(height: 8),
        buildRow('Floor No.', floorNo),
        buildRow('Elevator Available', elevatorAvailable),
        buildRow(isExisting ? 'Packing Required' : 'Unpacking Required',
            packingRequired),
        buildRow('Distance from door to truck', convertFeetToMeters(distance)),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            'Additional Information',
            style: TextStyle(color: Colors.grey[700]),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            additionalInfo,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }

  Widget buildRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: 4.0, horizontal: 16.0), // Added horizontal padding
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            // style: const TextStyle(fontWeight: FontWeight.w500),
          ),
          Text(
            value,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

String convertFeetToMeters(String input) {
  // Extract the numeric value from the input string
  double feet = double.parse(input.split(" ")[0]);

  // Convert feet to meters
  double meters = feet * 0.3048;

  // Return the result as a string with 2 decimal places
  return "${meters.toStringAsFixed(0)} meters";
}
