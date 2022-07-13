import SwiftUI

struct makeroon: View {
    @Environment(\.horizontalSizeClass) var horizontalClass
    @Binding var tap : Bool
    @Binding var Makeios : [makeaniosapp]
    @Binding var openroon : Bool
    //@State var shownote = false
    var body: some View {
        if horizontalClass == .regular{
            //on ipad
            ZStack{
                VStack{
                    Spacer()
                    HStack{
                        Button{
                            openroon.toggle()
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
                }.zIndex(3)
                VStack{
                    Spacer()
            ScrollView (.horizontal, showsIndicators: false)    {
                HStack{
                    ForEach(Makeios){ (makeaniosapp) in
                        HStack{
                            Button{
                                tap.toggle()
                            }label: {
                                
                                VStack{
                                    Image(makeaniosapp.photo)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(height: 215)
                                        .cornerRadius(10)
                                        .shadow(radius: 5)
                                    HStack{
                                        VStack(alignment: .leading){
                                            Text(makeaniosapp.name)
                                                .bold()
                                                .font(.largeTitle)
                                                .foregroundColor(.white)
                                            
                                            Text(makeaniosapp.note)
                                                .bold()
                                                .font(.caption)
                                                .foregroundColor(.white)
                                        
                                        }
                                        Spacer()
                                    }.padding()
                                        .background(Color.blue)
                                        .cornerRadius(10)
                                        .shadow(radius: 5)
                                }.padding(10)
                                    .background(Color.white)
                                    .cornerRadius(10)
                                    .shadow(radius: 5)
                            }.padding().fullScreenCover(isPresented: $tap){
                                appview(tap: $tap)
                            }
                            
                        }
                    }/////
                }
            }
        }
        }
        } else {
            //on iphone
            ZStack{
                VStack{
                    Spacer()
            HStack{
                Button{
                    openroon.toggle()
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
                }.zIndex(3)
                
            ScrollView (.vertical, showsIndicators: false)    {
                VStack{
                    ForEach(Makeios){ (makeaniosapp) in
                        VStack{
                            Button{
                                tap.toggle()
                            }label: {
                                
                                VStack{
                                    Image(makeaniosapp.photo)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(height: 215)
                                        .cornerRadius(10)
                                        .shadow(radius: 5)
                                    HStack{
                                        VStack(alignment: .leading){
                                            Text(makeaniosapp.name)
                                                .bold()
                                                .font(.largeTitle)
                                                .foregroundColor(.white)
                                            Text(makeaniosapp.note)
                                                .bold()
                                                .font(.caption)
                                                .foregroundColor(.white)
                                            
                                        }
                                        Spacer()
                                    }.padding()
                                        .background(Color.blue)
                                        .cornerRadius(10)
                                        .shadow(radius: 5)
                                }.padding(10)
                                    .background(Color.white)
                                    .cornerRadius(10)
                                    .shadow(radius: 5)
                            }.padding().fullScreenCover(isPresented: $tap){
                                appview(tap: $tap)
                            }
                            
                        }
                    }/////
                }}
            }
        }
    }
}
