import 'package:http/http.dart' as http;

// Future<http.Response> Popular() {
//   String apikey = 'dbe3f07f44723fa11ed2b655788d7c1a';
//   Uri url = 'https://api.themoviedb.org/3/movie/popular';
//   return http.get(url);
// }

//   https://api.themoviedb.org/3/movie/popular?language=en-US&page=1
class ApiManager {
  Popular(String movieId) {
    var Url = Uri.https("api.themoviedb.org", "3/movie/popular", {
      "apiKey": "dbe3f07f44723fa11ed2b655788d7c1a",
    });
    http.get(Url);
  }
}
