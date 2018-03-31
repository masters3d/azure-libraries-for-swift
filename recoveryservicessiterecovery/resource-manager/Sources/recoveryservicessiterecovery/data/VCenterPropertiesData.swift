// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct VCenterPropertiesData : VCenterPropertiesProtocol {
    public var friendlyName: String?
    public var internalId: String?
    public var lastHeartbeat: Date?
    public var discoveryStatus: String?
    public var processServerId: String?
    public var ipAddress: String?
    public var infrastructureId: String?
    public var port: String?
    public var runAsAccountId: String?
    public var fabricArmResourceName: String?
    public var healthErrors: [HealthErrorProtocol?]?

        enum CodingKeys: String, CodingKey {case friendlyName = "friendlyName"
        case internalId = "internalId"
        case lastHeartbeat = "lastHeartbeat"
        case discoveryStatus = "discoveryStatus"
        case processServerId = "processServerId"
        case ipAddress = "ipAddress"
        case infrastructureId = "infrastructureId"
        case port = "port"
        case runAsAccountId = "runAsAccountId"
        case fabricArmResourceName = "fabricArmResourceName"
        case healthErrors = "healthErrors"
        }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.friendlyName) {
        self.friendlyName = try container.decode(String?.self, forKey: .friendlyName)
    }
    if container.contains(.internalId) {
        self.internalId = try container.decode(String?.self, forKey: .internalId)
    }
    if container.contains(.lastHeartbeat) {
        self.lastHeartbeat = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .lastHeartbeat)), format: .dateTime)
    }
    if container.contains(.discoveryStatus) {
        self.discoveryStatus = try container.decode(String?.self, forKey: .discoveryStatus)
    }
    if container.contains(.processServerId) {
        self.processServerId = try container.decode(String?.self, forKey: .processServerId)
    }
    if container.contains(.ipAddress) {
        self.ipAddress = try container.decode(String?.self, forKey: .ipAddress)
    }
    if container.contains(.infrastructureId) {
        self.infrastructureId = try container.decode(String?.self, forKey: .infrastructureId)
    }
    if container.contains(.port) {
        self.port = try container.decode(String?.self, forKey: .port)
    }
    if container.contains(.runAsAccountId) {
        self.runAsAccountId = try container.decode(String?.self, forKey: .runAsAccountId)
    }
    if container.contains(.fabricArmResourceName) {
        self.fabricArmResourceName = try container.decode(String?.self, forKey: .fabricArmResourceName)
    }
    if container.contains(.healthErrors) {
        self.healthErrors = try container.decode([HealthErrorData?]?.self, forKey: .healthErrors)
    }
    if var pageDecoder = decoder as? PageDecoder {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    if self.friendlyName != nil { try container.encode(self.friendlyName, forKey: .friendlyName) }
    if self.internalId != nil { try container.encode(self.internalId, forKey: .internalId) }
    if self.lastHeartbeat != nil {
        try container.encode(DateConverter.toString(date: self.lastHeartbeat!, format: .dateTime), forKey: .lastHeartbeat)
    }
    if self.discoveryStatus != nil { try container.encode(self.discoveryStatus, forKey: .discoveryStatus) }
    if self.processServerId != nil { try container.encode(self.processServerId, forKey: .processServerId) }
    if self.ipAddress != nil { try container.encode(self.ipAddress, forKey: .ipAddress) }
    if self.infrastructureId != nil { try container.encode(self.infrastructureId, forKey: .infrastructureId) }
    if self.port != nil { try container.encode(self.port, forKey: .port) }
    if self.runAsAccountId != nil { try container.encode(self.runAsAccountId, forKey: .runAsAccountId) }
    if self.fabricArmResourceName != nil { try container.encode(self.fabricArmResourceName, forKey: .fabricArmResourceName) }
    if self.healthErrors != nil { try container.encode(self.healthErrors as! [HealthErrorData?]?, forKey: .healthErrors) }
  }
}

extension DataFactory {
  public static func createVCenterPropertiesProtocol() -> VCenterPropertiesProtocol {
    return VCenterPropertiesData()
  }
}
