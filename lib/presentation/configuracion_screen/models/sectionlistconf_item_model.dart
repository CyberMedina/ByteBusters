/// This class is used in the [sectionlistconf_item_widget] screen.
class SectionlistconfItemModel {
  SectionlistconfItemModel({
    this.groupBy,
    this.id,
  }) {
    groupBy = groupBy ?? "";
    id = id ?? "";
  }

  String? groupBy;

  String? id;
}
