import 'dart:io';
import 'dart:convert';

PrinterDevice printerDeviceFromJson(String str) => PrinterDevice.fromJson(json.decode(str));

class PrinterDevice {
  String name;
  String operatingSystem = Platform.operatingSystem;
  String? vendorId;
  String? productId;
  String? address;

  PrinterDevice({required this.name, this.address, this.vendorId, this.productId});

  factory PrinterDevice.fromJson(Map<String, dynamic> json) => PrinterDevice(
    name: json["name"],
    vendorId: json["vendor_id"],
    productId: json["product_id"],
    address: json["address"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "vendor_id": vendorId,
    "product_id": productId,
    "address": address,
  };
}
