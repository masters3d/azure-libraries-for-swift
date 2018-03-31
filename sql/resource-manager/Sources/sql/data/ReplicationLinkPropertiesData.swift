// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ReplicationLinkPropertiesData : ReplicationLinkPropertiesProtocol {
    public var isTerminationAllowed: Bool?
    public var replicationMode: String?
    public var partnerServer: String?
    public var partnerDatabase: String?
    public var partnerLocation: String?
    public var role: ReplicationRoleEnum?
    public var partnerRole: ReplicationRoleEnum?
    public var startTime: Date?
    public var percentComplete: Int32?
    public var replicationState: ReplicationStateEnum?

        enum CodingKeys: String, CodingKey {case isTerminationAllowed = "isTerminationAllowed"
        case replicationMode = "replicationMode"
        case partnerServer = "partnerServer"
        case partnerDatabase = "partnerDatabase"
        case partnerLocation = "partnerLocation"
        case role = "role"
        case partnerRole = "partnerRole"
        case startTime = "startTime"
        case percentComplete = "percentComplete"
        case replicationState = "replicationState"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.isTerminationAllowed) {
        self.isTerminationAllowed = try container.decode(Bool?.self, forKey: .isTerminationAllowed)
    }
    if container.contains(.replicationMode) {
        self.replicationMode = try container.decode(String?.self, forKey: .replicationMode)
    }
    if container.contains(.partnerServer) {
        self.partnerServer = try container.decode(String?.self, forKey: .partnerServer)
    }
    if container.contains(.partnerDatabase) {
        self.partnerDatabase = try container.decode(String?.self, forKey: .partnerDatabase)
    }
    if container.contains(.partnerLocation) {
        self.partnerLocation = try container.decode(String?.self, forKey: .partnerLocation)
    }
    if container.contains(.role) {
        self.role = try container.decode(ReplicationRoleEnum?.self, forKey: .role)
    }
    if container.contains(.partnerRole) {
        self.partnerRole = try container.decode(ReplicationRoleEnum?.self, forKey: .partnerRole)
    }
    if container.contains(.startTime) {
        self.startTime = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .startTime)), format: .dateTime)
    }
    if container.contains(.percentComplete) {
        self.percentComplete = try container.decode(Int32?.self, forKey: .percentComplete)
    }
    if container.contains(.replicationState) {
        self.replicationState = try container.decode(ReplicationStateEnum?.self, forKey: .replicationState)
    }
    if var pageDecoder = decoder as? PageDecoder  {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    if self.isTerminationAllowed != nil {try container.encode(self.isTerminationAllowed, forKey: .isTerminationAllowed)}
    if self.replicationMode != nil {try container.encode(self.replicationMode, forKey: .replicationMode)}
    if self.partnerServer != nil {try container.encode(self.partnerServer, forKey: .partnerServer)}
    if self.partnerDatabase != nil {try container.encode(self.partnerDatabase, forKey: .partnerDatabase)}
    if self.partnerLocation != nil {try container.encode(self.partnerLocation, forKey: .partnerLocation)}
    if self.role != nil {try container.encode(self.role, forKey: .role)}
    if self.partnerRole != nil {try container.encode(self.partnerRole, forKey: .partnerRole)}
    if self.startTime != nil {
        try container.encode(DateConverter.toString(date: self.startTime!, format: .dateTime), forKey: .startTime)
    }
    if self.percentComplete != nil {try container.encode(self.percentComplete, forKey: .percentComplete)}
    if self.replicationState != nil {try container.encode(self.replicationState, forKey: .replicationState)}
  }
}

extension DataFactory {
  public static func createReplicationLinkPropertiesProtocol() -> ReplicationLinkPropertiesProtocol {
    return ReplicationLinkPropertiesData()
  }
}
