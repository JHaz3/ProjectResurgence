//
//  ApolloHelper.swift
//  MySmashHub
//
//  Created by Jake Haslam on 12/16/20.
//

import Foundation
import Apollo
import AuthenticationServices

// MARK: - Singleton Wrapper

let magicToken = "b6aed31a86f894a8c8c303f257afc10e"

class Apollo {
    static let shared = Apollo()
}

class ApolloNetwork {
    static let shared = ApolloNetwork()
    
    static private let graphQLEndpoint = "https://api.smash.gg/gql/alpha"
    static private let privateToken = "b6aed31a86f894a8c8c303f257afc10e"
    
    let apolloURL: ApolloClient = {
        let configuration = URLSessionConfiguration.default
        configuration.httpAdditionalHeaders = [
            "Authorization": "bearer \(privateToken)"
        ]
        
        let url = URL(string: graphQLEndpoint)!
        
        return ApolloClient(url: url)
    }()
    
    private(set) lazy var apollo = ApolloClient(url: URL(string: "\(ApolloNetwork.shared.apolloURL)")!)
    
}

//  /// A web socket transport to use for subscriptions
//  // This web socket will have to provide the connecting payload which
//  // initializes the connection as an authorized channel.
//  private lazy var webSocketTransport: WebSocketTransport = {
//    let url = URL(string: "https://api.smash.gg/gql/alpha")!
//    let request = URLRequest(url: url)
//    let authPayload = ["authToken": magicToken]
//    return WebSocketTransport(request: request, connectingPayload: authPayload)
//  }()
//
//  /// An HTTP transport to use for queries and mutations.
//  private lazy var normalTransport: RequestChainNetworkTransport = {
//    let url = URL(string: "https://api.smash.gg/gql/alpha")!
//    return RequestChainNetworkTransport(interceptorProvider: LegacyInterceptorProvider(store: ApolloStore()), endpointURL: url)
//  }()
//
//  /// A split network transport to allow the use of both of the above
//  /// transports through a single `NetworkTransport` instance.
//  private lazy var splitNetworkTransport = SplitNetworkTransport(
//    uploadingNetworkTransport: self.normalTransport,
//    webSocketNetworkTransport: self.webSocketTransport
//  )
//
//  /// Create a client using the `SplitNetworkTransport`.
//    private(set) lazy var client = ApolloClient(networkTransport: self.splitNetworkTransport, store: ApolloStore())
//}

