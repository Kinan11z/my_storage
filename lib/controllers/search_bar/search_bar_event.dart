part of 'search_bar_bloc.dart';

@immutable
sealed class SearchBarEvent {}

class SearchIconEvent extends SearchBarEvent {}

class SearchOpenBarEvent extends SearchBarEvent {}
