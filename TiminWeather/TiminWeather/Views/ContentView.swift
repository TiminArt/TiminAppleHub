import SwiftUI

struct ContentView: View {
    @StateObject var locationManager = LocationManager()
    var weatherManager = WeatherManager()
    @State var weather: ResponseBody?
    
    @State private var infoViewIsOn = false
    
    var body: some View {
        
        
        NavigationView {
            VStack {
                if let location = locationManager.location {
                    if let weather = weather {
                        WeatherView(weather: weather)
                    } else {
                        LoadingView()
                            .task {
                                do {
                                    weather = try await weatherManager.getCurrentWeather(latitude: location.latitude, longitude: location.longitude)
                                } catch {
                                    print("Ошибка при получении прогноза погоды \(error)")
                                }
                            }
                    }
                } else {
                    if locationManager.isLoading {
                        LoadingView()
                    } else {
                        WelcomeView()
                            .environmentObject(locationManager)
                    }
                }
//              Ссылка на другое вью
                VStack {
                    
                    NavigationLink(destination: InfoView()) {
                        Text("Узнать подробнее об этой программе")
                    }
                    .foregroundColor(.white)
                }
            }
            .background(Color(hue: 0.556, saturation: 0.787, brightness: 0.454))
            .preferredColorScheme(.dark)
        }
        
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
