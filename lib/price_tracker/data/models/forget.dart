class Forget {
  String forget;
  String message;
  String reqId;

  Forget(this.forget, this.message, this.reqId);

  factory Forget.fromJson(Map<String, dynamic> json) {
    return Forget(json['forget'], json['msg_type'], json['req_id']);
  }
}