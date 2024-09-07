import 'package:bloc/bloc.dart';
import 'package:boxigo_project/model/customer_estimate_flow.dart';
import 'package:boxigo_project/repository/customer_estimates_repo.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'booking_leads_event.dart';
part 'booking_leads_state.dart';

class BookingLeadsBloc extends Bloc<BookingLeadsEvent, BookingLeadsState> {
  BookingLeadsBloc() : super(BookingLeadsLoadingState()) {
    on<BookingLeadsInitialEvent>((event, emit) async {
      emit(BookingLeadsLoadingState());
      try {
        final data = await NetworkService().fetchWeltData();
        emit(BookingLeadsLoadedState(data.customerEstimateFlow));
      } catch (e) {
        emit(BookingLeadsErrorState('Failed to load data'));
      }
    });
  }
}
