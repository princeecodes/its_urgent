import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:its_urgent/model/its_urgent_user.dart';

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
}

final itsUrgentUserProvider =
    NotifierProvider<ItsUrgentUserNotifier, ItsUrgentUser?>(() {
  return ItsUrgentUserNotifier();
});
