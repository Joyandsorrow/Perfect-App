import SwiftUI

struct TextView: View {
    @Binding var texts: TheText
    var body: some View {
        Text(texts.title)
            .foregroundColor(.black)
            .border(texts.istaptext ? Color.blue : Color.clear, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
        //.background(text.istaptext ? Color.blue : Color.clear)
            .onTapGesture {
                withAnimation(.spring()) {
                    texts.istaptext.toggle()
                }
            }
    }
}
