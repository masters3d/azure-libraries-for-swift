// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct OperationData : OperationProtocol {
    public var name: String?
    public var display: OperationDisplayProtocol?
    public var origin: String?
    public var properties: [String: String?]?

        enum CodingKeys: String, CodingKey {case name = "name"
        case display = "display"
        case origin = "origin"
        case properties = "properties"
        }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.name) {
        self.name = try container.decode(String?.self, forKey: .name)
    }
    if container.contains(.display) {
        self.display = try container.decode(OperationDisplayData?.self, forKey: .display)
    }
    if container.contains(.origin) {
        self.origin = try container.decode(String?.self, forKey: .origin)
    }
    if container.contains(.properties) {
        self.properties = try container.decode([String: String?]?.self, forKey: .properties)
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
    if self.name != nil { try container.encode(self.name, forKey: .name) }
    if self.display != nil { try container.encode(self.display as! OperationDisplayData?, forKey: .display) }
    if self.origin != nil { try container.encode(self.origin, forKey: .origin) }
    if self.properties != nil { try container.encode(self.properties, forKey: .properties) }
  }
}

extension DataFactory {
  public static func createOperationProtocol() -> OperationProtocol {
    return OperationData()
  }
}
