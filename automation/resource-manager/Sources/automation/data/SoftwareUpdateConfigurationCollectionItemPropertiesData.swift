// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct SoftwareUpdateConfigurationCollectionItemPropertiesData : SoftwareUpdateConfigurationCollectionItemPropertiesProtocol {
    public var updateConfiguration: CollectionItemUpdateConfigurationProtocol?
    public var frequency: ScheduleFrequencyEnum?
    public var startTime: Date?
    public var creationTime: Date?
    public var lastModifiedTime: Date?
    public var provisioningState: String?
    public var nextRun: Date?

        enum CodingKeys: String, CodingKey {case updateConfiguration = "updateConfiguration"
        case frequency = "frequency"
        case startTime = "startTime"
        case creationTime = "creationTime"
        case lastModifiedTime = "lastModifiedTime"
        case provisioningState = "provisioningState"
        case nextRun = "nextRun"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.updateConfiguration) {
        self.updateConfiguration = try container.decode(CollectionItemUpdateConfigurationData?.self, forKey: .updateConfiguration)
    }
    if container.contains(.frequency) {
        self.frequency = try container.decode(ScheduleFrequencyEnum?.self, forKey: .frequency)
    }
    if container.contains(.startTime) {
        self.startTime = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .startTime)), format: .dateTime)
    }
    if container.contains(.creationTime) {
        self.creationTime = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .creationTime)), format: .dateTime)
    }
    if container.contains(.lastModifiedTime) {
        self.lastModifiedTime = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .lastModifiedTime)), format: .dateTime)
    }
    if container.contains(.provisioningState) {
        self.provisioningState = try container.decode(String?.self, forKey: .provisioningState)
    }
    if container.contains(.nextRun) {
        self.nextRun = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .nextRun)), format: .dateTime)
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
    if self.updateConfiguration != nil {try container.encode(self.updateConfiguration as! CollectionItemUpdateConfigurationData?, forKey: .updateConfiguration)}
    if self.frequency != nil {try container.encode(self.frequency, forKey: .frequency)}
    if self.startTime != nil {
        try container.encode(DateConverter.toString(date: self.startTime!, format: .dateTime), forKey: .startTime)
    }
    if self.creationTime != nil {
        try container.encode(DateConverter.toString(date: self.creationTime!, format: .dateTime), forKey: .creationTime)
    }
    if self.lastModifiedTime != nil {
        try container.encode(DateConverter.toString(date: self.lastModifiedTime!, format: .dateTime), forKey: .lastModifiedTime)
    }
    if self.provisioningState != nil {try container.encode(self.provisioningState, forKey: .provisioningState)}
    if self.nextRun != nil {
        try container.encode(DateConverter.toString(date: self.nextRun!, format: .dateTime), forKey: .nextRun)
    }
  }
}

extension DataFactory {
  public static func createSoftwareUpdateConfigurationCollectionItemPropertiesProtocol() -> SoftwareUpdateConfigurationCollectionItemPropertiesProtocol {
    return SoftwareUpdateConfigurationCollectionItemPropertiesData()
  }
}
