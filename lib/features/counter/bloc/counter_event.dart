part of 'counter_bloc.dart';

@immutable
sealed class CounterEvent {}

//increment counter event
class IncrementCounterEvent extends CounterEvent {}
