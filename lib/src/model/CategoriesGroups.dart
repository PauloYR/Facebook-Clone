class CategoriesGroups{
  String _icon;
  String _name;

  CategoriesGroups(this._icon, this._name);

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  String get icon => _icon;

  set icon(String value) {
    _icon = value;
  }


}