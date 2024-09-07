// To parse this JSON data, do
//
//     final model = modelFromMap(jsonString);

import 'dart:convert';

BookingLeads modelFromMap(String str) => BookingLeads.fromMap(json.decode(str));

String modelToMap(BookingLeads data) => json.encode(data.toMap());

class BookingLeads {
  List<CustomerEstimateFlow> customerEstimateFlow;

  BookingLeads({
    required this.customerEstimateFlow,
  });

  factory BookingLeads.fromMap(Map<String, dynamic> json) => BookingLeads(
        customerEstimateFlow: List<CustomerEstimateFlow>.from(
            json["Customer_Estimate_Flow"]
                .map((x) => CustomerEstimateFlow.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "Customer_Estimate_Flow":
            List<dynamic>.from(customerEstimateFlow.map((x) => x.toMap())),
      };
}

class CustomerEstimateFlow {
  String estimateId;
  String userId;
  String movingFrom;
  String movingTo;
  String movingOn;
  String distance;
  String propertySize;
  String oldFloorNo;
  String newFloorNo;
  String oldElevatorAvailability;
  String newElevatorAvailability;
  String oldParkingDistance;
  String newParkingDistance;
  String unpackingService;
  String packingService;
  Items items;
  String oldHouseAdditionalInfo;
  String newHouseAdditionalInfo;
  String totalItems;
  String status;
  String orderDate;
  String dateCreated;
  dynamic dateOfComplete;
  dynamic dateOfCancel;
  String estimateStatus;
  String customStatus;
  dynamic estimateComparison;
  dynamic estimateAmount;
  List<dynamic> successfulPayments;
  String orderReviewed;
  String callBack;
  String moveDateFlexible;
  FromAddress fromAddress;
  ToAddress toAddress;
  String serviceType;
  dynamic storageItems;

  CustomerEstimateFlow({
    required this.estimateId,
    required this.userId,
    required this.movingFrom,
    required this.movingTo,
    required this.movingOn,
    required this.distance,
    required this.propertySize,
    required this.oldFloorNo,
    required this.newFloorNo,
    required this.oldElevatorAvailability,
    required this.newElevatorAvailability,
    required this.oldParkingDistance,
    required this.newParkingDistance,
    required this.unpackingService,
    required this.packingService,
    required this.items,
    required this.oldHouseAdditionalInfo,
    required this.newHouseAdditionalInfo,
    required this.totalItems,
    required this.status,
    required this.orderDate,
    required this.dateCreated,
    required this.dateOfComplete,
    required this.dateOfCancel,
    required this.estimateStatus,
    required this.customStatus,
    required this.estimateComparison,
    required this.estimateAmount,
    required this.successfulPayments,
    required this.orderReviewed,
    required this.callBack,
    required this.moveDateFlexible,
    required this.fromAddress,
    required this.toAddress,
    required this.serviceType,
    required this.storageItems,
  });

  factory CustomerEstimateFlow.fromMap(Map<String, dynamic> json) =>
      CustomerEstimateFlow(
        estimateId: json["estimate_id"],
        userId: json["user_id"],
        movingFrom: json["moving_from"],
        movingTo: json["moving_to"],
        movingOn: json["moving_on"],
        distance: json["distance"],
        propertySize: json["property_size"],
        oldFloorNo: json["old_floor_no"],
        newFloorNo: json["new_floor_no"],
        oldElevatorAvailability: json["old_elevator_availability"],
        newElevatorAvailability: json["new_elevator_availability"],
        oldParkingDistance: json["old_parking_distance"],
        newParkingDistance: json["new_parking_distance"],
        unpackingService: json["unpacking_service"],
        packingService: json["packing_service"],
        items: Items.fromMap(json["items"]),
        oldHouseAdditionalInfo: json["old_house_additional_info"],
        newHouseAdditionalInfo: json["new_house_additional_info"],
        totalItems: json["total_items"],
        status: json["status"],
        orderDate: json["order_date"],
        dateCreated: json["date_created"],
        dateOfComplete: json["date_of_complete"],
        dateOfCancel: json["date_of_cancel"],
        estimateStatus: json["estimate_status"],
        customStatus: json["custom_status"],
        estimateComparison: json["estimate_comparison"],
        estimateAmount: json["estimateAmount"],
        successfulPayments:
            List<dynamic>.from(json["successfulPayments"].map((x) => x)),
        orderReviewed: json["order_reviewed"],
        callBack: json["call_back"],
        moveDateFlexible: json["move_date_flexible"],
        fromAddress: FromAddress.fromMap(json["from_address"]),
        toAddress: ToAddress.fromMap(json["to_address"]),
        serviceType: json["service_type"],
        storageItems: json["storage_items"],
      );

  Map<String, dynamic> toMap() => {
        "estimate_id": estimateId,
        "user_id": userId,
        "moving_from": movingFrom,
        "moving_to": movingTo,
        "moving_on": movingOn,
        "distance": distance,
        "property_size": propertySize,
        "old_floor_no": oldFloorNo,
        "new_floor_no": newFloorNo,
        "old_elevator_availability": oldElevatorAvailability,
        "new_elevator_availability": newElevatorAvailability,
        "old_parking_distance": oldParkingDistance,
        "new_parking_distance": newParkingDistance,
        "unpacking_service": unpackingService,
        "packing_service": packingService,
        "items": items.toMap(),
        "old_house_additional_info": oldHouseAdditionalInfo,
        "new_house_additional_info": newHouseAdditionalInfo,
        "total_items": totalItems,
        "status": status,
        "order_date": orderDate,
        "date_created": dateCreated,
        "date_of_complete": dateOfComplete,
        "date_of_cancel": dateOfCancel,
        "estimate_status": estimateStatus,
        "custom_status": customStatus,
        "estimate_comparison": estimateComparison,
        "estimateAmount": estimateAmount,
        "successfulPayments":
            List<dynamic>.from(successfulPayments.map((x) => x)),
        "order_reviewed": orderReviewed,
        "call_back": callBack,
        "move_date_flexible": moveDateFlexible,
        "from_address": fromAddress.toMap(),
        "to_address": toAddress.toMap(),
        "service_type": serviceType,
        "storage_items": storageItems,
      };
}

class FromAddress {
  String firstName;
  String lastName;
  String fromAddress;
  String fromLocality;
  String fromCity;
  String fromState;
  String pincode;

  FromAddress({
    required this.firstName,
    required this.lastName,
    required this.fromAddress,
    required this.fromLocality,
    required this.fromCity,
    required this.fromState,
    required this.pincode,
  });

  factory FromAddress.fromMap(Map<String, dynamic> json) => FromAddress(
        firstName: json["firstName"],
        lastName: json["lastName"],
        fromAddress: json["fromAddress"],
        fromLocality: json["fromLocality"],
        fromCity: json["fromCity"],
        fromState: json["fromState"],
        pincode: json["pincode"],
      );

  Map<String, dynamic> toMap() => {
        "firstName": firstName,
        "lastName": lastName,
        "fromAddress": fromAddress,
        "fromLocality": fromLocality,
        "fromCity": fromCity,
        "fromState": fromState,
        "pincode": pincode,
      };
}

class Items {
  List<Inventory> inventory;
  CustomItems customItems;

  Items({
    required this.inventory,
    required this.customItems,
  });

  factory Items.fromMap(Map<String, dynamic> json) => Items(
        inventory: List<Inventory>.from(
            json["inventory"].map((x) => Inventory.fromMap(x))),
        customItems: CustomItems.fromMap(json["customItems"]),
      );

  Map<String, dynamic> toMap() => {
        "inventory": List<dynamic>.from(inventory.map((x) => x.toMap())),
        "customItems": customItems.toMap(),
      };
}

class CustomItems {
  String units;
  List<CustomItemsItem> items;

  CustomItems({
    required this.units,
    required this.items,
  });

  factory CustomItems.fromMap(Map<String, dynamic> json) => CustomItems(
        units: json["units"],
        items: List<CustomItemsItem>.from(
            json["items"].map((x) => CustomItemsItem.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "units": units,
        "items": List<dynamic>.from(items.map((x) => x.toMap())),
      };
}

class CustomItemsItem {
  String id;
  String itemHeight;
  String itemLength;
  String itemQty;
  String itemWidth;
  String itemDescription;
  String itemName;

  CustomItemsItem({
    required this.id,
    required this.itemHeight,
    required this.itemLength,
    required this.itemQty,
    required this.itemWidth,
    required this.itemDescription,
    required this.itemName,
  });

  factory CustomItemsItem.fromMap(Map<String, dynamic> json) => CustomItemsItem(
        id: json["id"],
        itemHeight: json["item_height"],
        itemLength: json["item_length"],
        itemQty: json["item_qty"],
        itemWidth: json["item_width"],
        itemDescription: json["item_description"],
        itemName: json["item_name"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "item_height": itemHeight,
        "item_length": itemLength,
        "item_qty": itemQty,
        "item_width": itemWidth,
        "item_description": itemDescription,
        "item_name": itemName,
      };
}

class Inventory {
  String id;
  int order;
  String name;
  String displayName;
  List<Category> category;

  Inventory({
    required this.id,
    required this.order,
    required this.name,
    required this.displayName,
    required this.category,
  });

  factory Inventory.fromMap(Map<String, dynamic> json) => Inventory(
        id: json["id"],
        order: json["order"],
        name: json["name"],
        displayName: json["displayName"],
        category: List<Category>.from(
            json["category"].map((x) => Category.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "order": order,
        "name": name,
        "displayName": displayName,
        "category": List<dynamic>.from(category.map((x) => x.toMap())),
      };
}

class Category {
  String id;
  int order;
  String name;
  String displayName;
  List<CategoryItem> items;

  Category({
    required this.id,
    required this.order,
    required this.name,
    required this.displayName,
    required this.items,
  });

  factory Category.fromMap(Map<String, dynamic> json) => Category(
        id: json["id"],
        order: json["order "],
        name: json["name"],
        displayName: json["displayName"],
        items: List<CategoryItem>.from(
            json["items"].map((x) => CategoryItem.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "order ": order,
        "name": name,
        "displayName": displayName,
        "items": List<dynamic>.from(items.map((x) => x.toMap())),
      };
}

class CategoryItem {
  List<Size>? size;
  List<ChildItem> childItems;
  String? typeOptions;
  Meta meta;
  int uniquieId;
  String name;
  String displayName;
  int order;
  String? nameOld;
  int qty;
  List<Type> type;
  String id;

  CategoryItem({
    required this.size,
    required this.childItems,
    required this.typeOptions,
    required this.meta,
    required this.uniquieId,
    required this.name,
    required this.displayName,
    required this.order,
    this.nameOld,
    required this.qty,
    required this.type,
    required this.id,
  });

  factory CategoryItem.fromMap(Map<String, dynamic> json) => CategoryItem(
        size: json["size"] == null
            ? []
            : List<Size>.from(json["size"]!.map((x) => Size.fromMap(x))),
        childItems: List<ChildItem>.from(
            json["childItems"].map((x) => ChildItem.fromMap(x))),
        typeOptions: json["typeOptions"],
        meta: Meta.fromMap(json["meta"]),
        uniquieId: json["uniquieId"],
        name: json["name"],
        displayName: json["displayName"],
        order: json["order"],
        nameOld: json["name_old"],
        qty: json["qty"],
        type: List<Type>.from(json["type"].map((x) => Type.fromMap(x))),
        id: json["id"],
      );

  Map<String, dynamic> toMap() => {
        "size":
            size == null ? [] : List<dynamic>.from(size!.map((x) => x.toMap())),
        "childItems": List<dynamic>.from(childItems.map((x) => x.toMap())),
        "typeOptions": typeOptions,
        "meta": meta.toMap(),
        "uniquieId": uniquieId,
        "name": name,
        "displayName": displayName,
        "order": order,
        "name_old": nameOld,
        "qty": qty,
        "type": List<dynamic>.from(type.map((x) => x.toMap())),
        "id": id,
      };
}

class ChildItem {
  List<Size>? size;
  String? typeOptions;
  Meta meta;
  int uniquieId;
  String name;
  String displayName;
  int order;
  String? nameOld;
  int qty;
  List<Type> type;
  String id;

  ChildItem({
    required this.size,
    required this.typeOptions,
    required this.meta,
    required this.uniquieId,
    required this.name,
    required this.displayName,
    required this.order,
    this.nameOld,
    required this.qty,
    required this.type,
    required this.id,
  });

  factory ChildItem.fromMap(Map<String, dynamic> json) => ChildItem(
        size: json["size"] == null
            ? []
            : List<Size>.from(json["size"]!.map((x) => Size.fromMap(x))),
        typeOptions: json["typeOptions"],
        meta: Meta.fromMap(json["meta"]),
        uniquieId: json["uniquieId"],
        name: json["name"],
        displayName: json["displayName"],
        order: json["order"],
        nameOld: json["name_old"],
        qty: json["qty"],
        type: List<Type>.from(json["type"].map((x) => Type.fromMap(x))),
        id: json["id"],
      );

  Map<String, dynamic> toMap() => {
        "size":
            size == null ? [] : List<dynamic>.from(size!.map((x) => x.toMap())),
        "typeOptions": typeOptions,
        "meta": meta.toMap(),
        "uniquieId": uniquieId,
        "name": name,
        "displayName": displayName,
        "order": order,
        "name_old": nameOld,
        "qty": qty,
        "type": List<dynamic>.from(type.map((x) => x.toMap())),
        "id": id,
      };
}

class Meta {
  bool hasType;
  String selectType;
  bool hasVariation;
  bool hasSize;

  Meta({
    required this.hasType,
    required this.selectType,
    required this.hasVariation,
    required this.hasSize,
  });

  factory Meta.fromMap(Map<String, dynamic> json) => Meta(
        hasType: json["hasType"],
        selectType: json["selectType"],
        hasVariation: json["hasVariation"],
        hasSize: json["hasSize"],
      );

  Map<String, dynamic> toMap() => {
        "hasType": hasType,
        "selectType": selectType,
        "hasVariation": hasVariation,
        "hasSize": hasSize,
      };
}

class Size {
  String option;
  String tooltip;
  bool selected;

  Size({
    required this.option,
    required this.tooltip,
    required this.selected,
  });

  factory Size.fromMap(Map<String, dynamic> json) => Size(
        option: json["option"],
        tooltip: json["tooltip"],
        selected: json["selected"],
      );

  Map<String, dynamic> toMap() => {
        "option": option,
        "tooltip": tooltip,
        "selected": selected,
      };
}

class Type {
  String id;
  String option;
  bool selected;

  Type({
    required this.id,
    required this.option,
    required this.selected,
  });

  factory Type.fromMap(Map<String, dynamic> json) => Type(
        id: json["id"],
        option: json["option"],
        selected: json["selected"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "option": option,
        "selected": selected,
      };
}

class ToAddress {
  String firstName;
  String lastName;
  String toAddress;
  String toLocality;
  String toCity;
  String toState;
  String pincode;

  ToAddress({
    required this.firstName,
    required this.lastName,
    required this.toAddress,
    required this.toLocality,
    required this.toCity,
    required this.toState,
    required this.pincode,
  });

  factory ToAddress.fromMap(Map<String, dynamic> json) => ToAddress(
        firstName: json["firstName"],
        lastName: json["lastName"],
        toAddress: json["toAddress"],
        toLocality: json["toLocality"],
        toCity: json["toCity"],
        toState: json["toState"],
        pincode: json["pincode"],
      );

  Map<String, dynamic> toMap() => {
        "firstName": firstName,
        "lastName": lastName,
        "toAddress": toAddress,
        "toLocality": toLocality,
        "toCity": toCity,
        "toState": toState,
        "pincode": pincode,
      };
}
