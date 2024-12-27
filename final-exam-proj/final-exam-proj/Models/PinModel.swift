import Foundation


struct Pin {
    let _id: Int
    let name: String
    let imageURL: String
    var board: Int!
    var isBoard: Bool
}

//struct Pin {
//    let id: Int
//    let name: String
//    let slug: String
//    let images: Image
//    
//    struct Image {
//        let sm: String
//    }
//}

var pins: [Pin] = [
    Pin(
        _id: 112,
        name: "Achilles",
        imageURL: "https://static.wikia.nocookie.net/disney/images/d/d3/Vlcsnap-2015-05-06-23h04m15s601.png",
        board: 1,
        isBoard: true
    ),
    
    Pin(
        _id: 18,
        name: "Abigail the Cow",
        imageURL: "https://static.wikia.nocookie.net/disney/images/0/05/Fox-disneyscreencaps_com-901.jpg",
        isBoard: false
    ),
    
    Pin(
        _id: 16,
        name: "Abdullah",
        imageURL: "https://static.wikia.nocookie.net/disney/images/c/cb/1087603-44532-clp-950.jpg",
        board: 1,
        isBoard: true
    ),
    
    Pin(
        _id: 45,
        name: "Admiral Boom and Mr. Binnacle",
        imageURL: "https://static.wikia.nocookie.net/disney/images/b/be/Marypoppins-disneyscreencaps_com-1086.jpg",
        board: 2,
        isBoard: true
    ),
    
    Pin(
        _id: 7,
        name: ".GIFfany",
        imageURL: "https://static.wikia.nocookie.net/disney/images/5/51/Giffany.png",
        board: 1,
        isBoard: true
    ),
    
    Pin(
        _id: 12,
        name: "90's Adventure Bear",
        imageURL: "https://static.wikia.nocookie.net/disney/images/3/3f/90%27s_Adventure_Bear_profile.png",
        board: 2,
        isBoard: true
    ),
    
    Pin(
        _id: 36,
        name: "Candace Adams",
        imageURL: "https://static.wikia.nocookie.net/disney/images/8/8b/Enemy_of_the_State_promo_3.jpg",
        board: 2,
        isBoard: true
    ),
    
    Pin(
        _id: 139,
        name: "Ahadi",
        imageURL: "https://static.wikia.nocookie.net/disney/images/b/b3/Ahadihead.png",
        board: 2,
        isBoard: true
    ),
    
    Pin(
        _id: 152,
        name: "Al Muddy Sultan",
        imageURL: "https://static.wikia.nocookie.net/disney/images/e/e0/Almuddyking.jpg",
        board: 1,
        isBoard: true
    ),
    
    Pin(
        _id: 310,
        name: "Queen Ariel",
        imageURL: "https://static.wikia.nocookie.net/disney/images/e/e8/Char_49883.jpg",
        board: 3,
        isBoard: true
    ),
    
    Pin(
        _id: 204,
        name: "Ambrose",
        imageURL: "https://static.wikia.nocookie.net/disney/images/d/d3/Ambrose.jpg",
        board: 3,
        isBoard: true
    ),
    
    Pin(
        _id: 215,
        name: "Amos",
        imageURL: "https://static.wikia.nocookie.net/disney/images/8/83/Tve8132-19531110-2244.jpg",
        isBoard: false
    ),
    
    Pin(
        _id: 295,
        name: "Arabella Smith",
        imageURL: "https://static.wikia.nocookie.net/disney/images/d/da/Bella_sign.webp",
        board: 3,
        isBoard: true
    ),
]
