

import Foundation

class SharedData: NSObject {
    struct SharedDataStruct {
        static var _sharedData : SharedData?
    }
    
    class func sharedData() -> SharedData {
        if (nil == SharedDataStruct._sharedData) {
            SharedDataStruct._sharedData = SharedData()
        }
        
        return SharedDataStruct._sharedData!
    }
    
    //define data here
    dynamic var hasLogin: Bool = false
}

struct ShopCommInfo {
    let seqNo: Int
    
    let bigPicUrl: String
    let name: String
    let location: String
    let grade:Int
    let reviewCount: Int
}

struct ShopDetailInfo {
    let seqNo: Int
    
    let intros: [ShopIntro]
}

struct ShopIntro {
    let picUrl: String
    let introInfo: String
}

struct Review {
    let reviewContent: String
}


//menu related
struct MenuType {
    let id: Int
    let name: String
    var itemsID: [Int]
    let intro: String
    
    let titlePic: String
}

struct MenuItem {
    let id: Int
    let name: String
    let price: Int
    let titlePic: String
    
    let soldCount: Int
    let isRecommended: Int
    let intro: String
}


//order related
struct OrderItem {
    init() {
        id = 0
        count = 0
    }
    
    init(id:Int, count:Int) {
        self.id = id
        self.count = count
    }
    
    var id: Int
    var count: Int
}

struct Order {

    mutating func add(id:Int) {
        if var item = items[id] {
            items[id]!.count++
        }
        else {
            self.items[id] = OrderItem(id: id, count: 1)
        }
    }
    
    mutating func sub(id:Int) {
        if var item = items[id] {
            items[id]!.count--
            if items[id]!.count <= 0 {
                items.removeValueForKey(id)
            }
        }
    }
    
    func get(id:Int) -> Int {
        if let item = items[id] {
            return item.count
        }
        else {
            return 0
        }
    }
    
    var items: Dictionary<Int, OrderItem> = [:]
}

