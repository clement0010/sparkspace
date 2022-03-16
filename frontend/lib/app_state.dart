import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _videoLike = prefs.getBool('ff_videoLike') ?? _videoLike;
    _logoLink = prefs.getString('ff_logoLink') ?? _logoLink;
    _logoMainLink = prefs.getString('ff_logoMainLink') ?? _logoMainLink;
  }

  SharedPreferences prefs;

  bool activateAddNoteModal = false;

  bool _videoLike = false;
  bool get videoLike => _videoLike;
  set videoLike(bool _value) {
    _videoLike = _value;
    prefs.setBool('ff_videoLike', _value);
  }

  String _logoLink =
      'https://sparkspace-dev-videoo.obs.cn-south-1.myhuaweicloud.com/assets/Sparkspace_Logo_Word.svg';
  String get logoLink => _logoLink;
  set logoLink(String _value) {
    _logoLink = _value;
    prefs.setString('ff_logoLink', _value);
  }

  String _logoMainLink =
      'https://sparkspace-dev-videoo.obs.cn-south-1.myhuaweicloud.com/assets/Sparkspace_Logo.svg';
  String get logoMainLink => _logoMainLink;
  set logoMainLink(String _value) {
    _logoMainLink = _value;
    prefs.setString('ff_logoMainLink', _value);
  }
}

LatLng _latLngFromString(String val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
