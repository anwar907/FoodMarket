part of 'models.dart';

enum TransactionStatus { delivered, on_delivery, pendding, cancelled }

class Transaction extends Equatable {
  final int id;
  final Food food;
  final int quantity;
  final int total;
  final DateTime dateTime;
  final TransactionStatus status;
  final User user;
  Transaction(
      {this.id,
      this.food,
      this.quantity,
      this.total,
      this.dateTime,
      this.status,
      this.user});

  Transaction copyWith({
    int id,
    Food food,
    int quantity,
    int total,
    DateTime dateTime,
    TransactionStatus status = TransactionStatus.on_delivery,
    User user,
  }) {
    return Transaction(
        id: id ?? this.id,
        food: food ?? this.food,
        quantity: quantity ?? this.quantity,
        total: total ?? this.total,
        dateTime: dateTime ?? this.dateTime,
        status: status ?? this.status,
        user: user ?? this.user);
  }

  @override
  // TODO: implement props
  List<Object> get props => [id, food, quantity, total, dateTime, status, user];
}

List<Transaction> mockTransaction = [
  Transaction(
      id: 1,
      food: mockFood[1],
      quantity: 5,
      total: (mockFood[1].price * 7 * 1.1).round() + 50000,
      dateTime: DateTime.now(),
      status: TransactionStatus.delivered,
      user: mockUser),
  Transaction(
      id: 2,
      food: mockFood[2],
      quantity: 6,
      total: (mockFood[2].price * 7 * 1.1).round() + 50000,
      dateTime: DateTime.now(),
      status: TransactionStatus.pendding,
      user: mockUser),
  Transaction(
      id: 3,
      food: mockFood[3],
      quantity: 8,
      total: (mockFood[3].price * 7 * 1.1).round() + 50000,
      dateTime: DateTime.now(),
      status: TransactionStatus.cancelled,
      user: mockUser),
  Transaction(
      id: 4,
      food: mockFood[3],
      quantity: 8,
      total: (mockFood[3].price * 7 * 1.1).round() + 50000,
      dateTime: DateTime.now(),
      status: TransactionStatus.on_delivery,
      user: mockUser)
];
