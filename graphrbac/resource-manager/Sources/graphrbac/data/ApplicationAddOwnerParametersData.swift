// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ApplicationAddOwnerParametersData : ApplicationAddOwnerParametersProtocol {
    public var additionalProperties: [String:[String: String?]]?
    public var url: String

        enum CodingKeys: String, CodingKey {case additionalProperties = ""
        case url = "url"
        }

  public init(url: String)  {
    self.url = url
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.additionalProperties) {
        self.additionalProperties = try container.decode([String:[String: String?]]?.self, forKey: .additionalProperties)
    }
    self.url = try container.decode(String.self, forKey: .url)
    if var pageDecoder = decoder as? PageDecoder  {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    if self.additionalProperties != nil {try container.encode(self.additionalProperties, forKey: .additionalProperties)}
    try container.encode(self.url, forKey: .url)
  }
}

extension DataFactory {
  public static func createApplicationAddOwnerParametersProtocol(url: String) -> ApplicationAddOwnerParametersProtocol {
    return ApplicationAddOwnerParametersData(url: url)
  }
}
