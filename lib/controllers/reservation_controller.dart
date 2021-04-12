import 'package:client_app/models/reservation_model.dart';
import 'package:faker/faker.dart';
import 'package:get/get.dart';

class ReservationController extends GetxController {
  RxList<ReservationModel> currentReservations = <ReservationModel>[].obs;
  RxList<ReservationModel> oldReservations = <ReservationModel>[].obs;

  void getReservationsData() {
    // getting current Reservations
    for (int i = 0; i < 3; ++i) {
      currentReservations.add(ReservationModel(
        tableNumber: faker.randomGenerator.integer(40),
        peopleNumber: faker.randomGenerator.integer(4, min: 1),
        date: faker.date.dateTime(),
      ));
    }
    // getting old Reservations
    for (int i = 0; i < 3; ++i) {
      oldReservations.add(ReservationModel(
        tableNumber: faker.randomGenerator.integer(40),
        peopleNumber: faker.randomGenerator.integer(4, min: 1),
        date: faker.date.dateTime(),
      ));
    }
  }

  @override
  void onInit() {
    getReservationsData();
    super.onInit();
  }
}
