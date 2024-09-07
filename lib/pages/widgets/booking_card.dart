// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:boxigo_project/model/customer_estimate_flow.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class BookingCard extends StatelessWidget {
  final CustomerEstimateFlow customerEstimateFlow;
  const BookingCard({super.key, required this.customerEstimateFlow});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DateAndTime(
                dateTime: DateTime.parse(customerEstimateFlow.movingOn),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FromAddressWidget(
                      fromAddress: customerEstimateFlow.fromAddress,
                      estimateId: customerEstimateFlow.estimateId,
                    ),
                    const SizedBox(height: 16),
                    ShippingItemDetails(
                      customerEstimateFlow: customerEstimateFlow,
                    ),
                    const SizedBox(height: 16),
                    ToAddressWidget(
                      toAddress: customerEstimateFlow.toAddress,
                    ),
                    const SizedBox(height: 16),
                    const Row(
                      children: [
                        ViewDetailsButton(),
                        SizedBox(width: 10),
                        SubmitQuoteButton()
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(
                top: 16.0), // Adding space before the bottom line
            child: Divider(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}

class DateAndTime extends StatelessWidget {
  final DateTime dateTime;

  const DateAndTime({
    super.key,
    required this.dateTime,
  });

  @override
  Widget build(BuildContext context) {
    String month = DateFormat.MMM().format(dateTime); // Aug
    String day = DateFormat.d().format(dateTime); // 23
    String time = DateFormat.Hm().format(dateTime); // 23:45

    return Column(
      children: [
        Text(
          month,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          day,
          style: const TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
            color: Colors.orange,
          ),
        ),
        Text(
          time,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}

class FromAddressWidget extends StatelessWidget {
  final FromAddress fromAddress;
  final String estimateId;
  const FromAddressWidget({
    super.key,
    required this.fromAddress,
    required this.estimateId,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              fromAddress.fromCity,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(width: 10),
            Text(
              estimateId,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Text(
          fromAddress.fromAddress,
          style: const TextStyle(fontSize: 14, color: Colors.black54),
        ),
      ],
    );
  }
}

class ShippingItemDetails extends StatelessWidget {
  final CustomerEstimateFlow customerEstimateFlow;
  const ShippingItemDetails({super.key, required this.customerEstimateFlow});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Icon(Icons.arrow_downward, color: Colors.orange),
        IconWithLabel(
            icon: Icons.home, label: customerEstimateFlow.propertySize),
        IconWithLabel(
            icon: Icons.shopping_bag,
            label: "${customerEstimateFlow.items.inventory.length} items"),
        IconWithLabel(
            icon: Icons.archive,
            label: "${customerEstimateFlow.totalItems} boxes"),
        const IconWithLabel(icon: Icons.directions_car, label: "12.3 kms"),
      ],
    );
  }
}

class ToAddressWidget extends StatelessWidget {
  final ToAddress toAddress;
  const ToAddressWidget({super.key, required this.toAddress});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          toAddress.toCity,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          toAddress.toAddress,
          style: const TextStyle(fontSize: 14, color: Colors.black54),
        ),
      ],
    );
  }
}

class ViewDetailsButton extends StatelessWidget {
  const ViewDetailsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: OutlinedButton(
        onPressed: () {},
        style: OutlinedButton.styleFrom(
          side: const BorderSide(color: Colors.orange), // Orange border
          shape: const RoundedRectangleBorder(), // Rectangular shape
        ),
        child: const Text(
          "View Details",
          style: TextStyle(color: Colors.orange), // Orange text
        ),
      ),
    );
  }
}

class SubmitQuoteButton extends StatelessWidget {
  const SubmitQuoteButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: OutlinedButton(
        onPressed: () {},
        style: OutlinedButton.styleFrom(
          side: const BorderSide(color: Colors.red), // Red border
          shape: const RoundedRectangleBorder(), // Rectangular shape
        ),
        child: const Text(
          "Submit Quote",
          style: TextStyle(color: Colors.red), // Red text
        ),
      ),
    );
  }
}

class IconWithLabel extends StatelessWidget {
  final IconData icon;
  final String label;

  const IconWithLabel({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: Colors.orange, size: 24),
        const SizedBox(height: 4),
        Text(label, style: const TextStyle(fontSize: 14, color: Colors.black)),
      ],
    );
  }
}
