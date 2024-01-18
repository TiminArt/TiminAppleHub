import SwiftUI

struct InfoView: View {
    var body: some View {
        VStack(alignment: .center) {
            Text("Здравствуйте, это Тимин Артемий!")
                .padding(2)
                .multilineTextAlignment(.center)
                .font(.title)
            Text("Это моя небольшая погодная программа, которую я сделал на основе API Open Weather map. При предоставлении геолокации приложение коректно выдает информацию о температуре. Советую использовать его на личном устройстве, ведь на нём будет именно Ваша геолокация. Приятного пользования! А снизу сидит мой кот Бастик.")
                .padding(20)
                .multilineTextAlignment(.center)
            Image("cat")
                
                .resizable()
                .padding(20)
                .cornerRadius(100)
                    .aspectRatio(contentMode: .fit)
                    

        }
    }
}

#Preview {
    InfoView()
}
