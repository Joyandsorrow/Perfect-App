import SwiftUI

struct AppBox: View {
    @State var chosenew: Bool = false
    @State var openTool = false
    @State private var Makeios = [
        makeaniosapp(name: "Start",
                     isOpen: false, 
                     note: "This is your starts App",
                     photo: "P1",
                     photo2: "P2",
                     nowtime: Date()
                    )
    ]
    
    
    var body: some View {
        HStack {
            HomeView(Makeios: $Makeios, chosenew: $chosenew, openTool: $openTool)
        }.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}
