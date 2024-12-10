import Foundation

struct HeroModel: Codable {
    let id: Int
    let name: String
    let slug: String
    let powerstats: HeroStats
    let biography: HeroBio
    let images: HeroImage
    
    struct HeroStats: Codable {
        let intelligence: Int
        let strength: Int
        let speed: Int
        let durability: Int
        let power: Int
        let combat: Int
    }
    
    struct HeroBio: Codable {
        let placeOfBirth: String
        let firstAppearance: String
    }

    struct HeroImage: Codable {
        let sm: String
    }
}
