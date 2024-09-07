part of 'booking_leads_bloc.dart';

@immutable
sealed class BookingLeadsState {}

final class BookingLeadsLoadingState extends BookingLeadsState {}

final class BookingLeadsLoadedState extends BookingLeadsState {
  final List<CustomerEstimateFlow> bookingLeads;

  BookingLeadsLoadedState(this.bookingLeads);
}

final class BookingLeadsErrorState extends BookingLeadsState {
  final String message;

  BookingLeadsErrorState(this.message);
}
