import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:its_urgent/src/commons/common_models/common_class_models/its_urgent_user.dart';

class ItsUrgentUserNotifier extends Notifier<ItsUrgentUser?> {
  @override
  ItsUrgentUser? build() {
    return null;
  }

  void setUpCurrentUserSignedIn(Map<String, dynamic> userData) {
    state = ItsUrgentUser.fromJson(userData);
  }

  void clearCurrentUserOnSignOut() {
    state = null;
  }

  void updateUserDetails(Map<String, dynamic> updatedData) {
    if (state == null) {
      setUpCurrentUserSignedIn(updatedData);
    } else {
      state = state!.copyWith(
        name: updatedData[UserDocFields.name.name],
        imageUrl: updatedData[UserDocFields.imageUrl.name],
        deviceToken: updatedData[UserDocFields.deviceToken.name],
        uid: updatedData[UserDocFields.uid.name],
      );
    }
    if (kDebugMode) {
      print("current data in $state");
    }
  }
}

final itsUrgentUserProvider =
    NotifierProvider<ItsUrgentUserNotifier, ItsUrgentUser?>(() {
  return ItsUrgentUserNotifier();
});
