// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct OriginUpdateParametersData : OriginUpdateParametersProtocol {
    public var properties: OriginPropertiesParametersProtocol?

        enum CodingKeys: String, CodingKey {case properties = "properties"
        }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.properties) {
        self.properties = try container.decode(OriginPropertiesParametersData?.self, forKey: .properties)
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
    if self.properties != nil { try container.encode(self.properties as! OriginPropertiesParametersData?, forKey: .properties) }
  }
}

extension DataFactory {
  public static func createOriginUpdateParametersProtocol() -> OriginUpdateParametersProtocol {
    return OriginUpdateParametersData()
  }
}
