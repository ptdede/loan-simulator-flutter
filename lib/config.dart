import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppConfig {
  static final String simulationApi = dotenv.get('SIMULATION_API');
  static final String userApi = dotenv.get('USER_API');
  static final bool isProd = dotenv.maybeGet('ENVIRONMENT') == 'prod';
  static final int tempUserId = int.tryParse(dotenv.get('TEMP_USER_ID')) ?? 2;
}
