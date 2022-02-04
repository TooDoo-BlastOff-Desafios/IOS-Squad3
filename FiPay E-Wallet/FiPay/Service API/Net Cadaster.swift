//
//  NetworkManager API.swift
//  FiPay
//
//  Created by user209844 on 04/02/22.
//

import Foundation

class NetworkManager {
    
    let domainURLString = "https://api-fipay.herokuapp.com/cadastrarUsuario"
    
    func getData(completionHandler: @escaping ([Welcome]) -> Void) {
        let url = URL(string: domainURLString)!
        
        let task = URLSession.shared.dataTask(with: url, completionHandler: { data, response, error in
            
            guard let data = data, error == nil else{
                print("Request Error!")
                return
            }
            
            guard let httpResponse = response as? HTTPURLResponse,
                  (200...299).contains(httpResponse.statusCode) else {
                      print("Error with the response, unexpected status code: \(response)")
                      return
                  }
            
            var result: [Welcome]?
            do {
                result = try JSONDecoder().decode([Welcome].self, from: data)
            } catch {
                print("Failed to convert \(error.localizedDescription)")
            }
            completionHandler(result ?? [])
        })
        task.resume()
    
    
}
}
