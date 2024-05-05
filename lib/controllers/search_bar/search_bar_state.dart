part of 'search_bar_bloc.dart';

@immutable
sealed class SearchBarState {}

final class SearchBarInitial extends SearchBarState {}

final class SearchIconState extends SearchBarState {}

final class SearchOpenBarState extends SearchBarState {}
