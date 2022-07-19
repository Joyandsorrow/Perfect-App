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
                    Text("Perfect App")//首页上方的大字
                        .bold()
                        .font(.system(size: 50, weight: .black))
                    
                    Text("make some perfect App")//首页上方的小字
                        .bold()
                        .padding(.bottom)
                    //Top title
                    
                    
                    hometop(Makeios: $Makeios, open: $open, newmacOSapp: $newmacOSapp, newapp: $newapp)//首页Make an App卡片
                }.padding()
            }
            
            
            
            
            VStack{
                Spacer()
                VStack {//首页下方My work roon卡片
                    
                    HStack{
                        Text("My work room")
                            .foregroundColor(.white)
                            .font(.system(size: 28, weight: .heavy))
                            .padding(.bottom)
                        Spacer()
                    }
                    Button{//more按扭点击后出现makeroon结构体
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
