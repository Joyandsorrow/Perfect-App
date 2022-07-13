import SwiftUI

struct makeaniosapp: Identifiable { // 遵守 Identifiable 协议
    let id = UUID() // 新加一个 id 属性
    let name: String
    let isOpen : Bool
    let note : String
    let photo : String
    let photo2 : String
}

struct innewbox: Identifiable { // 遵守 Identifiable 协议
    let id = UUID() // 新加一个 id 属性
    //let Rectangle : RoundedRectangle
    //let text : String
    //let tit : String
    let buttontitle : String
    let chosenew : Bool
}

struct TheText: Identifiable { // 遵守 Identifiable 协议
    let id = UUID() // 新加一个 id 属性
    let title : String
    //struct am {
    var istaptext : Bool = true
    //}
}
