class Store {
  String _name;
  String _image;
  String _profile;

  Store(this._name, this._image, this._profile);

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  String get image => _image;

  set image(String value) {
    _image = value;
  }

  String get profile => _profile;

  set profile(String value) {
    _profile = value;
  }
}