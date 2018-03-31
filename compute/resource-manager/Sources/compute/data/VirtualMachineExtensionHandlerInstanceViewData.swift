// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct VirtualMachineExtensionHandlerInstanceViewData : VirtualMachineExtensionHandlerInstanceViewProtocol {
    public var type: String?
    public var typeHandlerVersion: String?
    public var status: InstanceViewStatusProtocol?

        enum CodingKeys: String, CodingKey {case type = "type"
        case typeHandlerVersion = "typeHandlerVersion"
        case status = "status"
        }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.type) {
        self.type = try container.decode(String?.self, forKey: .type)
    }
    if container.contains(.typeHandlerVersion) {
        self.typeHandlerVersion = try container.decode(String?.self, forKey: .typeHandlerVersion)
    }
    if container.contains(.status) {
        self.status = try container.decode(InstanceViewStatusData?.self, forKey: .status)
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
    if self.type != nil { try container.encode(self.type, forKey: .type) }
    if self.typeHandlerVersion != nil { try container.encode(self.typeHandlerVersion, forKey: .typeHandlerVersion) }
    if self.status != nil { try container.encode(self.status as! InstanceViewStatusData?, forKey: .status) }
  }
}

extension DataFactory {
  public static func createVirtualMachineExtensionHandlerInstanceViewProtocol() -> VirtualMachineExtensionHandlerInstanceViewProtocol {
    return VirtualMachineExtensionHandlerInstanceViewData()
  }
}
