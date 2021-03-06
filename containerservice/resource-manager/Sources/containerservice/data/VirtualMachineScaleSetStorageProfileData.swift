// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct VirtualMachineScaleSetStorageProfileData : VirtualMachineScaleSetStorageProfileProtocol {
    public var imageReference: ImageReferenceProtocol?
    public var osDisk: VirtualMachineScaleSetOSDiskProtocol?
    public var dataDisks: [VirtualMachineScaleSetDataDiskProtocol?]?

        enum CodingKeys: String, CodingKey {case imageReference = "imageReference"
        case osDisk = "osDisk"
        case dataDisks = "dataDisks"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.imageReference) {
        self.imageReference = try container.decode(ImageReferenceData?.self, forKey: .imageReference)
    }
    if container.contains(.osDisk) {
        self.osDisk = try container.decode(VirtualMachineScaleSetOSDiskData?.self, forKey: .osDisk)
    }
    if container.contains(.dataDisks) {
        self.dataDisks = try container.decode([VirtualMachineScaleSetDataDiskData?]?.self, forKey: .dataDisks)
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
    if self.imageReference != nil {try container.encode(self.imageReference as! ImageReferenceData?, forKey: .imageReference)}
    if self.osDisk != nil {try container.encode(self.osDisk as! VirtualMachineScaleSetOSDiskData?, forKey: .osDisk)}
    if self.dataDisks != nil {try container.encode(self.dataDisks as! [VirtualMachineScaleSetDataDiskData?]?, forKey: .dataDisks)}
  }
}

extension DataFactory {
  public static func createVirtualMachineScaleSetStorageProfileProtocol() -> VirtualMachineScaleSetStorageProfileProtocol {
    return VirtualMachineScaleSetStorageProfileData()
  }
}
