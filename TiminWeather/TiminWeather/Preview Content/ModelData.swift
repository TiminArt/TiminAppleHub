import Foundation


var previewWeather: ResponseBody = load("weatherData.json")

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else {
            fatalError("Не удалось найти \(filename) в основном пакете.")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Не удалось загрузить \(filename) из основного пакета:\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Не удалось разобрать \(filename) как \(T.self):\n\(error)")
    }
}
