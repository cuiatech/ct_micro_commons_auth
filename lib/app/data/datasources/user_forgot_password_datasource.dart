abstract class UserForgotPasswordDatasource {
  Future<Map<String, dynamic>> call(String email, String redirect);
}
