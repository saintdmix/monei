import 'package:equatable/equatable.dart';

/// Bills payment events.
abstract class BillsEvent extends Equatable {
  const BillsEvent();

  @override
  List<Object?> get props => [];
}

class BillsFetchHistory extends BillsEvent {}

class BillsFetchElectricityBillers extends BillsEvent {}

class BillsFetchBillerItems extends BillsEvent {
  final String category;
  final String billerName;

  const BillsFetchBillerItems({
    required this.category,
    required this.billerName,
  });

  @override
  List<Object?> get props => [category, billerName];
}

class BillsValidateCustomer extends BillsEvent {
  final Map<String, dynamic> body;

  const BillsValidateCustomer({required this.body});

  @override
  List<Object?> get props => [body];
}

class BillsBuyAirtime extends BillsEvent {
  final String billerName;
  final String customer;
  final double amount;
  final String transactionPin;

  const BillsBuyAirtime({
    required this.billerName,
    required this.customer,
    required this.amount,
    required this.transactionPin,
  });

  @override
  List<Object?> get props => [billerName, customer, amount];
}

class BillsBuyData extends BillsEvent {
  final String billerName;
  final String customer;
  final String itemCode;
  final double amount;
  final String transactionPin;

  const BillsBuyData({
    required this.billerName,
    required this.customer,
    required this.itemCode,
    required this.amount,
    required this.transactionPin,
  });

  @override
  List<Object?> get props => [billerName, customer, itemCode, amount];
}

class BillsPayElectricity extends BillsEvent {
  final String billerName;
  final String customer;
  final double amount;
  final String billerCode;
  final String transactionPin;

  const BillsPayElectricity({
    required this.billerName,
    required this.customer,
    required this.amount,
    required this.billerCode,
    required this.transactionPin,
  });

  @override
  List<Object?> get props => [billerName, customer, amount, billerCode];
}

class BillsSubscribeCableTv extends BillsEvent {
  final String billerName;
  final String customer;
  final String itemCode;
  final double amount;
  final String transactionPin;

  const BillsSubscribeCableTv({
    required this.billerName,
    required this.customer,
    required this.itemCode,
    required this.amount,
    required this.transactionPin,
  });

  @override
  List<Object?> get props => [billerName, customer, itemCode, amount];
}
