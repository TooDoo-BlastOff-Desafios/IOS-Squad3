//
//  Cadastro.swift
//  FiPay
//
//  Created by user209844 on 04/02/22.
//

import Foundation
import UIKit

//Conversor de JSON para Swift

struct Welcome: Codable {
    let situação: String
    let dadosNecessário: [String]

    enum CodingKeys: String, CodingKey {
        case situação = "Situação"
        case dadosNecessário = "Dados necessário"
    }
}
