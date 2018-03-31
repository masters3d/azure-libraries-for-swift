// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct VirtualMachineConfigurationData : VirtualMachineConfigurationProtocol {
    public var imageReference: ImageReferenceProtocol
    public var osDisk: OSDiskProtocol?
    public var nodeAgentSkuId: String
    public var windowsConfiguration: WindowsConfigurationProtocol?
    public var dataDisks: [DataDiskProtocol?]?
    public var licenseType: String?

        enum CodingKeys: String, CodingKey {case imageReference = "imageReference"
        case osDisk = "osDisk"
        case nodeAgentSkuId = "nodeAgentSkuId"
        case windowsConfiguration = "windowsConfiguration"
        case dataDisks = "dataDisks"
        case licenseType = "licenseType"
        }

  public init(imageReference: ImageReferenceProtocol, nodeAgentSkuId: String) {
    self.imageReference = imageReference
    self.nodeAgentSkuId = nodeAgentSkuId
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.imageReference = try container.decode(ImageReferenceData.self, forKey: .imageReference)
    if container.contains(.osDisk) {
        self.osDisk = try container.decode(OSDiskData?.self, forKey: .osDisk)
    }
    self.nodeAgentSkuId = try container.decode(String.self, forKey: .nodeAgentSkuId)
    if container.contains(.windowsConfiguration) {
        self.windowsConfiguration = try container.decode(WindowsConfigurationData?.self, forKey: .windowsConfiguration)
    }
    if container.contains(.dataDisks) {
        self.dataDisks = try container.decode([DataDiskData?]?.self, forKey: .dataDisks)
    }
    if container.contains(.licenseType) {
        self.licenseType = try container.decode(String?.self, forKey: .licenseType)
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
    try container.encode(self.imageReference as! ImageReferenceData, forKey: .imageReference)
    if self.osDisk != nil { try container.encode(self.osDisk as! OSDiskData?, forKey: .osDisk) }
    try container.encode(self.nodeAgentSkuId, forKey: .nodeAgentSkuId)
    if self.windowsConfiguration != nil { try container.encode(self.windowsConfiguration as! WindowsConfigurationData?, forKey: .windowsConfiguration) }
    if self.dataDisks != nil { try container.encode(self.dataDisks as! [DataDiskData?]?, forKey: .dataDisks) }
    if self.licenseType != nil { try container.encode(self.licenseType, forKey: .licenseType) }
  }
}

extension DataFactory {
  public static func createVirtualMachineConfigurationProtocol(imageReference: ImageReferenceProtocol, nodeAgentSkuId: String) -> VirtualMachineConfigurationProtocol {
    return VirtualMachineConfigurationData(imageReference: imageReference, nodeAgentSkuId: nodeAgentSkuId)
  }
}
