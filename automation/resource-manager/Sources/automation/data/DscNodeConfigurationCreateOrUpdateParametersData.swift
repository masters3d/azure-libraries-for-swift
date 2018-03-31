// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct DscNodeConfigurationCreateOrUpdateParametersData : DscNodeConfigurationCreateOrUpdateParametersProtocol {
    public var source: ContentSourceProtocol
    public var name: String
    public var configuration: DscConfigurationAssociationPropertyProtocol
    public var newNodeConfigurationBuildVersionRequired: Bool?

        enum CodingKeys: String, CodingKey {case source = "source"
        case name = "name"
        case configuration = "configuration"
        case newNodeConfigurationBuildVersionRequired = "newNodeConfigurationBuildVersionRequired"
        }

  public init(source: ContentSourceProtocol, name: String, configuration: DscConfigurationAssociationPropertyProtocol)  {
    self.source = source
    self.name = name
    self.configuration = configuration
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.source = try container.decode(ContentSourceData.self, forKey: .source)
    self.name = try container.decode(String.self, forKey: .name)
    self.configuration = try container.decode(DscConfigurationAssociationPropertyData.self, forKey: .configuration)
    if container.contains(.newNodeConfigurationBuildVersionRequired) {
        self.newNodeConfigurationBuildVersionRequired = try container.decode(Bool?.self, forKey: .newNodeConfigurationBuildVersionRequired)
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
    try container.encode(self.source as! ContentSourceData, forKey: .source)
    try container.encode(self.name, forKey: .name)
    try container.encode(self.configuration as! DscConfigurationAssociationPropertyData, forKey: .configuration)
    if self.newNodeConfigurationBuildVersionRequired != nil {try container.encode(self.newNodeConfigurationBuildVersionRequired, forKey: .newNodeConfigurationBuildVersionRequired)}
  }
}

extension DataFactory {
  public static func createDscNodeConfigurationCreateOrUpdateParametersProtocol(source: ContentSourceProtocol, name: String, configuration: DscConfigurationAssociationPropertyProtocol) -> DscNodeConfigurationCreateOrUpdateParametersProtocol {
    return DscNodeConfigurationCreateOrUpdateParametersData(source: source, name: name, configuration: configuration)
  }
}
