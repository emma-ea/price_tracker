class MarketSymbol {
  String symbol;
  String displayName;

  MarketSymbol(this.symbol, this.displayName);

  factory MarketSymbol.fromJson(Map<String, dynamic> json) {
    return MarketSymbol(json['symbol'], json['display_name']);
  }
  
}