/// This class is used in the [userprofilecard_item_widget] screen.
class UserprofilecardItemModel {
  UserprofilecardItemModel({
    this.weeklyText,
    this.mainText,
    this.distanceText,
    this.id,
  }) {
    weeklyText = weeklyText ?? "Encendido";
    mainText = mainText ?? "Principal";
    distanceText = distanceText ?? "2 km Sur E...";
    id = id ?? "";
  }

  String? weeklyText;

  String? mainText;

  String? distanceText;

  String? id;
}
