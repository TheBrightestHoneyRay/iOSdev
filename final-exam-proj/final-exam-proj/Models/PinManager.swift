import Foundation
import UIKit

let urlString = "https://api.disneyapi.dev/character"

//struct PinManager{
//    func fetchPins(){
//        
//        guard let url = URL(string: urlString)
//        else {
//            print("Invalid URL")
//            return
//        }
//        
//        let request = URLRequest(url: url)
//        
//        let task = URLSession.shared.dataTask(with: request) { data, response, error in
//            guard let data
//            else {return}
//            
//            if let decodedData = try? JSONDecoder().decode(Pin.self, from: data){
//                print("Success decoding")
//            } else{
//                print("Error decoding data")
//            }
//            
//        }
//        task.resume()
        
        
//        let request = URLRequest(url: url)
//        
//        URLSession.shared.dataTask(with: request) { data, response, error in
//            if let data = data{
//                if let decodedResponse = try? JSONDecoder().decode(Pin.self, from: data){
//                    print(data)
//                }
//                return
//            }
//            
//            print("Fetch failed: \(error?.localizedDescription ?? "Unknown error")")
//        }
//        
//        
//        let dataTask = URLSession.shared.dataTask(with: url){
//            (data, _, error) in
//            if let error = error {
//                print("Errro fetching pins: \(error.localizedDescription)")
//            }
//            
//            guard let jsonData = data else {
//                print("Error")
//                return
//            }
//            
//            print(jsonData)
//            
//            let decoder = JSONDecoder()
//            
//            do {
//                let decodedData = try decoder.decode(Pin.self, from: jsonData)
//                completion(decodedData)
//                print(decodedData)
//            } catch {
//                print("Error decoding data")
//            }
//        }
//        
//        dataTask.resume()
//        
//    }
//}
