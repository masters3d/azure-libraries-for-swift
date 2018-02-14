// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct VirtualMachineScaleSetUpdateData : VirtualMachineScaleSetUpdateProtocol, UpdateResourceProtocol {
    public var tags: [String:String]?
    public var sku: SkuProtocol?
    public var plan: PlanProtocol?
    public var properties: VirtualMachineScaleSetUpdatePropertiesProtocol?
    public var identity: VirtualMachineScaleSetIdentityProtocol?

        enum CodingKeys: String, CodingKey {case tags = "tags"
        case sku = "sku"
        case plan = "plan"
        case properties = "properties"
        case identity = "identity"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.tags) {
        self.tags = try container.decode([String:String]?.self, forKey: .tags)
    }
    if container.contains(.sku) {
        self.sku = try container.decode(SkuData?.self, forKey: .sku)
    }
    if container.contains(.plan) {
        self.plan = try container.decode(PlanData?.self, forKey: .plan)
    }
    if container.contains(.properties) {
        self.properties = try container.decode(VirtualMachineScaleSetUpdatePropertiesData?.self, forKey: .properties)
    }
    if container.contains(.identity) {
        self.identity = try container.decode(VirtualMachineScaleSetIdentityData?.self, forKey: .identity)
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
    if self.tags != nil {try container.encode(self.tags, forKey: .tags)}
    if self.sku != nil {try container.encode(self.sku as! SkuData?, forKey: .sku)}
    if self.plan != nil {try container.encode(self.plan as! PlanData?, forKey: .plan)}
    if self.properties != nil {try container.encode(self.properties as! VirtualMachineScaleSetUpdatePropertiesData?, forKey: .properties)}
    if self.identity != nil {try container.encode(self.identity as! VirtualMachineScaleSetIdentityData?, forKey: .identity)}
  }
}

extension DataFactory {
  public static func createVirtualMachineScaleSetUpdateProtocol() -> VirtualMachineScaleSetUpdateProtocol {
    return VirtualMachineScaleSetUpdateData()
  }
}