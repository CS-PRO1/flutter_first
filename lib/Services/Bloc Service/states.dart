abstract class AppStates {}

class AppInitState extends AppStates {}

//Login

class AppLoginLoadingState extends AppStates {}

class AppLoginErrorState extends AppStates {}

class AppLoginSuccessState extends AppStates {}

//Register

class AppRegisterLoadingState extends AppStates {}

class AppRegisterErrorState extends AppStates {}

class AppRegisterSuccessState extends AppStates {}

//Show/Hide Password

class PasswordShowState extends AppStates {}

class PasswordHideState extends AppStates {}
