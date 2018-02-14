// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct AvailableProvidersListParametersData : AvailableProvidersListParametersProtocol {
    public var azureLocations: [String]?
    public var country: String?
    public var state: String?
    public var city: String?

        enum CodingKeys: String, CodingKey {case azureLocations = "azureLocations"
        case country = "country"
        case state = "state"
        case city = "city"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.azureLocations) {
        self.azureLocations = try container.decode([String]?.self, forKey: .azureLocations)
    }
    if container.contains(.country) {
        self.country = try container.decode(String?.self, forKey: .country)
    }
    if container.contains(.state) {
        self.state = try container.decode(String?.self, forKey: .state)
    }
    if container.contains(.city) {
        self.city = try container.decode(String?.self, forKey: .city)
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
    if self.azureLocations != nil {try container.encode(self.azureLocations as! [String]?, forKey: .azureLocations)}
    if self.country != nil {try container.encode(self.country, forKey: .country)}
    if self.state != nil {try container.encode(self.state, forKey: .state)}
    if self.city != nil {try container.encode(self.city, forKey: .city)}
  }
}

extension DataFactory {
  public static func createAvailableProvidersListParametersProtocol() -> AvailableProvidersListParametersProtocol {
    return AvailableProvidersListParametersData()
  }
}