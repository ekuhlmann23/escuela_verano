import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_title.freezed.dart';

class ListTitle {
  final String value;
  static const maxLength = 30;

  ListTitle._(this.value);

  static Either<ListTitleValidationError, ListTitle> tryCreate(String title) {
    if (title.isEmpty) {
      return left(ListTitleValidationError.isEmpty());
    }

    if (title.length > maxLength) {
      return left(ListTitleValidationError.tooLong(maxLength));
    }

    return right(ListTitle._(title));
  }
}

@Freezed()
class ListTitleValidationError with _$ListTitleValidationError {
  factory ListTitleValidationError.isEmpty() = _IsEmpty;
  factory ListTitleValidationError.tooLong(int maxLength) = _TooLong;
}

/*
void main() {
  final titleResult = ListTitle.tryCreate('');
  titleResult.fold(
    (error) => print(error.map(
      isEmpty: (_) => 'Por favor no dejar en blanco.',
      tooLong: (tooLong) =>
          'Por favor no escribir más de ${tooLong.maxLength} caracteres',
      profanity: (_) => 'Por favor no escriba malas palabras',
    )),
    (title) => print(''),
  );
}
*/