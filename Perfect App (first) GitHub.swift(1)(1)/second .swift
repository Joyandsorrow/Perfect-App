import SwiftUI

struct hometop: View {
    @State var opennew = false
    @State var makenew = false
    @State var trynew = false
    @Binding var Makeios : [makeaniosapp]
    
    //
    @Binding var open : Bool
    @Binding var newmacOSapp : Bool
    
    @Environment(\.horizontalSizeClass) var horizontalClass
    @Binding var newapp : Bool
    var body: some View {
        if horizontalClass == .regular{
            // of ipad
            VStack{
                VStack{
                    HStack{
                        VStack(alignment: .leading){
                            Text("Make an App")
                                .font(.system(size: 25, weight: .bold))
                                .foregroundColor(.white)
                            //.shadow(radius: 2)
                            Text("Make good use of the tools in hand.")
                                .font(.system(size: 15, weight: .light))
                                .foregroundColor(.white)
                            //.shadow(radius: 1)
                                .padding(.bottom)
                        }
                        Spacer()
                    }
                    HStack{
                        Button{
                            open.toggle()
                        }label: {
                            HStack{
                                
                                Image(systemName: "plus")
                                    .foregroundColor(.blue)
                                    .font(.system(size: 20, weight: .heavy))
                                //.shadow(radius: 5)
                                Text("Make an App")
                                    .foregroundColor(.blue)
                                    .font(.system(size: 18, weight: .heavy))
                                //.shadow(radius: 5)
                                Spacer()
                            }.padding()
                                .background(Color.white)
                                .cornerRadius(10)
                                .shadow(radius: 5)
                        }.sheet(isPresented: $open){
                            ismakeing(Makeios: $Makeios, open: $open, newmacOSapp: $newmacOSapp, newapp: $newapp)
                        }// title : Make an App (Button)
                        Button{
                            
                        }label: {
                            HStack{
                                
                                Image(systemName: "paperplane.fill")
                                    .foregroundColor(.blue)
                                    .font(.system(size: 15, weight: .heavy))
                                //.shadow(radius: 5)
                                Text("Study tutorial")
                                    .foregroundColor(.blue)
                                    .font(.system(size: 18, weight: .heavy))
                                //.shadow(radius: 5)
                                Spacer()
                            }.padding()
                                .background(Color.white)
                                .cornerRadius(10)
                                .shadow(radius: 5)
                        }// title : Make an App (Button)
                        Button{
                            
                        }label: {
                            HStack{
                                
                                Image(systemName: "tray.fill")
                                    .foregroundColor(.blue)
                                    .font(.system(size: 16, weight: .bold))
                                //.shadow(radius: 5)
                                Text("Template")
                                    .foregroundColor(.blue)
                                    .font(.system(size: 18, weight: .heavy))
                                //.shadow(radius: 5)
                                Spacer()
                            }.padding()
                                .background(Color.white)
                                .cornerRadius(10)
                                .shadow(radius: 5)
                        }// title : Make an App (Button)
                    }
                }
            }.padding()
                .background(Color.blue)
                .cornerRadius(10)
                .shadow(radius: 5)
        } else {
            // of iphone
            VStack{
                VStack{
                    HStack{
                        VStack(alignment: .leading){
                            Text("Make an App")
                                .font(.system(size: 25, weight: .bold))
                                .foregroundColor(.white)
                            //.shadow(radius: 2)
                            Text("Make good use of the tools in hand.")
                                .font(.system(size: 15, weight: .light))
                                .foregroundColor(.white)
                            //.shadow(radius: 1)
                                .padding(.bottom)
                        }
                        Spacer()
                        
                    }
                    
                    Button{
                        open.toggle()
                    }label: {
                        HStack{
                            
                            Image(systemName: "plus")
                                .foregroundColor(.blue)
                                .font(.system(size: 20, weight: .heavy))
                            //.shadow(radius: 5)
                            Text("Make an App")
                                .foregroundColor(.blue)
                                .font(.system(size: 20, weight: .heavy))
                            //.shadow(radius: 5)
                            Spacer()
                        }.padding()
                            .background(Color.white)
                            .cornerRadius(10)
                            .shadow(radius: 5)
                    }.sheet(isPresented: $open){
                        ismakeing(Makeios: $Makeios, open: $open, newmacOSapp: $newmacOSapp, newapp: $newapp)
                    }// title : Make an App (Button)
                    Button{
                        
                    }label: {
                        HStack{
                            
                            Image(systemName: "paperplane.fill")
                                .foregroundColor(.blue)
                                .font(.system(size: 15, weight: .heavy))
                            //.shadow(radius: 5)
                            Text("Study tutorial")
                                .foregroundColor(.blue)
                                .font(.system(size: 20, weight: .heavy))
                            //.shadow(radius: 5)
                            Spacer()
                        }.padding()
                            .background(Color.white)
                            .cornerRadius(10)
                            .shadow(radius: 5)
                    }// title : Make an App (Button)
                    Button{
                        
                    }label: {
                        HStack{
                            
                            Image(systemName: "tray.fill")
                                .foregroundColor(.blue)
                                .font(.system(size: 16, weight: .bold))
                            //.shadow(radius: 5)
                            Text("Template")
                                .foregroundColor(.blue)
                                .font(.system(size: 20, weight: .heavy))
                            //.shadow(radius: 5)
                            Spacer()
                        }.padding()
                            .background(Color.white)
                            .cornerRadius(10)
                            .shadow(radius: 5)
                    }// title : Make an App (Button)
                    
                }
            }.padding()
                .background(Color.blue)
                .cornerRadius(10)
                .shadow(radius: 5)
        }
    }
}
