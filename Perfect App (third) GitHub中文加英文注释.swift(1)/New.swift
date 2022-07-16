import SwiftUI



struct ismakeing : View{//这个视图是点击首页Make an App后出现的sheet视图
    @Binding var Makeios : [makeaniosapp]
    @State var name = "New App"
    @State var note =  "New App note"
    @State var Alert = false
    //
    //@Binding var shownote : Bool
    @Binding var open : Bool
    @Binding var newmacOSapp : Bool
    @Binding var newapp : Bool
    var body: some View{
        ZStack{
            //ScrollView(.vertical, showsIndicators: false) {
            VStack{
        VStack{
            Text("Setting App")
                .bold()
                .font(.title)
                .padding(.bottom)
            
                TextField("work name", text: $name)
                .font(.bold(.title)())
            TextField("work note", text: $note)
                .font(.bold(.body)())
                .padding(.bottom, 60)
            VStack(alignment:.leading){
                Text("Preview project")
                    .font(.bold(.title)())
                    .foregroundColor(.gray)
            VStack{
                
                    
                    VStack{
                        
                        HStack{
                            VStack(alignment: .leading){
                                Text(name)
                                    .bold()
                                    .font(.largeTitle)
                                    .foregroundColor(.white)
                                Text(note)
                                    .bold()
                                    .font(.caption)
                                    .foregroundColor(.white)
                                
                            }
                            Spacer()
                        }.padding()
                            .background(Color.blue)
                            .cornerRadius(10)
                            .shadow(radius: 5)
                        HStack{
                            
                            Text(Date(), style: .date)
                                .bold()
                                .foregroundColor(.gray)
                                .font(.caption)
                                .padding(5)
                            Spacer()
                            Text(Date(), style: .time)
                                .bold()
                                .foregroundColor(.gray)
                                .font(.caption)
                                .padding(5)
                        }
                    }//.padding(10)
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(radius: 5)
                
            }
            
        }/////
            Spacer()
            
                
            }
            Spacer()
            Button{
                
                if self.name != ""{
                    open.toggle()
                    Makeios.append(makeaniosapp(name: name,isOpen: true,note: note,photo: "P1",photo2: "P2", nowtime: Date()))
                    open = false
                } else {
                    //
                    Alert.toggle()
                }
            }label: {
                Text("Perfect !")
                    .bold()
                    .font(.system(size: 50, weight: .black))
            }.padding(50)
                .alert(isPresented: $Alert) {
                    SwiftUI.Alert(title: Text("Invalid name") , message: Text("Please enter a valid work name"),dismissButton: .default(Text("OK")))
                }
        }.padding()
            //}
        
        VStack{
            
            //todos.append(Todo(name: name,category: categoryTypes[selectedCategory]))
            Spacer()
            Text("Lighe down to close the page")
                .bold()
                .foregroundColor(.gray)
        }.padding()
        }
    }
    }


struct macOSapp : View{
    var body: some View{
        ZStack{
        ScrollView(.vertical, showsIndicators: false) {
        VStack{
            Text("macOS APP")
                .bold()
                .font(.title)
                .padding(.bottom)
        }.padding()
        }
        VStack{
            Spacer()
            Text("Lighe down to close the page")
                .bold()
                .foregroundColor(.gray)
        }.padding()
    }
    }
}

struct app : View{
    var body: some View{
        ZStack{
        ScrollView(.vertical, showsIndicators: false) {
        VStack{
            Text("Make an APP")
                .bold()
                .font(.title)
                .padding(.bottom)
            
        }.padding()
        }
            VStack{
            Spacer()
            Text("Lighe down to close the page")
                .bold()
                .foregroundColor(.gray)
            }.padding()
        }
    }
}

////////

struct iosapp1 : View{
    
    var body: some View{
        VStack{
            
        }
    }
}

struct macOSapp1 : View{
    var body: some View{
        VStack{
            
        }
    }
}

struct app1 : View{
    var body: some View{
        VStack{
            
        }
    }
}

