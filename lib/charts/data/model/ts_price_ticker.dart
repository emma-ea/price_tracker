class PriceData {
  final DateTime date;
  /// Price quotes over-time
  final double quoteOT;

  const PriceData({required this.date, required this.quoteOT});

  @override
  String toString() {
    return "PriceData(date: $date, quoteOT: $quoteOT)\n";
  }

}