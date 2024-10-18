import 'dart:async';

import 'package:immich_mobile/domain/models/album.model.dart';
import 'package:immich_mobile/domain/models/asset.model.dart';

abstract interface class IDeviceAlbumRepository {
  /// Fetches all [Album] from device
  FutureOr<List<Album>> getAll();

  /// Returns the number of asset in the album
  FutureOr<int> getAssetCount(String albumId);

  /// Fetches assets belong to the albumId
  FutureOr<List<Asset>> getAssetsForAlbum(
    String albumId, {
    int start = 0,
    int end = 0x7fffffffffffffff,
    DateTime? modifiedFrom,
    DateTime? modifiedUntil,
    bool orderByModificationDate = false,
  });
}