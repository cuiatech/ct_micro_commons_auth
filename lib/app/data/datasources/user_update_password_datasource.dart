abstract class UserUpdatePasswordDatasource {
  Future<Map<String, dynamic>> call(String code, String newPassword);
}
