import SwiftUI

struct makeroon: View {//点击首首页more按扭的视图
    @Environment(\.horizontalSizeClass) var horizontalClass
    @Binding var tap : Bool
    @Binding var Makeios : [makeaniosapp]
    @Binding var openroon : Bool
    //@State var shownote = false
    let columnCount: Int = 4
    let gridSpacing: CGFloat = 16
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
            ScrollView (.vertical, showsIndicators: false)    {
                LazyVGrid(columns: Array(repeating: .init(.flexible(), spacing: gridSpacing), count: columnCount), spacing : gridSpacing){
                    // 更新为从本地获取列表
                    ForEach(LocationDataHandle.loadProject()){ (makeaniosapp) in
                        HStack{
                            Button{
                                tap.toggle()
                            }label: {
                                
                                VStack{
                                    /*Image(makeaniosapp.photo)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(height: 215)
                                        .cornerRadius(10)
                                        .shadow(radius: 5)*/
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
                                    HStack{
                                        
                                    Text(makeaniosapp.nowtime, style: .date)
                                        .bold()
                                        .foregroundColor(.gray)
                                        .font(.caption)
                                        .padding(5)
                                        Spacer()
                                        Text(makeaniosapp.nowtime, style: .time)
                                            .bold()
                                            .foregroundColor(.gray)
                                            .font(.caption)
                                            .padding(5)
                                    }
                                }
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
                    // 更新为从本地获取列表
                    ForEach(LocationDataHandle.loadProject()){ (makeaniosapp) in
                        VStack{
                            Button{
                                tap.toggle()
                            }label: {
                                
                                VStack{
                                    
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
                                    HStack{
                                        
                                        Text(makeaniosapp.nowtime, style: .date)
                                            .bold()
                                            .foregroundColor(.gray)
                                            .font(.caption)
                                            .padding(5)
                                        Spacer()
                                        Text(makeaniosapp.nowtime, style: .time)
                                            .bold()
                                            .foregroundColor(.gray)
                                            .font(.caption)
                                            .padding(5)
                                    }
                                }//.padding(10)
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
