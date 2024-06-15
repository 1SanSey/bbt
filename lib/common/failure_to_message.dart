import 'package:bbt/core/error/failure.dart';

const serverFailureMessage = 'Server Failure';
const internetConnectionFailureMessage = 'Internet Connection Failure';

String mapFailureToMessage(Failure failure) {
  switch (failure.runtimeType) {
    case const (ServerFailure):
      return serverFailureMessage;
    case const (InternetConnectionFailure):
      return internetConnectionFailureMessage;
    default:
      return 'Unexpected Error';
  }
}
