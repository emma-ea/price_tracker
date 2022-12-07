class SymbolTick {

  String ask;
  String bid;
  String quote;

  SymbolTick(this.ask, this.bid, this.quote);

  factory SymbolTick.fromJson(Map<String, dynamic> json) {
    return SymbolTick(json['ask'], json['bid'], json['quote']);
  }

}