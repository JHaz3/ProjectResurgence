//
//  ApolloClient.swift
//  MySmashHub
//
//  Created by Jake Haslam on 12/16/20.
//

import Foundation
import Apollo

class ApolloNetwork {
    static let shared = ApolloNetwork()
    
    private(set) lazy var apollo = ApolloClient(url: URL(string: "https://api.smash.gg/gql/alpha")!)
}
