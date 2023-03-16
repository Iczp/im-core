class HttpConfig {
  HttpConfig({
    required this.authHost,
    required this.apiHost,
    required this.clientId,
    this.clientSecret,
    required this.username,
    required this.password,
    this.connectTimeout = 1000 * 30,
    this.receiveTimeout = 1000 * 30,
  });
  final String authHost;
  final String apiHost;
  final int connectTimeout;
  final int receiveTimeout;

  final String? clientId;

  final String? clientSecret;

  final String? username;

  final String? password;
}
