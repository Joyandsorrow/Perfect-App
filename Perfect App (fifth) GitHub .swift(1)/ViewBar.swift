import SwiftUI

struct viewbar: View {
    var body: some View {
        ScrollView (showsIndicators: false){
        VStack{
            Text("ViewBar")
                .bold()
                .font(.largeTitle)
                .foregroundColor(.blue)
            Text("Ordinary things also have their own great uses")
                .font(.system(size: 15, weight: .thin))
                .foregroundColor(.blue)
            //.foregroundColor(Color(red: 0.4, green: 0.6, blue: 5))
                .shadow(color: Color.blue.opacity(0.5), radius: 15, x: 0, y: 0)
        }.padding()
    }
    }
}
