// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct HyperVVirtualMachineDetailsData : HyperVVirtualMachineDetailsProtocol, ConfigurationSettingsProtocol {
    public var sourceItemId: String?
    public var generation: String?
    public var osDetails: OSDetailsProtocol?
    public var diskDetails: [DiskDetailsProtocol?]?
    public var hasPhysicalDisk: Bool?
    public var hasFibreChannelAdapter: Bool?
    public var hasSharedVhd: Bool?

        enum CodingKeys: String, CodingKey {case sourceItemId = "sourceItemId"
        case generation = "generation"
        case osDetails = "osDetails"
        case diskDetails = "diskDetails"
        case hasPhysicalDisk = "hasPhysicalDisk"
        case hasFibreChannelAdapter = "hasFibreChannelAdapter"
        case hasSharedVhd = "hasSharedVhd"
        }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.sourceItemId) {
        self.sourceItemId = try container.decode(String?.self, forKey: .sourceItemId)
    }
    if container.contains(.generation) {
        self.generation = try container.decode(String?.self, forKey: .generation)
    }
    if container.contains(.osDetails) {
        self.osDetails = try container.decode(OSDetailsData?.self, forKey: .osDetails)
    }
    if container.contains(.diskDetails) {
        self.diskDetails = try container.decode([DiskDetailsData?]?.self, forKey: .diskDetails)
    }
    if container.contains(.hasPhysicalDisk) {
        self.hasPhysicalDisk = try container.decode(Bool?.self, forKey: .hasPhysicalDisk)
    }
    if container.contains(.hasFibreChannelAdapter) {
        self.hasFibreChannelAdapter = try container.decode(Bool?.self, forKey: .hasFibreChannelAdapter)
    }
    if container.contains(.hasSharedVhd) {
        self.hasSharedVhd = try container.decode(Bool?.self, forKey: .hasSharedVhd)
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
    if self.sourceItemId != nil { try container.encode(self.sourceItemId, forKey: .sourceItemId) }
    if self.generation != nil { try container.encode(self.generation, forKey: .generation) }
    if self.osDetails != nil { try container.encode(self.osDetails as! OSDetailsData?, forKey: .osDetails) }
    if self.diskDetails != nil { try container.encode(self.diskDetails as! [DiskDetailsData?]?, forKey: .diskDetails) }
    if self.hasPhysicalDisk != nil { try container.encode(self.hasPhysicalDisk, forKey: .hasPhysicalDisk) }
    if self.hasFibreChannelAdapter != nil { try container.encode(self.hasFibreChannelAdapter, forKey: .hasFibreChannelAdapter) }
    if self.hasSharedVhd != nil { try container.encode(self.hasSharedVhd, forKey: .hasSharedVhd) }
  }
}

extension DataFactory {
  public static func createHyperVVirtualMachineDetailsProtocol() -> HyperVVirtualMachineDetailsProtocol {
    return HyperVVirtualMachineDetailsData()
  }
}
