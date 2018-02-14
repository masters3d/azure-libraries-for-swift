// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ConnectorMappingPropertiesData : ConnectorMappingPropertiesProtocol {
    public var folderPath: String?
    public var fileFilter: String?
    public var hasHeader: Bool?
    public var errorManagement: ConnectorMappingErrorManagementProtocol
    public var format: ConnectorMappingFormatProtocol
    public var availability: ConnectorMappingAvailabilityProtocol
    public var structure: [ConnectorMappingStructureProtocol]
    public var completeOperation: ConnectorMappingCompleteOperationProtocol

        enum CodingKeys: String, CodingKey {case folderPath = "folderPath"
        case fileFilter = "fileFilter"
        case hasHeader = "hasHeader"
        case errorManagement = "errorManagement"
        case format = "format"
        case availability = "availability"
        case structure = "structure"
        case completeOperation = "completeOperation"
        }

  public init(errorManagement: ConnectorMappingErrorManagementProtocol, format: ConnectorMappingFormatProtocol, availability: ConnectorMappingAvailabilityProtocol, structure: [ConnectorMappingStructureProtocol], completeOperation: ConnectorMappingCompleteOperationProtocol)  {
    self.errorManagement = errorManagement
    self.format = format
    self.availability = availability
    self.structure = structure
    self.completeOperation = completeOperation
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.folderPath) {
        self.folderPath = try container.decode(String?.self, forKey: .folderPath)
    }
    if container.contains(.fileFilter) {
        self.fileFilter = try container.decode(String?.self, forKey: .fileFilter)
    }
    if container.contains(.hasHeader) {
        self.hasHeader = try container.decode(Bool?.self, forKey: .hasHeader)
    }
    self.errorManagement = try container.decode(ConnectorMappingErrorManagementData.self, forKey: .errorManagement)
    self.format = try container.decode(ConnectorMappingFormatData.self, forKey: .format)
    self.availability = try container.decode(ConnectorMappingAvailabilityData.self, forKey: .availability)
    self.structure = try container.decode([ConnectorMappingStructureData].self, forKey: .structure)
    self.completeOperation = try container.decode(ConnectorMappingCompleteOperationData.self, forKey: .completeOperation)
    if var pageDecoder = decoder as? PageDecoder  {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    if self.folderPath != nil {try container.encode(self.folderPath, forKey: .folderPath)}
    if self.fileFilter != nil {try container.encode(self.fileFilter, forKey: .fileFilter)}
    if self.hasHeader != nil {try container.encode(self.hasHeader, forKey: .hasHeader)}
    try container.encode(self.errorManagement as! ConnectorMappingErrorManagementData, forKey: .errorManagement)
    try container.encode(self.format as! ConnectorMappingFormatData, forKey: .format)
    try container.encode(self.availability as! ConnectorMappingAvailabilityData, forKey: .availability)
    try container.encode(self.structure as! [ConnectorMappingStructureData], forKey: .structure)
    try container.encode(self.completeOperation as! ConnectorMappingCompleteOperationData, forKey: .completeOperation)
  }
}

extension DataFactory {
  public static func createConnectorMappingPropertiesProtocol(errorManagement: ConnectorMappingErrorManagementProtocol, format: ConnectorMappingFormatProtocol, availability: ConnectorMappingAvailabilityProtocol, structure: [ConnectorMappingStructureProtocol], completeOperation: ConnectorMappingCompleteOperationProtocol) -> ConnectorMappingPropertiesProtocol {
    return ConnectorMappingPropertiesData(errorManagement: errorManagement, format: format, availability: availability, structure: structure, completeOperation: completeOperation)
  }
}
