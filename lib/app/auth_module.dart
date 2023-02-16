// import 'package:flutter/material.dart';
// ignore_for_file: depend_on_referenced_packages

import 'package:ct_micro_commons_auth/app/data/repositories/user_current_imp_repository.dart';
import 'package:ct_micro_commons_auth/app/data/repositories/user_forgot_password_imp_repository.dart';
import 'package:ct_micro_commons_auth/app/data/repositories/user_login_imp_repository.dart';
import 'package:ct_micro_commons_auth/app/data/repositories/user_refresh_imp_repository.dart';
import 'package:ct_micro_commons_auth/app/data/repositories/user_register_imp_repository.dart';
import 'package:ct_micro_commons_auth/app/data/repositories/user_send_validation_email_imp_repository.dart';
import 'package:ct_micro_commons_auth/app/data/repositories/user_update_password_imp_repository.dart';
import 'package:ct_micro_commons_auth/app/data/repositories/user_validation_email_imp_repository.dart';
import 'package:ct_micro_commons_auth/app/domain/usecases/user_current_imp_usecase.dart';
import 'package:ct_micro_commons_auth/app/domain/usecases/user_forgot_password_imp_usecase.dart';
import 'package:ct_micro_commons_auth/app/domain/usecases/user_login_imp_usecase.dart';
import 'package:ct_micro_commons_auth/app/domain/usecases/user_refresh_imp_usecase.dart';
import 'package:ct_micro_commons_auth/app/domain/usecases/user_register_imp_usecase.dart';
import 'package:ct_micro_commons_auth/app/domain/usecases/user_send_validation_email_imp_usecase.dart';
import 'package:ct_micro_commons_auth/app/domain/usecases/user_update_password_imp_usecase.dart';
import 'package:ct_micro_commons_auth/app/domain/usecases/user_validation_email_imp_usecase.dart';
import 'package:ct_micro_commons_auth/app/external/datasources/user_current_imp_datasource.dart';
import 'package:ct_micro_commons_auth/app/external/datasources/user_forgot_password_imp_datasource.dart';
import 'package:ct_micro_commons_auth/app/external/datasources/user_login_imp_datasource.dart';
import 'package:ct_micro_commons_auth/app/external/datasources/user_refresh_imp_datasource.dart';
import 'package:ct_micro_commons_auth/app/external/datasources/user_register_imp_datasource.dart';
import 'package:ct_micro_commons_auth/app/external/datasources/user_send_validation_email_imp_datasource.dart';
import 'package:ct_micro_commons_auth/app/external/datasources/user_update_password_imp_datasource.dart';
import 'package:ct_micro_commons_auth/app/external/datasources/user_validation_email_imp_datasource.dart';
import 'package:ct_micro_commons_dependencies/ct_micro_commons_dependencies.dart';

class AuthModule extends Module {
  @override
  final List<Bind> binds = [
    // Datasources
    $UserRegisterImpDatasource,
    $UserLoginImpDatasource,
    $UserForgotPasswordImpDatasource,
    $UserUpdatePasswordImpDatasource,
    $UserCurrentImpDatasource,
    $UserRefreshImpDatasource,
    $UserSendValidationEmailImpDatasource,
    $UserValidationEmailImpDatasource,

    // Repositories
    $UserRegisterImpRepository,
    $UserLoginImpRepository,
    $UserForgotPasswordImpRepository,
    $UserUpdatePasswordImpRepository,
    $UserCurrentImpRepository,
    $UserRefreshImpRepository,
    $UserSendValidationEmailImpRepository,
    $UserValidationEmailImpRepository,

    // Usecases
    $UserRegisterImpUsecase,
    $UserLoginImpUsecase,
    $UserForgotPasswordImpUsecase,
    $UserUpdatePasswordImpUsecase,
    $UserCurrentImpUsecase,
    $UserRefreshImpUsecase,
    $UserSendValidationEmailImpUsecase,
    $UserValidationEmailImpUsecase,
  ];

  @override
  final List<ModularRoute> routes = [];
}
