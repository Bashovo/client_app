import '../views/profile/change_password/change_password_screen.dart';
import '../views/auth/code_verification/code_verification_screen.dart';
import '../views/root/app_root.dart';
import '../views/auth/sign_up/sign_up_screen.dart';
import '../views/auth/forgot_password/forgot_password_screen.dart';
import '../views/auth/sign_in/sign_in_screen.dart';
import '../views/splash/splash_screen.dart';
import 'package:get/get.dart';
import 'routes.dart';

class AppPages {
  static List<GetPage> getPages() {
    return [
      GetPage(
        name: Routes.splash,
        page: () => SplashScreen(),
      ),
      GetPage(
        name: Routes.signIn,
        page: () => SignInScreen(),
      ),
      GetPage(
        name: Routes.signUp,
        page: () => SignUpScreen(),
      ),
      GetPage(
        name: Routes.forgotPassword,
        page: () => ForgotPasswordScreen(),
      ),
      GetPage(
        name: Routes.verification,
        page: () => CodeVerificationScreen(),
      ),
      GetPage(
        name: Routes.root,
        page: () => AppRoot(),
      ),
      GetPage(
        name: Routes.changePassword,
        page: () => ChangePasswordScreen(),
      ),
      GetPage(
        name: Routes.aboutTuxedo,
        page: () => ChangePasswordScreen(),
      ),
    ];
  }
}
