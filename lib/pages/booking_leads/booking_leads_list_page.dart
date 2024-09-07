import 'package:boxigo_project/pages/booking_leads/bloc/booking_leads_bloc.dart';
import 'package:boxigo_project/pages/widgets/booking_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookingLeadsListPage extends StatefulWidget {
  const BookingLeadsListPage({super.key});

  @override
  State<BookingLeadsListPage> createState() => _BookingLeadsListPageState();
}

BookingLeadsBloc bookingLeadsBloc = BookingLeadsBloc();

class _BookingLeadsListPageState extends State<BookingLeadsListPage> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BookingLeadsBloc, BookingLeadsState>(
      bloc: bookingLeadsBloc,
      // buildWhen: (previous, current) => current is BookingLeadsState,
      listener: (context, state) {},
      builder: (context, state) {
        switch (state.runtimeType) {
          case const (BookingLeadsLoadingState):
            {
              bookingLeadsBloc.add(BookingLeadsInitialEvent());
              return const Scaffold(
                body: Center(
                  child: CircularProgressIndicator(),
                ),
              );
            }
          case const (BookingLeadsLoadedState):
            {
              final data = (state as BookingLeadsLoadedState).bookingLeads;
              return Scaffold(
                appBar: AppBar(
                  title: const Text('Booking Leads'),
                ),
                body: ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    return BookingCard(
                      customerEstimateFlow: data[index],
                    );
                  },
                ),
              );
            }
          case const (BookingLeadsErrorState):
            return const Center(
              child: Text('Failed to load data'),
            );
          default:
            return const Center(
              child: Text('Failed to load data'),
            );
        }
      },
    );
  }
}
