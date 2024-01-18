import SwiftUI

struct WeatherView: View {
    @State var isPresented = false

    var weather: ResponseBody
    var body: some View {
        ZStack(alignment: .leading) {
            VStack {
                VStack(alignment: .leading, spacing: 5) {
                    Text(weather.name)
                        .bold()
                        .font(.title)
                    Text("Now \(Date().formatted(.dateTime.month().day().hour().minute()))")
                        .fontWeight(.light)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                Spacer()
                VStack {
                    HStack {
                        VStack(spacing: 20) {
                            Image(systemName: "cloud")
                                .font(.system(size: 40))
                            
                            Text("\(weather.weather[0].main)")
                        }
                        .frame(width: 150, alignment: .leading)
                        Spacer()
                        Text(weather.main.feelsLike.roundDouble() + "°")
                            .font(.system(size: 80))
                            .fontWeight(.bold)
                            .padding()
                    }
                    Spacer()
                        .frame(height:  10)
                    AsyncImage(url: URL(string: "https://kartinki.pics/uploads/posts/2022-12/1670675799_49-kartinkin-net-p-tuchi-kartinki-pinterest-53.png")) { image in
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 330)
                    } placeholder: {
                        ProgressView()
                    }
                    Spacer()
                }
                .frame(maxWidth: .infinity, alignment: .trailing)
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
            
//          Переход на CountryView
            VStack(alignment: .center) {
                Button(action: {
                    self.isPresented.toggle()
                }) {
                    Text("Нажмите сюда")
                        .foregroundColor(Color(hue: 0.556, saturation: 0.787, brightness: 0.454))
                        .padding(10)
                        .background(Color.white)
                        .cornerRadius(20)
                        .padding(20)
                        .multilineTextAlignment(.center)
                        
                }
            }
            .sheet(isPresented: $isPresented) {
                CountryView()
            }
            
//          "Дополнительный" экран
            VStack {
                Spacer()
                VStack(alignment: .leading, spacing: 40) {
                    Text("Дополнительная информация")
                        .bold()
                        .padding(.bottom)
                    HStack {
                        WeatherRow(logo: "thermometer", name: "Мин. темп", value: (weather.main.tempMin.roundDouble() + ("°")))
                        Spacer()
                        WeatherRow(logo: "thermometer", name: "Макс. темп", value: (weather.main.tempMax.roundDouble() + "°"))
                    }
                    HStack {
                        WeatherRow(logo: "wind", name: "Ветер", value: (weather.wind.speed.roundDouble() + " м/с"))
                        Spacer()
                        WeatherRow(logo: "humidity", name: "Влажность", value: "\(weather.main.humidity.roundDouble())%")
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                .padding(.bottom, 40)
                .foregroundColor(Color(hue: 0.656, saturation: 0.787, brightness: 0.354))
                .background(.white)
                .cornerRadius(20, corners: [.topLeft, .topRight])
            }
        }

        .edgesIgnoringSafeArea(.bottom)
        .background(Color(hue: 0.556, saturation: 0.787, brightness: 0.454))
        .preferredColorScheme(.dark)
    }
}

struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView(weather: previewWeather)
    }
}
