abstract class UserRegisterDatasource {
  Future<Map<String, dynamic>> call(String name, String email, String password);
}
