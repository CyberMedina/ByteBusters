/// This class is used in the [tilecontent_item_widget] screen.
class TilecontentItemModel {
  TilecontentItemModel({
    this.idproducto,
    this.id,
  }) {
    idproducto = idproducto ?? "ID producto: 1";
    id = id ?? "";
  }

  String? idproducto;

  String? id;
}
