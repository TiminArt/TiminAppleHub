import SwiftUI

struct CountryView: View {
    @State private var name = ""
    
    @State private var textF = false
    
    var body: some View {
        VStack {
            Text("Потяни вниз")
                .padding(.bottom, 2)
                .foregroundColor(Color(hue: 0.556, saturation: 0.787, brightness: 0.454))
            Image(systemName: "arrow.down")
                .foregroundColor(Color(hue: 0.556, saturation: 0.787, brightness: 0.454))
                .padding(.bottom, 70)
        }
        VStack {
            Image("weather-icon")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 120)
                .cornerRadius(20)
            
            
            TextField("Введите своё имя", text: $name)
                .padding(20)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            
            ZStack {
                Image("weatcher-back")
                    .resizable()
                    .frame(width: 380, height: 380)
                    .cornerRadius(200)
                
                if !name.isEmpty {
                    Text("\(name), здравствуйте! Надеюсь, сегодняшняя погода Вас не разочаровала!")
                        .padding(10)
                    
                        .background(Color.blue)
                        .foregroundColor(.white)
                    
                        .cornerRadius(20)
                        .padding(20)
                        .multilineTextAlignment(.center)
                }
            }
        }
    }
}

#Preview {
    CountryView()
}
