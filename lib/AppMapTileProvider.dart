import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppMapTileProvider extends TileProvider {
  @override
  Map<String, String> headers = <String, String>{
    "User-Agent": "dev.neofrost",
  };

  @override
  ImageProvider<Object> getImage(Coords<num> coords, TileLayerOptions options) {
    var tileUrl = getTileUrl(coords, options);
    return CachedNetworkImageProvider(tileUrl, headers: headers);
  }
}