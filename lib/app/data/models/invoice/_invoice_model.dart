class InvoiceDetailsModel {
  String? message;
  InvoiceDetails? data;
  String? html;

  InvoiceDetailsModel({
    this.message,
    this.data,
    this.html,
  });

  factory InvoiceDetailsModel.fromJson(Map<String, dynamic> json) {
    return InvoiceDetailsModel(
      message: json["message"],
      data: json["data"] == null ? null : InvoiceDetails.fromJson(json["data"]),
      html: json["html"],
    );
  }
}

class InvoiceDetails {
  int? id;
  num? totalAmount;

  InvoiceDetails({
    this.id,
    this.totalAmount,
  });

  factory InvoiceDetails.fromJson(Map<String, dynamic> json) {
    return InvoiceDetails(
      id: json["id"],
      totalAmount: json["total_amount"],
    );
  }
}
