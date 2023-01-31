// import 'package:flutter/material.dart';
// ignore_for_file: depend_on_referenced_packages

import 'package:flut_micro_commons_auth/app/data/repositories/user_forgot_password_imp_repository.dart';
import 'package:flut_micro_commons_auth/app/data/repositories/user_login_imp_repository.dart';
import 'package:flut_micro_commons_auth/app/data/repositories/user_register_imp_repository.dart';
import 'package:flut_micro_commons_auth/app/data/repositories/user_update_password_imp_repository.dart';
import 'package:flut_micro_commons_auth/app/domain/usecases/user_forgot_password_imp_usecase.dart';
import 'package:flut_micro_commons_auth/app/domain/usecases/user_login_imp_usecase.dart';
import 'package:flut_micro_commons_auth/app/domain/usecases/user_register_imp_usecase.dart';
import 'package:flut_micro_commons_auth/app/domain/usecases/user_update_password_imp_usecase.dart';
import 'package:flut_micro_commons_auth/app/external/datasources/user_forgot_password_imp_datasource.dart';
import 'package:flut_micro_commons_auth/app/external/datasources/user_login_imp_datasource.dart';
import 'package:flut_micro_commons_auth/app/external/datasources/user_register_imp_datasource.dart';
import 'package:flut_micro_commons_auth/app/external/datasources/user_update_password_imp_datasource.dart';
import 'package:flut_micro_commons_dependencies/flut_micro_commons_dependencies.dart';

class AuthModule extends Module {
  @override
  final List<Bind> binds = [
    // Datasources
    $UserRegisterImpDatasource,
    $UserLoginImpDatasource,
    $UserForgotPasswordImpDatasource,
    $UserUpdatePasswordImpDatasource,

    // Repositories
    $UserRegisterImpRepository,
    $UserLoginImpRepository,
    $UserForgotPasswordImpRepository,
    $UserUpdatePasswordImpRepository,

    // Usecases
    $UserRegisterImpUsecase,
    $UserLoginImpUsecase,
    $UserForgotPasswordImpUsecase,
    $UserUpdatePasswordImpUsecase,
  ];

  @override
  final List<ModularRoute> routes = [];
}
