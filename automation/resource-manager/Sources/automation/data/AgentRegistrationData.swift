// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct AgentRegistrationData : AgentRegistrationProtocol {
    public var dscMetaConfiguration: String?
    public var endpoint: String?
    public var keys: AgentRegistrationKeysProtocol?
    public var id: String?

        enum CodingKeys: String, CodingKey {case dscMetaConfiguration = "dscMetaConfiguration"
        case endpoint = "endpoint"
        case keys = "keys"
        case id = "id"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.dscMetaConfiguration) {
        self.dscMetaConfiguration = try container.decode(String?.self, forKey: .dscMetaConfiguration)
    }
    if container.contains(.endpoint) {
        self.endpoint = try container.decode(String?.self, forKey: .endpoint)
    }
    if container.contains(.keys) {
        self.keys = try container.decode(AgentRegistrationKeysData?.self, forKey: .keys)
    }
    if container.contains(.id) {
        self.id = try container.decode(String?.self, forKey: .id)
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
    if self.dscMetaConfiguration != nil {try container.encode(self.dscMetaConfiguration, forKey: .dscMetaConfiguration)}
    if self.endpoint != nil {try container.encode(self.endpoint, forKey: .endpoint)}
    if self.keys != nil {try container.encode(self.keys as! AgentRegistrationKeysData?, forKey: .keys)}
    if self.id != nil {try container.encode(self.id, forKey: .id)}
  }
}

extension DataFactory {
  public static func createAgentRegistrationProtocol() -> AgentRegistrationProtocol {
    return AgentRegistrationData()
  }
}
