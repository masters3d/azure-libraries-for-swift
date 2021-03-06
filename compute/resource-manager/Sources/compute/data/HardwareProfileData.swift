// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct HardwareProfileData : HardwareProfileProtocol {
    public var vmSize: VirtualMachineSizeTypesEnum?

        enum CodingKeys: String, CodingKey {case vmSize = "vmSize"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.vmSize) {
        self.vmSize = try container.decode(VirtualMachineSizeTypesEnum?.self, forKey: .vmSize)
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
    if self.vmSize != nil {try container.encode(self.vmSize, forKey: .vmSize)}
  }
}

extension DataFactory {
  public static func createHardwareProfileProtocol() -> HardwareProfileProtocol {
    return HardwareProfileData()
  }
}
