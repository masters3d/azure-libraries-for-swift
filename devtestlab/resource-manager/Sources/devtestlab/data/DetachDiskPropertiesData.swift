// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct DetachDiskPropertiesData : DetachDiskPropertiesProtocol {
    public var leasedByLabVmId: String?

        enum CodingKeys: String, CodingKey {case leasedByLabVmId = "leasedByLabVmId"
        }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.leasedByLabVmId) {
        self.leasedByLabVmId = try container.decode(String?.self, forKey: .leasedByLabVmId)
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
    if self.leasedByLabVmId != nil { try container.encode(self.leasedByLabVmId, forKey: .leasedByLabVmId) }
  }
}

extension DataFactory {
  public static func createDetachDiskPropertiesProtocol() -> DetachDiskPropertiesProtocol {
    return DetachDiskPropertiesData()
  }
}
