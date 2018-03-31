// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct RestrictionData : RestrictionProtocol {
    public var type: String?
    public var values: [String]?
    public var reasonCode: ReasonCodeEnum?

        enum CodingKeys: String, CodingKey {case type = "type"
        case values = "values"
        case reasonCode = "reasonCode"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.type) {
        self.type = try container.decode(String?.self, forKey: .type)
    }
    if container.contains(.values) {
        self.values = try container.decode([String]?.self, forKey: .values)
    }
    if container.contains(.reasonCode) {
        self.reasonCode = try container.decode(ReasonCodeEnum?.self, forKey: .reasonCode)
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
    if self.type != nil {try container.encode(self.type, forKey: .type)}
    if self.values != nil {try container.encode(self.values as! [String]?, forKey: .values)}
    if self.reasonCode != nil {try container.encode(self.reasonCode, forKey: .reasonCode)}
  }
}

extension DataFactory {
  public static func createRestrictionProtocol() -> RestrictionProtocol {
    return RestrictionData()
  }
}
