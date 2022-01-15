class Chart {
  Chart({required this.month, required this.credit, required this.debit});
  late String month;
  late double credit;
  late double debit;
}

List<Chart> chartData = [
  Chart(month: "Jan", credit: 5000.00, debit: 567.23),
  Chart(month: "Feb", credit: 8500.00, debit: 567.23),
  Chart(month: "Mar", credit: 4688.00, debit: 567.23),
  Chart(month: "Apr", credit: 9487.00, debit: 567.23),
  Chart(month: "May", credit: 8484.00, debit: 567.23),
  Chart(month: "Jun", credit: 5000.00, debit: 567.23),
  Chart(month: "Jul", credit: 7491.00, debit: 567.23),
  Chart(month: "Aug", credit: 7744.00, debit: 567.23),
  Chart(month: "Sep", credit: 7478.00, debit: 567.23),
  Chart(month: "Oct", credit: 8473.00, debit: 567.23),
  Chart(month: "Nov", credit: 15038.00, debit: 567.23),
  Chart(month: "Dec", credit: 1288.00, debit: 567.23),
];

class Reviews {
  Reviews({required this.reviews, required this.count});
  late String reviews;
  late int count;
}

List<Reviews> reviews = [
  Reviews(reviews: "bad", count: 250),
  Reviews(reviews: "good", count: 1000),
];
