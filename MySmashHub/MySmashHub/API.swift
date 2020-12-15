// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public final class LeagueScheduleQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query LeagueSchedule {
      league(slug: "twt") {
        __typename
        id
        name
        events(query: {page: 1, perPage: 10}) {
          __typename
          pageInfo {
            __typename
            totalPages
            total
          }
          nodes {
            __typename
            id
            name
            startAt
            tournament {
              __typename
              id
              name
            }
          }
        }
      }
    }
    """

  public let operationName: String = "LeagueSchedule"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("league", arguments: ["slug": "twt"], type: .object(League.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(league: League? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "league": league.flatMap { (value: League) -> ResultMap in value.resultMap }])
    }

    /// Returns a league given its id or slug
    public var league: League? {
      get {
        return (resultMap["league"] as? ResultMap).flatMap { League(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "league")
      }
    }

    public struct League: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["League"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .scalar(GraphQLID.self)),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("events", arguments: ["query": ["page": 1, "perPage": 10]], type: .object(Event.selections)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID? = nil, name: String? = nil, events: Event? = nil) {
        self.init(unsafeResultMap: ["__typename": "League", "id": id, "name": name, "events": events.flatMap { (value: Event) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID? {
        get {
          return resultMap["id"] as? GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      /// The tournament name
      public var name: String? {
        get {
          return resultMap["name"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }

      /// Paginated list of events in a league
      public var events: Event? {
        get {
          return (resultMap["events"] as? ResultMap).flatMap { Event(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "events")
        }
      }

      public struct Event: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["EventConnection"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("pageInfo", type: .object(PageInfo.selections)),
            GraphQLField("nodes", type: .list(.object(Node.selections))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(pageInfo: PageInfo? = nil, nodes: [Node?]? = nil) {
          self.init(unsafeResultMap: ["__typename": "EventConnection", "pageInfo": pageInfo.flatMap { (value: PageInfo) -> ResultMap in value.resultMap }, "nodes": nodes.flatMap { (value: [Node?]) -> [ResultMap?] in value.map { (value: Node?) -> ResultMap? in value.flatMap { (value: Node) -> ResultMap in value.resultMap } } }])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var pageInfo: PageInfo? {
          get {
            return (resultMap["pageInfo"] as? ResultMap).flatMap { PageInfo(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "pageInfo")
          }
        }

        public var nodes: [Node?]? {
          get {
            return (resultMap["nodes"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Node?] in value.map { (value: ResultMap?) -> Node? in value.flatMap { (value: ResultMap) -> Node in Node(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [Node?]) -> [ResultMap?] in value.map { (value: Node?) -> ResultMap? in value.flatMap { (value: Node) -> ResultMap in value.resultMap } } }, forKey: "nodes")
          }
        }

        public struct PageInfo: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["PageInfo"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("totalPages", type: .scalar(Int.self)),
              GraphQLField("total", type: .scalar(Int.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(totalPages: Int? = nil, total: Int? = nil) {
            self.init(unsafeResultMap: ["__typename": "PageInfo", "totalPages": totalPages, "total": total])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var totalPages: Int? {
            get {
              return resultMap["totalPages"] as? Int
            }
            set {
              resultMap.updateValue(newValue, forKey: "totalPages")
            }
          }

          public var total: Int? {
            get {
              return resultMap["total"] as? Int
            }
            set {
              resultMap.updateValue(newValue, forKey: "total")
            }
          }
        }

        public struct Node: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["Event"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .scalar(GraphQLID.self)),
              GraphQLField("name", type: .scalar(String.self)),
              GraphQLField("startAt", type: .scalar(String.self)),
              GraphQLField("tournament", type: .object(Tournament.selections)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(id: GraphQLID? = nil, name: String? = nil, startAt: String? = nil, tournament: Tournament? = nil) {
            self.init(unsafeResultMap: ["__typename": "Event", "id": id, "name": name, "startAt": startAt, "tournament": tournament.flatMap { (value: Tournament) -> ResultMap in value.resultMap }])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID? {
            get {
              return resultMap["id"] as? GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "id")
            }
          }

          /// Title of event set by organizer
          public var name: String? {
            get {
              return resultMap["name"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "name")
            }
          }

          /// When does this event start?
          public var startAt: String? {
            get {
              return resultMap["startAt"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "startAt")
            }
          }

          public var tournament: Tournament? {
            get {
              return (resultMap["tournament"] as? ResultMap).flatMap { Tournament(unsafeResultMap: $0) }
            }
            set {
              resultMap.updateValue(newValue?.resultMap, forKey: "tournament")
            }
          }

          public struct Tournament: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["Tournament"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("id", type: .scalar(GraphQLID.self)),
                GraphQLField("name", type: .scalar(String.self)),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(id: GraphQLID? = nil, name: String? = nil) {
              self.init(unsafeResultMap: ["__typename": "Tournament", "id": id, "name": name])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var id: GraphQLID? {
              get {
                return resultMap["id"] as? GraphQLID
              }
              set {
                resultMap.updateValue(newValue, forKey: "id")
              }
            }

            /// The tournament name
            public var name: String? {
              get {
                return resultMap["name"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "name")
              }
            }
          }
        }
      }
    }
  }
}
