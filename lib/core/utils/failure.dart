sealed class IFailure {
  final String message;
  const IFailure({required this.message});
}

class NotFoundFailure<T> implements IFailure{

  @override
  final String message;
  final T? data;

  const NotFoundFailure({required this.message, this.data});

}
class Failure implements IFailure {
  @override
  final String message;
  const Failure({required this.message});
}