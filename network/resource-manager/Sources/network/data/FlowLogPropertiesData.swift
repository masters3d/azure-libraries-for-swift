// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct FlowLogPropertiesData : FlowLogPropertiesProtocol {
    public var storageId: String
    public var enabled: Bool
    public var retentionPolicy: RetentionPolicyParametersProtocol?

        enum CodingKeys: String, CodingKey {case storageId = "storageId"
        case enabled = "enabled"
        case retentionPolicy = "retentionPolicy"
        }

  public init(storageId: String, enabled: Bool)  {
    self.storageId = storageId
    self.enabled = enabled
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.storageId = try container.decode(String.self, forKey: .storageId)
    self.enabled = try container.decode(Bool.self, forKey: .enabled)
    if container.contains(.retentionPolicy) {
        self.retentionPolicy = try container.decode(RetentionPolicyParametersData?.self, forKey: .retentionPolicy)
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
    try container.encode(self.storageId, forKey: .storageId)
    try container.encode(self.enabled, forKey: .enabled)
    if self.retentionPolicy != nil {try container.encode(self.retentionPolicy as! RetentionPolicyParametersData?, forKey: .retentionPolicy)}
  }
}

extension DataFactory {
  public static func createFlowLogPropertiesProtocol(storageId: String, enabled: Bool) -> FlowLogPropertiesProtocol {
    return FlowLogPropertiesData(storageId: storageId, enabled: enabled)
  }
}
