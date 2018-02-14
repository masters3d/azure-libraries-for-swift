// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct VirtualMachineScaleSetVMInstanceRequiredIDsData : VirtualMachineScaleSetVMInstanceRequiredIDsProtocol {
    public var instanceIds: [String]

        enum CodingKeys: String, CodingKey {case instanceIds = "instanceIds"
        }

  public init(instanceIds: [String])  {
    self.instanceIds = instanceIds
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.instanceIds = try container.decode([String].self, forKey: .instanceIds)
    if var pageDecoder = decoder as? PageDecoder  {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(self.instanceIds as! [String], forKey: .instanceIds)
  }
}

extension DataFactory {
  public static func createVirtualMachineScaleSetVMInstanceRequiredIDsProtocol(instanceIds: [String]) -> VirtualMachineScaleSetVMInstanceRequiredIDsProtocol {
    return VirtualMachineScaleSetVMInstanceRequiredIDsData(instanceIds: instanceIds)
  }
}
