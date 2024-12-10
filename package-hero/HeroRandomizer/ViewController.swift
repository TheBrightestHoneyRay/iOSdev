import UIKit
import Kingfisher
import ShimmerSwift

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
    
    var heroManager = HeroManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        heroManager.delegate = self
        getLocalHero()
    }

    @IBAction private func onHeroDidTap(_ sender: UIButton) {
        heroManager.fetchHero()
    }
}

extension ViewController: HeroManagerDelegate {
    func onHeroDidUpdate(hero: HeroModel) {
        configure(selectedHero: hero)
        saveHero(hero)
    }

    private func getLocalHero() {
        if
            let heroData = UserDefaults.standard.data(forKey: "heroData"),
            let storedHero = try? PropertyListDecoder().decode(HeroModel.self, from: heroData)
        {
            configure(selectedHero: storedHero)
        }
    }

    private func saveHero(_ hero: HeroModel) {

        guard let heroData = try? PropertyListEncoder().encode(hero) else {
            return
        }
        UserDefaults.standard.set(heroData, forKey: "heroData")
    }

    private func configure(selectedHero: HeroModel) {
        
        rotateView()
        
        heroName.text = selectedHero.name
        heroImage.kf.setImage(with: URL(string: selectedHero.images.sm))
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
    
    private func colourStat(stat: Int) -> UIColor{
        if stat < 30{
            return UIColor.red
        }else if stat >= 80{
            return UIColor.green
        }
        
        return UIColor.black
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
}
