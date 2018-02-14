// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ApplicationUpdatePropertiesData : ApplicationUpdatePropertiesProtocol {
    public var typeVersion: String?
    public var parameters: [ApplicationParameterProtocol?]?
    public var upgradePolicy: ApplicationUpgradePolicyProtocol?
    public var minimumNodes: Int64?
    public var maximumNodes: Int64?
    public var removeApplicationCapacity: Bool?
    public var metrics: [ApplicationMetricDescriptionProtocol?]?

        enum CodingKeys: String, CodingKey {case typeVersion = "typeVersion"
        case parameters = "parameters"
        case upgradePolicy = "upgradePolicy"
        case minimumNodes = "minimumNodes"
        case maximumNodes = "maximumNodes"
        case removeApplicationCapacity = "removeApplicationCapacity"
        case metrics = "metrics"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.typeVersion) {
        self.typeVersion = try container.decode(String?.self, forKey: .typeVersion)
    }
    if container.contains(.parameters) {
        self.parameters = try container.decode([ApplicationParameterData?]?.self, forKey: .parameters)
    }
    if container.contains(.upgradePolicy) {
        self.upgradePolicy = try container.decode(ApplicationUpgradePolicyData?.self, forKey: .upgradePolicy)
    }
    if container.contains(.minimumNodes) {
        self.minimumNodes = try container.decode(Int64?.self, forKey: .minimumNodes)
    }
    if container.contains(.maximumNodes) {
        self.maximumNodes = try container.decode(Int64?.self, forKey: .maximumNodes)
    }
    if container.contains(.removeApplicationCapacity) {
        self.removeApplicationCapacity = try container.decode(Bool?.self, forKey: .removeApplicationCapacity)
    }
    if container.contains(.metrics) {
        self.metrics = try container.decode([ApplicationMetricDescriptionData?]?.self, forKey: .metrics)
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
    if self.typeVersion != nil {try container.encode(self.typeVersion, forKey: .typeVersion)}
    if self.parameters != nil {try container.encode(self.parameters as! [ApplicationParameterData?]?, forKey: .parameters)}
    if self.upgradePolicy != nil {try container.encode(self.upgradePolicy as! ApplicationUpgradePolicyData?, forKey: .upgradePolicy)}
    if self.minimumNodes != nil {try container.encode(self.minimumNodes, forKey: .minimumNodes)}
    if self.maximumNodes != nil {try container.encode(self.maximumNodes, forKey: .maximumNodes)}
    if self.removeApplicationCapacity != nil {try container.encode(self.removeApplicationCapacity, forKey: .removeApplicationCapacity)}
    if self.metrics != nil {try container.encode(self.metrics as! [ApplicationMetricDescriptionData?]?, forKey: .metrics)}
  }
}

extension DataFactory {
  public static func createApplicationUpdatePropertiesProtocol() -> ApplicationUpdatePropertiesProtocol {
    return ApplicationUpdatePropertiesData()
  }
}
