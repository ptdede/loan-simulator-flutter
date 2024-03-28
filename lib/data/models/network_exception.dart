class NetworkExpection implements Exception {
  NetworkExpection({required this.code, required this.message});

  final int code;
  final String message;
}
