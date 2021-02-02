class Wheater {
  String _country;
  String _date;
  String text;

  Wheater({country, date, text})
      : _country = country,
        _date = date,
        text = text;

  Wheater.fromJson(Map<String, dynamic> json) {
    _country = json['country'];
    _date = json['date'];
    text = json['text'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['country'] = this._country;
    data['date'] = this._date;
    data['text'] = this.text;
    return data;
  }
}
