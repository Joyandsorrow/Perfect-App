import SwiftUI

struct appview: View {
    @Binding var tap : Bool
    var body: some View {
        ZStack{
            VStack{
                
                HStack{
                    Button{
                        tap.toggle()
                    }label: {
                        HStack{
                            Image(systemName: "multiply")
                            Text("Back")
                                .bold()
                        }
                        .padding(10)
                        .background(Color.white)
                        .cornerRadius(10)
                        .shadow(radius: 5)
                    }
                    
                    Spacer()
                }.padding()
                Spacer()
            }.zIndex(3)
            
            
            
        }
    }
}
