import 'package:intl/intl.dart';
// ignore_for_file: public_member_api_docs, sort_constructors_first
class ContactModel {
  String name;
  String phone;
  String gender;
  late String datetime;
  ContactModel({
    required this.name,
    required this.phone,
    required this.gender,
  }) {
    datetime = DateFormat("dd-MM-yyyy hh:mm:ss a").format(DateTime.now());
  }
}
