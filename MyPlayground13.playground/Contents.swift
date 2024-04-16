
//struct Address {
//    private var cityname: String = ""
//    
//    var city: String {
//        get { cityname }
//        set { cityname = newValue.uppercased()}
//    }
//}
// var address = Address()
//address.city = "London"
//
//print(address.city)

@propertyWrapper
struct FixCase {
    private(set) var value: String = ""
    
    var wrappedValue: String {
        get { value }
        set { value = newValue.uppercased() }
    }
    
    init(wrappedValue initialValue: String) {
        self.wrappedValue = initialValue
    }
}

struct Contact {
    @FixCase var name: String
    @FixCase var city: String
    @FixCase var country: String
}

var contact = Contact(name: "John Smith", city: "London", country: "United Kingdom")

print("\(contact.name) \(contact.city) \(contact.country)")

// 프로퍼티 랩퍼를 선언하여 반복적으로 사용
