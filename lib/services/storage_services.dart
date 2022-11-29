import '../models/user_info.dart';

abstract class StorageServices {
  Future<void> writeToFile(UserInfo userInfo);
  Future<UserInfo> readFromFile();
}
