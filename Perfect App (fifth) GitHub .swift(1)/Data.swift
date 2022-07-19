import SwiftUI

//数据中心
// 继承Codable编码解码
struct makeaniosapp: Identifiable, Codable { // 遵守 Identifiable 协议
    var id = UUID() // 新加一个 id 属性
    var name: String
    var isOpen : Bool
    var note : String
    var photo : String
    var photo2 : String
    var nowtime : Date
}


