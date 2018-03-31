// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct VirtualMachineAgentInstanceViewData : VirtualMachineAgentInstanceViewProtocol {
    public var vmAgentVersion: String?
    public var extensionHandlers: [VirtualMachineExtensionHandlerInstanceViewProtocol?]?
    public var statuses: [InstanceViewStatusProtocol?]?

        enum CodingKeys: String, CodingKey {case vmAgentVersion = "vmAgentVersion"
        case extensionHandlers = "extensionHandlers"
        case statuses = "statuses"
        }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.vmAgentVersion) {
        self.vmAgentVersion = try container.decode(String?.self, forKey: .vmAgentVersion)
    }
    if container.contains(.extensionHandlers) {
        self.extensionHandlers = try container.decode([VirtualMachineExtensionHandlerInstanceViewData?]?.self, forKey: .extensionHandlers)
    }
    if container.contains(.statuses) {
        self.statuses = try container.decode([InstanceViewStatusData?]?.self, forKey: .statuses)
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
    if self.vmAgentVersion != nil { try container.encode(self.vmAgentVersion, forKey: .vmAgentVersion) }
    if self.extensionHandlers != nil { try container.encode(self.extensionHandlers as! [VirtualMachineExtensionHandlerInstanceViewData?]?, forKey: .extensionHandlers) }
    if self.statuses != nil { try container.encode(self.statuses as! [InstanceViewStatusData?]?, forKey: .statuses) }
  }
}

extension DataFactory {
  public static func createVirtualMachineAgentInstanceViewProtocol() -> VirtualMachineAgentInstanceViewProtocol {
    return VirtualMachineAgentInstanceViewData()
  }
}
