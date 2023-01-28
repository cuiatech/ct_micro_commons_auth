abstract class UserLoginDatasource {
  Future<Map<String, dynamic>> call(String email, String password);
}
