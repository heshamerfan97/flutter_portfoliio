import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../utils/logger.dart';

class ConnectivityCubit extends Cubit<ConnectivityResult> {
  ConnectivityCubit() : super(ConnectivityResult.none);

  bool isConnected = false;

  initConnectivity() {
    Connectivity().onConnectivityChanged.listen((connectionStatus) {
      isConnected = (connectionStatus.last == ConnectivityResult.wifi || connectionStatus.last == ConnectivityResult.mobile);
      Logger.log(connectionStatus.last, tag: '🛜 Connection Status 🛜');
      emit(connectionStatus.last);
    });
  }
}
