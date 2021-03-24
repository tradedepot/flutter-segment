import 'package:flutter_segment/src/segment_method_channel.dart';

abstract class SegmentPlatform {
  /// The default instance of [SegmentPlatform] to use
  ///
  /// Platform-specific plugins should override this with their own
  /// platform-specific class that extends [SegmentPlatform] when they
  /// register themselves.
  ///
  /// Defaults to [SegmentMethodChannel]
  static SegmentPlatform instance = SegmentMethodChannel();

  Future<void> identify({
    required userId,
    Map<String, dynamic>? traits,
    Map<String, dynamic>? options,
  }) {
    throw UnimplementedError('identify() has not been implemented.');
  }

  Future<void> track({
    required String eventName,
    Map<String, dynamic>? properties,
    Map<String, dynamic>? options,
  }) {
    throw UnimplementedError('track() has not been implemented.');
  }

  Future<void> screen({
    required String screenName,
    Map<String, dynamic>? properties,
    Map<String, dynamic>? options,
  }) {
    throw UnimplementedError('screen() has not been implemented.');
  }

  Future<void> group({
    required String groupId,
    Map<String, dynamic>? traits,
    Map<String, dynamic>? options,
  }) {
    throw UnimplementedError('group() has not been implemented.');
  }

  Future<void> alias({
    required String alias,
    Map<String, dynamic>? options,
  }) {
    throw UnimplementedError('alias() has not been implemented.');
  }

  Future<String?> get getAnonymousId {
    throw UnimplementedError('getAnonymousId() has not been implemented.');
  }

  Future<void> reset() {
    throw UnimplementedError('reset() has not been implemented.');
  }

  Future<void> disable() {
    throw UnimplementedError('disable() has not been implemented.');
  }

  Future<void> enable() {
    throw UnimplementedError('enable() has not been implemented.');
  }

  Future<void> debug(bool enabled) {
    throw UnimplementedError('debug() has not been implemented.');
  }

  Future<void> setContext(Map<String, dynamic> context) {
    throw UnimplementedError('setContext() has not been implemented.');
  }
}
