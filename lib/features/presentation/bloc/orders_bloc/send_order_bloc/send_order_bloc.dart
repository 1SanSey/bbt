import 'package:bbt/common/failure_to_message.dart';
import 'package:bbt/features/domain/entities/order_entity.dart';
import 'package:bbt/features/domain/usecases/orders_usecase.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'send_order_bloc.freezed.dart';

@freezed
class SendOrderEvent with _$SendOrderEvent {
  const SendOrderEvent._();
  const factory SendOrderEvent.send({required OrderEntity order}) = _SendSingleOrderEvent;
}

@freezed
class SendOrderState with _$SendOrderState {
  const SendOrderState._();
  const factory SendOrderState.empty() = _EmptyOrderState;
  const factory SendOrderState.sending() = _SendingOrderState;
  const factory SendOrderState.sended({required String order}) = _SendedOrderState;
  const factory SendOrderState.error({
    @Default('Произошла ошибка отправки заказа') String message,
  }) = _ErrorOrderState;
}

class SendOrderBloc extends Bloc<SendOrderEvent, SendOrderState> {
  final SendOrderUsecase ordersUseCase;

  SendOrderBloc({required this.ordersUseCase}) : super(const SendOrderState.empty()) {
    on<SendOrderEvent>(
      _sendEvent,
      transformer: bloc_concurrency.droppable(),
    );
  }

  Future<void> _sendEvent(
    SendOrderEvent event,
    Emitter<SendOrderState> emitter,
  ) async {
    emitter(const SendOrderState.sending());
    final failureOrOrder = await ordersUseCase(OrderParams(order: event.order));

    failureOrOrder.fold(
      (failure) => emitter(SendOrderState.error(message: mapFailureToMessage(failure))),
      (order) {
        emitter(SendOrderState.sended(order: order));
      },
    );
  }
}
