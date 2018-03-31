// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct CollectionItemUpdateConfigurationData : CollectionItemUpdateConfigurationProtocol {
    public var azureVirtualMachines: [String]?
    public var duration: String?

        enum CodingKeys: String, CodingKey {case azureVirtualMachines = "azureVirtualMachines"
        case duration = "duration"
        }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.azureVirtualMachines) {
        self.azureVirtualMachines = try container.decode([String]?.self, forKey: .azureVirtualMachines)
    }
    if container.contains(.duration) {
        self.duration = try container.decode(String?.self, forKey: .duration)
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
    if self.azureVirtualMachines != nil { try container.encode(self.azureVirtualMachines as! [String]?, forKey: .azureVirtualMachines) }
    if self.duration != nil { try container.encode(self.duration, forKey: .duration) }
  }
}

extension DataFactory {
  public static func createCollectionItemUpdateConfigurationProtocol() -> CollectionItemUpdateConfigurationProtocol {
    return CollectionItemUpdateConfigurationData()
  }
}
