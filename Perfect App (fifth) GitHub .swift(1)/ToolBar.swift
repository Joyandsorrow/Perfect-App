import SwiftUI

struct toolbar: View {
    var body: some View {
        ScrollView (showsIndicators: false){
            VStack{
                Text("ToolBar")
                    .bold()
                    .font(.largeTitle)
                    .foregroundColor(.blue)
                Text("Pay attention to all the details")
                    .font(.system(size: 15, weight: .thin))
                    .foregroundColor(.blue)
                //.foregroundColor(Color(red: 0.4, green: 0.6, blue: 5))
                    .shadow(color: Color.blue.opacity(0.5), radius: 15, x: 0, y: 0)
                    .padding(.bottom)
                
                textTool()
                
                VStack(alignment:.leading){
                    HStack{
                        
                    }
                    
                        
                }
            }.padding()
        }
    }
}

struct textTool: View {
    var body: some View {
        VStack{
            TextField("Text title", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                .padding()
                .background(Color.white)
                .cornerRadius(10)
                .shadow(color: Color.gray.opacity(0.2), radius: 10, x: 0, y: 6)
                .padding(.bottom)
            Button{
                
            }label: {
            VStack{
            HStack{
                Text("Font")
                    .bold()
                    .foregroundColor(.blue)
                    .font(.title2)
                Spacer()
                Image(systemName: "chevron.right")
                    .foregroundColor(.blue)
            }
            }.padding()
                .background(Color.white)
                .cornerRadius(10)
                .shadow(color: Color.gray.opacity(0.2), radius: 10, x: 0, y: 6)
                .padding(.bottom)
                
                
            }//Button
            Button{
                
            }label: {
                VStack{
                    HStack{
                        Text("Color")
                            .bold()
                            .foregroundColor(.blue)
                            .font(.title2)
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundColor(.blue)
                    }
                }.padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(color: Color.gray.opacity(0.2), radius: 10, x: 0, y: 6)
                    .padding(.bottom)
                
                
            }//Button
            
            Button{
                
            }label: {
                VStack{
                    HStack{
                        Text("padding")
                            .bold()
                            .foregroundColor(.blue)
                            .font(.title2)
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundColor(.blue)
                    }
                }.padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(color: Color.gray.opacity(0.2), radius: 10, x: 0, y: 6)
                    .padding(.bottom)
                
                
                
                
            }//Button
            Button{
                
            }label: {
                VStack{
                    HStack{
                        Text("Morn")
                            .bold()
                            .foregroundColor(.blue)
                            .font(.title2)
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundColor(.blue)
                    }
                }.padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(color: Color.gray.opacity(0.2), radius: 10, x: 0, y: 6)
                    .padding(.bottom)
                
                
            }//Button
        }//VStack
    }
}
