part of 'user_cubit.dart';

abstract class UserState extends Equatable {
  const UserState();

  @override
  List<Object> get props => [];
}

class UserInitial extends UserState {}

class UserLoaded extends UserState {
  final User user;

  UserLoaded(this.user);

  @override
  List<Object> get props => [user];
}

class UserLoadingField extends UserState {
  final String message;

  UserLoadingField(this.message);

  @override
  // TODO: implement props
  List<Object> get props => [message];
}
