import SwiftUI

struct HomeView: View {
    @Binding var Makeios : [makeaniosapp]
    @State var tap = false
    @Environment(\.horizontalSizeClass) var horizontalClass
    //
    @State var open = false
    @State var opena = false
    @State var newmacOSapp = false
    @State var newapp = false
    @Binding var chosenew : Bool
    
    @State var openroon = false
    @Binding var openTool: Bool
    var body: some View {
        ZStack{
        ScrollView(.vertical, showsIndicators: false){
        VStack{
            Text("Perfect App")
                .bold()
                .font(.system(size: 50, weight: .black))
                
            Text("make some perfect App")
                .bold()
                .padding(.bottom)
            //Top title
            
                
            hometop(Makeios: $Makeios, open: $open, newmacOSapp: $newmacOSapp, newapp: $newapp)
        }.padding()
    }
            VStack{
            Spacer()
        VStack {
            
            HStack{
                Text("My work room")
                    .foregroundColor(.white)
                    .font(.system(size: 28, weight: .heavy))
                    .padding(.bottom)
                Spacer()
            }
            Button{
                openroon.toggle()
            }label: {
                HStack{
                    Text("More")
                        .bold()
                        .font(.body)
                        .foregroundColor(.blue)
                    Spacer()
                    Image(systemName: "chevron.right")
                        .font(.bold(.callout)())
                        .foregroundColor(.blue)
                }.padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(radius: 5)
            }
        }
        .padding()
                .background(Color.blue)
                .cornerRadius(17)
                .shadow(radius: 5)
        .fullScreenCover(isPresented: $openroon){
            makeroon(tap: $tap, Makeios: $Makeios, openroon: $openroon)
        }
            }
        }
}
}
