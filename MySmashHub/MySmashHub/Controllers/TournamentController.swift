//
//  TournamentController.swift
//  MySmashHub
//
//  Created by Jake Haslam on 12/15/20.
//
import UIKit
import Foundation
import Apollo

class TournamentController {
    static private let graphQLEndpoint = "https://api.smash.gg/gql/alpha"
    static private let privateToken = "b6aed31a86f894a8c8c303f257afc10e"
    
    let apollo: ApolloClient = {
        let configuration = URLSessionConfiguration.default
        configuration.httpAdditionalHeaders = [
            "Authorization": "Bearer \(privateToken)"
        ]
        
        let url = URL(string: graphQLEndpoint)!
        
        return ApolloClient(url: url)
}()

}
