import SwiftUI

struct appview: View {
    @Binding var tap : Bool
    @Environment(\.horizontalSizeClass) var horizontalClass
    @State var scale: CGFloat = 1
    @State var add: CGFloat = 0
    @State var hideviewbar = false
    @State var hidetoolbar = false
    @State var hideTabtoolbar = false
    
    var isiPhone: Bool = true   //是否为iPhone设备
    
    var body: some View {
        ZStack{
            
            VStack{
                Spacer()
                ZStack{
                    
                    //.zIndex(1)
                    RoundedRectangle(cornerRadius: 30, style: .continuous)
                        .frame(width: 300, height: 620)
                        .shadow(color: Color.gray.opacity(0.3), radius: 15, x: 0, y: 10)
                        .foregroundColor(.white)
                    preview()
                        .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
                        .frame(width: 300, height: 620)
                }.scaleEffect(scale + add)
                    .gesture(
                        MagnificationGesture()
                            .onChanged { amount in
                                self.add = amount - 1
                            }
                            .onEnded { amount in
                                self.scale += self.add
                                self.add = 0
                            }
                    )
                if hideTabtoolbar == false{
                Spacer()
                }
                if horizontalClass == .compact{
                Spacer(minLength: 5)
                    }
            }
            
        if horizontalClass == .regular{
            ZStack{
                HStack{
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
                        .shadow(color: Color.gray.opacity(0.3), radius: 10, x: 0, y: 10)
                    }
                    Button{
                        withAnimation(.easeInOut){
                        hideviewbar.toggle()
                        }
                    }label: {
                        HStack{
                            if hideviewbar{
                                Image(systemName: "chevron.left")
                            } else {
                                Image(systemName: "chevron.down")
                            }
                            Text("ViewBar")
                                .bold()
                        }
                        .padding(10)
                        .background(Color.white)
                        .cornerRadius(10)
                        .shadow(color: Color.gray.opacity(0.3), radius: 10, x: 0, y: 10)
                    }
                    Spacer()
                    Button{
                        withAnimation(.easeInOut){
                        hidetoolbar.toggle()
                        }
                    }label: {
                        HStack{
                            
                            Text("ToolBar")
                                .bold()
                            if hidetoolbar{
                                Image(systemName: "chevron.forward")
                            } else {
                            Image(systemName: "chevron.down")
                            }
                        }
                        .padding(10)
                        .background(Color.white)
                        .cornerRadius(10)
                        .shadow(color: Color.gray.opacity(0.3), radius: 10, x: 0, y: 10)
                    }
                    Button{
                        
                    }label: {
                        HStack{
                            
                            Image(systemName: "gearshape.fill")
                        }
                        .padding(10)
                        .background(Color.white)
                        .cornerRadius(10)
                        .shadow(color: Color.gray.opacity(0.3), radius: 10, x: 0, y: 10)
                    }
                }.padding()//HStack
                HStack{
                    if hideviewbar == false{
                ZStack{
                    RoundedRectangle(cornerRadius: 20, style: .continuous)
                        .foregroundColor(.white)
                        .frame(width: 350)
                        .shadow(color: Color.gray.opacity(0.4), radius: 10, x: 0, y: 10)
                        .opacity(1)
                        .padding(.leading)
                    TabView(){
                        viewbar()
                            .tag(1)
                        
                    }.tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
                        .frame(width: 350)
                        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                        .padding(.leading)
                    //.cornerRadius(20)
                }
                    }
                    Spacer()
                
                    Spacer()
                    
                    if hidetoolbar == false{
                        
                    ZStack{
                        RoundedRectangle(cornerRadius: 20, style: .continuous)
                            .foregroundColor(.white)
                            .frame(width: 350)
                            .shadow(color: Color.gray.opacity(0.4), radius: 10, x: 0, y: 10)
                            .opacity(1)
                            .padding(.trailing)
                        TabView(){
                            AppModule.toolbar()
                        }.tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
                            .frame(width: 350)
                            .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                            .padding(.trailing)
                        //.cornerRadius(20)
                    }
                    
                    }
                }
                Spacer()
            }.zIndex(3)//VStack
            
            
        }
                }
        }//ZStack
        }else{
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
                            .shadow(color: Color.gray.opacity(0.3), radius: 10, x: 0, y: 10)
                        }
                        Button{
                            withAnimation(.easeInOut){
                            hideTabtoolbar.toggle()
                            }
                        }label: {
                            HStack{
                                if hideTabtoolbar{
                                    Image(systemName: "chevron.forward")
                                        .font(.title3)
                                } else {
                                    Image(systemName: "chevron.down")
                                        .font(.title3)
                                }
                                
                            }
                            .padding(13)
                            .background(Color.white)
                            .cornerRadius(10)
                            .shadow(color: Color.gray.opacity(0.3), radius: 10, x: 0, y: 10)
                        }
                        Spacer()
                        
                        Button{
                            
                        }label: {
                            HStack{
                                
                                Image(systemName: "gearshape.fill")
                            }
                            .padding(10)
                            .background(Color.white)
                            .cornerRadius(10)
                            .shadow(color: Color.gray.opacity(0.3), radius: 10, x: 0, y: 10)
                        }
                    }.padding()//HStack
                    Spacer()
                    if hideTabtoolbar == false{
                    ZStack{
                    RoundedRectangle(cornerRadius: 20, style: .continuous)
                        .foregroundColor(.white)
                        .frame(height: 200)
                        .shadow(color: Color.blue.opacity(0.5), radius: 20, x: 0, y: 10)
                        .opacity(1)
                        TabView(){
                            viewbar()
                                .tag(1)
                            AppModule.toolbar()
                                .tag(2)
                        }.tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                            .frame(height: 200)
                            .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                        //.cornerRadius(20)
                    }
                    }
                }.zIndex(3)//VStack
                
                
                
            }//ZStack
        }
            
        }//ZStack
    }
}
