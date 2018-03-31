// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct RestorePointPropertiesData : RestorePointPropertiesProtocol {
    public var restorePointType: RestorePointTypeEnum?
    public var earliestRestoreDate: Date?
    public var restorePointCreationDate: Date?
    public var restorePointLabel: String?

        enum CodingKeys: String, CodingKey {case restorePointType = "restorePointType"
        case earliestRestoreDate = "earliestRestoreDate"
        case restorePointCreationDate = "restorePointCreationDate"
        case restorePointLabel = "restorePointLabel"
        }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.restorePointType) {
        self.restorePointType = try container.decode(RestorePointTypeEnum?.self, forKey: .restorePointType)
    }
    if container.contains(.earliestRestoreDate) {
        self.earliestRestoreDate = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .earliestRestoreDate)), format: .dateTime)
    }
    if container.contains(.restorePointCreationDate) {
        self.restorePointCreationDate = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .restorePointCreationDate)), format: .dateTime)
    }
    if container.contains(.restorePointLabel) {
        self.restorePointLabel = try container.decode(String?.self, forKey: .restorePointLabel)
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
    if self.restorePointType != nil { try container.encode(self.restorePointType, forKey: .restorePointType) }
    if self.earliestRestoreDate != nil {
        try container.encode(DateConverter.toString(date: self.earliestRestoreDate!, format: .dateTime), forKey: .earliestRestoreDate)
    }
    if self.restorePointCreationDate != nil {
        try container.encode(DateConverter.toString(date: self.restorePointCreationDate!, format: .dateTime), forKey: .restorePointCreationDate)
    }
    if self.restorePointLabel != nil { try container.encode(self.restorePointLabel, forKey: .restorePointLabel) }
  }
}

extension DataFactory {
  public static func createRestorePointPropertiesProtocol() -> RestorePointPropertiesProtocol {
    return RestorePointPropertiesData()
  }
}
