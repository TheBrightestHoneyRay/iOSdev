//
//  ViewController.swift
//  hero
//
//  Created by Балнур Бектасова on 17.11.2024.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet private weak var heroImage: UIImageView!
    @IBOutlet private weak var heroName: UILabel!
    @IBOutlet private weak var heroSlug: UILabel!
    @IBOutlet private weak var heroBirthPlace: UILabel!
    @IBOutlet private weak var heroFirstApperance: UILabel!
    @IBOutlet private weak var heroIntel: UILabel!
    @IBOutlet private weak var heroStren: UILabel!
    @IBOutlet private weak var heroSpeed: UILabel!
    @IBOutlet private weak var heroDura: UILabel!
    @IBOutlet private weak var heroPower: UILabel!
    @IBOutlet private weak var heroCombat: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction private func heroButton(_ sender: UIButton){
        fetchHeroes()
    }
    
    private func rotateView(){
        UIView.animate(withDuration: 0.5) {
            self.heroImage.transform = CGAffineTransform(rotationAngle: .pi)
        }

        UIView.animate(
            withDuration: 0.5,
            delay: 0.45,
            options: UIView.AnimationOptions.curveEaseIn
        ) {
            self.heroImage.transform = CGAffineTransform(rotationAngle: 2 * .pi)
        }
    }
    
    private func fetchHeroes(){
        let session = URLSession(configuration: .default)
        let urlString = "https://akabab.github.io/superhero-api/api/all.json"
        
        guard let url = URL(string: urlString) else {
            return
        }
        
        let urlRequest = URLRequest(url: url)
        
        let task = session.dataTask(with: urlRequest)
        {
            data, response, error in
            
            if let error {
                print(error.localizedDescription)
            } else {
                // Decode data to Hero struct object
                guard let data else { return }
                self.decodeHeroResponse(heroData: data)
            }
        }
        
        task.resume()
    }
    
    private func decodeHeroResponse(heroData: Data){
        
        do {
            let heroes = try JSONDecoder().decode([Hero].self, from: heroData)
            guard let selectedHero = heroes.randomElement() else { return }

            DispatchQueue.main.async {
                self.updateUI(selectedHero: selectedHero)
            }
        } catch {
            print(error.localizedDescription)
        }
        
    }
    
    private func updateUI(selectedHero: Hero) {
        
        rotateView()
        
        self.heroName.text = selectedHero.name
        fetchHeroImage(imageString: selectedHero.images.sm)
        self.heroSlug.text = selectedHero.slug
        self.heroBirthPlace.text = selectedHero.biography.placeOfBirth
        self.heroFirstApperance.text = selectedHero.biography.firstAppearance
        
        
        self.heroIntel.text = String(selectedHero.powerstats.intelligence)
        self.heroIntel.textColor = colourStat(stat: selectedHero.powerstats.intelligence)
        self.heroDura.text = String(selectedHero.powerstats.durability)
        self.heroDura.textColor = colourStat(stat: selectedHero.powerstats.durability)
        self.heroSpeed.text = String(selectedHero.powerstats.speed)
        self.heroSpeed.textColor = colourStat(stat: selectedHero.powerstats.speed)
        self.heroPower.text = String(selectedHero.powerstats.power)
        self.heroPower.textColor = colourStat(stat: selectedHero.powerstats.power)
        self.heroCombat.text = String(selectedHero.powerstats.combat)
        self.heroCombat.textColor = colourStat(stat: selectedHero.powerstats.combat)
        self.heroStren.text = String(selectedHero.powerstats.strength)
        self.heroStren.textColor = colourStat(stat: selectedHero.powerstats.strength)
        
        
    }

    private func fetchHeroImage(imageString: String) {
        guard let url = URL(string: imageString) else {
            return
        }

        DispatchQueue.global().async {
            let imageData = try! Data(contentsOf: url)
            DispatchQueue.main.async {
                self.heroImage.image = UIImage(data: imageData)
            }
        }
    }
    
    struct Hero: Decodable {
        let id: Int
        let name: String
        let slug: String
        let powerstats: HeroStats
        let biography: HeroBio
        let images: HeroImage
        
        struct HeroStats: Decodable {
            let intelligence: Int
            let strength: Int
            let speed: Int
            let durability: Int
            let power: Int
            let combat: Int
        }
        
        struct HeroBio: Decodable {
            let placeOfBirth: String
            let firstAppearance: String
        }

        struct HeroImage: Decodable {
            let sm: String
        }
    }
    
    private func colourStat(stat: Int) -> UIColor{
        if stat < 30{
            return UIColor.red
        }else if stat >= 80{
            return UIColor.green
        }
        
        return UIColor.black
    }
    

}

