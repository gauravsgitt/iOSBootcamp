//
//  PlayersData.swift
//  asignment-19-designPattern
//
//  Created by Gaurav Bisht on 07/11/21.
//

import Foundation

class PlayersData
{
    
    static let shared = PlayersData()
    
    private init(){}
    
    var dataArray : [DataModel] = [
        DataModel(name: "Sachin",sport: "Cricket",email: "sachin@gmail.com"),
        DataModel(name: "Saurav Ganguli",sport: "Cricket",email: "saurav@gmail.com"),
        DataModel(name: "Roger Federer",sport: "Tennis",email: "roger@gmail.com"),
        DataModel(name: "Rafael Nadal",sport: "Tennis",email: "rafael@gmail.com"),
        DataModel(name: "Lionel Messi",sport: "Football",email: "lionel@gmail.com"),
        DataModel(name: "Cristiano Ronaldo",sport: "Football",email: "cristiano@gmail.com")]
}
