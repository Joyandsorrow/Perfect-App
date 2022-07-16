import SwiftUI

//数据中心
struct makeaniosapp: Identifiable { // 遵守 Identifiable 协议
    let id = UUID() // 新加一个 id 属性
    let name: String
    let isOpen : Bool
    let note : String
    let photo : String
    let photo2 : String
    let nowtime : Date
}


