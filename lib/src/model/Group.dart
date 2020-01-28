class Group{
  String _name;
  String _image;

  Group(this._name,this._image);

  String get name => _name;

  set name(String value){
    _name = value;
  }

  String get image => _image;

  set image(String value){
    _image = value;
  }
}