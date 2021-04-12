class ReservationModel {
  int tableNumber;
  int peopleNumber;
  DateTime date;

  ReservationModel({
    this.tableNumber,
    this.peopleNumber,
    this.date,
  });

  factory ReservationModel.fromJson(Map<String, dynamic> data) {
    return ReservationModel(
      tableNumber: data["tableNumber"],
      peopleNumber: data["peopleNumber"],
      date: data["date"],
    );
  }
}
