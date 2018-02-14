// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct DiskPropertiesData : DiskPropertiesProtocol {
    public var timeCreated: Date?
    public var osType: OperatingSystemTypesEnum?
    public var creationData: CreationDataProtocol
    public var diskSizeGB: Int32?
    public var encryptionSettings: EncryptionSettingsProtocol?
    public var provisioningState: String?

        enum CodingKeys: String, CodingKey {case timeCreated = "timeCreated"
        case osType = "osType"
        case creationData = "creationData"
        case diskSizeGB = "diskSizeGB"
        case encryptionSettings = "encryptionSettings"
        case provisioningState = "provisioningState"
        }

  public init(creationData: CreationDataProtocol)  {
    self.creationData = creationData
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.timeCreated) {
        self.timeCreated = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .timeCreated)), format: .dateTime)
    }
    if container.contains(.osType) {
        self.osType = try container.decode(OperatingSystemTypesEnum?.self, forKey: .osType)
    }
    self.creationData = try container.decode(CreationDataData.self, forKey: .creationData)
    if container.contains(.diskSizeGB) {
        self.diskSizeGB = try container.decode(Int32?.self, forKey: .diskSizeGB)
    }
    if container.contains(.encryptionSettings) {
        self.encryptionSettings = try container.decode(EncryptionSettingsData?.self, forKey: .encryptionSettings)
    }
    if container.contains(.provisioningState) {
        self.provisioningState = try container.decode(String?.self, forKey: .provisioningState)
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
    if self.timeCreated != nil {
        try container.encode(DateConverter.toString(date: self.timeCreated!, format: .dateTime), forKey: .timeCreated)
    }
    if self.osType != nil {try container.encode(self.osType, forKey: .osType)}
    try container.encode(self.creationData as! CreationDataData, forKey: .creationData)
    if self.diskSizeGB != nil {try container.encode(self.diskSizeGB, forKey: .diskSizeGB)}
    if self.encryptionSettings != nil {try container.encode(self.encryptionSettings as! EncryptionSettingsData?, forKey: .encryptionSettings)}
    if self.provisioningState != nil {try container.encode(self.provisioningState, forKey: .provisioningState)}
  }
}

extension DataFactory {
  public static func createDiskPropertiesProtocol(creationData: CreationDataProtocol) -> DiskPropertiesProtocol {
    return DiskPropertiesData(creationData: creationData)
  }
}