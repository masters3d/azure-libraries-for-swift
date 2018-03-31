// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct VirtualMachineCaptureParametersData : VirtualMachineCaptureParametersProtocol {
    public var vhdPrefix: String
    public var destinationContainerName: String
    public var overwriteVhds: Bool

        enum CodingKeys: String, CodingKey {case vhdPrefix = "vhdPrefix"
        case destinationContainerName = "destinationContainerName"
        case overwriteVhds = "overwriteVhds"
        }

  public init(vhdPrefix: String, destinationContainerName: String, overwriteVhds: Bool) {
    self.vhdPrefix = vhdPrefix
    self.destinationContainerName = destinationContainerName
    self.overwriteVhds = overwriteVhds
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.vhdPrefix = try container.decode(String.self, forKey: .vhdPrefix)
    self.destinationContainerName = try container.decode(String.self, forKey: .destinationContainerName)
    self.overwriteVhds = try container.decode(Bool.self, forKey: .overwriteVhds)
    if var pageDecoder = decoder as? PageDecoder {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(self.vhdPrefix, forKey: .vhdPrefix)
    try container.encode(self.destinationContainerName, forKey: .destinationContainerName)
    try container.encode(self.overwriteVhds, forKey: .overwriteVhds)
  }
}

extension DataFactory {
  public static func createVirtualMachineCaptureParametersProtocol(vhdPrefix: String, destinationContainerName: String, overwriteVhds: Bool) -> VirtualMachineCaptureParametersProtocol {
    return VirtualMachineCaptureParametersData(vhdPrefix: vhdPrefix, destinationContainerName: destinationContainerName, overwriteVhds: overwriteVhds)
  }
}
