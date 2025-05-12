part of 'counter_bloc.dart';

@immutable
sealed class CounterState {}

final class CounterInitial extends CounterState {}

class IncrementCounterState extends CounterState {
  final int count;

  IncrementCounterState({required this.count});
}
