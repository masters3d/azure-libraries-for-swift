// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct CheckSkuAvailabilityResultData : CheckSkuAvailabilityResultProtocol {
    public var kind: KindEnum?
    public var type: String?
    public var skuName: SkuNameEnum?
    public var skuAvailable: Bool?
    public var reason: String?
    public var message: String?

        enum CodingKeys: String, CodingKey {case kind = "kind"
        case type = "type"
        case skuName = "skuName"
        case skuAvailable = "skuAvailable"
        case reason = "reason"
        case message = "message"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.kind) {
        self.kind = try container.decode(KindEnum?.self, forKey: .kind)
    }
    if container.contains(.type) {
        self.type = try container.decode(String?.self, forKey: .type)
    }
    if container.contains(.skuName) {
        self.skuName = try container.decode(SkuNameEnum?.self, forKey: .skuName)
    }
    if container.contains(.skuAvailable) {
        self.skuAvailable = try container.decode(Bool?.self, forKey: .skuAvailable)
    }
    if container.contains(.reason) {
        self.reason = try container.decode(String?.self, forKey: .reason)
    }
    if container.contains(.message) {
        self.message = try container.decode(String?.self, forKey: .message)
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
    if self.kind != nil {try container.encode(self.kind, forKey: .kind)}
    if self.type != nil {try container.encode(self.type, forKey: .type)}
    if self.skuName != nil {try container.encode(self.skuName, forKey: .skuName)}
    if self.skuAvailable != nil {try container.encode(self.skuAvailable, forKey: .skuAvailable)}
    if self.reason != nil {try container.encode(self.reason, forKey: .reason)}
    if self.message != nil {try container.encode(self.message, forKey: .message)}
  }
}

extension DataFactory {
  public static func createCheckSkuAvailabilityResultProtocol() -> CheckSkuAvailabilityResultProtocol {
    return CheckSkuAvailabilityResultData()
  }
}
