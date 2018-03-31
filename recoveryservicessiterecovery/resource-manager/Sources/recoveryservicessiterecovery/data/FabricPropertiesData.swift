// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct FabricPropertiesData : FabricPropertiesProtocol {
    public var friendlyName: String?
    public var encryptionDetails: EncryptionDetailsProtocol?
    public var rolloverEncryptionDetails: EncryptionDetailsProtocol?
    public var internalIdentifier: String?
    public var bcdrState: String?
    public var customDetails: FabricSpecificDetailsProtocol?
    public var healthErrorDetails: [HealthErrorProtocol?]?
    public var health: String?

        enum CodingKeys: String, CodingKey {case friendlyName = "friendlyName"
        case encryptionDetails = "encryptionDetails"
        case rolloverEncryptionDetails = "rolloverEncryptionDetails"
        case internalIdentifier = "internalIdentifier"
        case bcdrState = "bcdrState"
        case customDetails = "customDetails"
        case healthErrorDetails = "healthErrorDetails"
        case health = "health"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.friendlyName) {
        self.friendlyName = try container.decode(String?.self, forKey: .friendlyName)
    }
    if container.contains(.encryptionDetails) {
        self.encryptionDetails = try container.decode(EncryptionDetailsData?.self, forKey: .encryptionDetails)
    }
    if container.contains(.rolloverEncryptionDetails) {
        self.rolloverEncryptionDetails = try container.decode(EncryptionDetailsData?.self, forKey: .rolloverEncryptionDetails)
    }
    if container.contains(.internalIdentifier) {
        self.internalIdentifier = try container.decode(String?.self, forKey: .internalIdentifier)
    }
    if container.contains(.bcdrState) {
        self.bcdrState = try container.decode(String?.self, forKey: .bcdrState)
    }
    if container.contains(.customDetails) {
        self.customDetails = try container.decode(FabricSpecificDetailsData?.self, forKey: .customDetails)
    }
    if container.contains(.healthErrorDetails) {
        self.healthErrorDetails = try container.decode([HealthErrorData?]?.self, forKey: .healthErrorDetails)
    }
    if container.contains(.health) {
        self.health = try container.decode(String?.self, forKey: .health)
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
    if self.friendlyName != nil {try container.encode(self.friendlyName, forKey: .friendlyName)}
    if self.encryptionDetails != nil {try container.encode(self.encryptionDetails as! EncryptionDetailsData?, forKey: .encryptionDetails)}
    if self.rolloverEncryptionDetails != nil {try container.encode(self.rolloverEncryptionDetails as! EncryptionDetailsData?, forKey: .rolloverEncryptionDetails)}
    if self.internalIdentifier != nil {try container.encode(self.internalIdentifier, forKey: .internalIdentifier)}
    if self.bcdrState != nil {try container.encode(self.bcdrState, forKey: .bcdrState)}
    if self.customDetails != nil {try container.encode(self.customDetails as! FabricSpecificDetailsData?, forKey: .customDetails)}
    if self.healthErrorDetails != nil {try container.encode(self.healthErrorDetails as! [HealthErrorData?]?, forKey: .healthErrorDetails)}
    if self.health != nil {try container.encode(self.health, forKey: .health)}
  }
}

extension DataFactory {
  public static func createFabricPropertiesProtocol() -> FabricPropertiesProtocol {
    return FabricPropertiesData()
  }
}
