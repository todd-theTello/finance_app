class Cards {
  Cards(
      {required this.cardHolderName,
      required this.cardNumber,
      required this.cvv,
      required this.expMonth,
      required this.expYear});
  late String cardHolderName, cardNumber;
  late int cvv, expMonth, expYear;
}

List<Cards> cards = [
  Cards(
    cardHolderName: "Todd Nelson",
    cardNumber: "4562 1122 4595 7852",
    cvv: 151,
    expMonth: 04,
    expYear: 2024,
  ),
  Cards(
    cardHolderName: "Todd Nelson",
    cardNumber: "4562112245957852",
    cvv: 151,
    expMonth: 04,
    expYear: 2024,
  ),
  Cards(
    cardHolderName: "Todd Nelson",
    cardNumber: "4562112245957852",
    cvv: 151,
    expMonth: 04,
    expYear: 2024,
  ),
];
int carps = cards.length;
