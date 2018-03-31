// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct InboundNatRuleData : InboundNatRuleProtocol, SubResourceProtocol {
    public var id: String?
    public var properties: InboundNatRulePropertiesFormatProtocol?
    public var name: String?
    public var etag: String?

        enum CodingKeys: String, CodingKey {case id = "id"
        case properties = "properties"
        case name = "name"
        case etag = "etag"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.id) {
        self.id = try container.decode(String?.self, forKey: .id)
    }
    if container.contains(.properties) {
        self.properties = try container.decode(InboundNatRulePropertiesFormatData?.self, forKey: .properties)
    }
    if container.contains(.name) {
        self.name = try container.decode(String?.self, forKey: .name)
    }
    if container.contains(.etag) {
        self.etag = try container.decode(String?.self, forKey: .etag)
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
    if self.id != nil {try container.encode(self.id, forKey: .id)}
    if self.properties != nil {try container.encode(self.properties as! InboundNatRulePropertiesFormatData?, forKey: .properties)}
    if self.name != nil {try container.encode(self.name, forKey: .name)}
    if self.etag != nil {try container.encode(self.etag, forKey: .etag)}
  }
}

extension DataFactory {
  public static func createInboundNatRuleProtocol() -> InboundNatRuleProtocol {
    return InboundNatRuleData()
  }
}
