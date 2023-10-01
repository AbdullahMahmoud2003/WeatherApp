import 'package:dio/dio.dart';
import 'package:weather_app/models/weatherModel.dart';

class wethaerService {
  final Dio dio;
  wethaerService(this.dio);

  final String baseUlr = "http://api.weatherapi.com/v1";
  final String apiKey = "11a5c3681850411fa41120306230809";

  Future<weatherModel?> getCurrentWeather({required String city}) async {
    try {
      Response response =
          await dio.get("$baseUlr/forecast.json?key=$apiKey&q=$city&days=1");
      weatherModel weatherStatus = weatherModel.fromJson(response.data);
      return weatherStatus;
    } on DioException catch (e) {
      final String errorMessage =
          e.response?.data["error"]["message"] ?? "Oops there was an error";
      throw Exception(errorMessage);
    } catch (e) {
      throw Exception("Oops there was an error, try later");
    }
  }
}
