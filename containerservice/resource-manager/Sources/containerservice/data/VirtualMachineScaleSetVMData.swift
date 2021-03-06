// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct VirtualMachineScaleSetVMData : VirtualMachineScaleSetVMProtocol, ResourceProtocol {
    public var id: String?
    public var name: String?
    public var type: String?
    public var location: String
    public var tags: [String:String]?
    public var instanceId: String?
    public var sku: SkuProtocol?
    public var properties: VirtualMachineScaleSetVMPropertiesProtocol?
    public var plan: PlanProtocol?
    public var resources: [VirtualMachineExtensionProtocol?]?

        enum CodingKeys: String, CodingKey {case id = "id"
        case name = "name"
        case type = "type"
        case location = "location"
        case tags = "tags"
        case instanceId = "instanceId"
        case sku = "sku"
        case properties = "properties"
        case plan = "plan"
        case resources = "resources"
        }

  public init(location: String)  {
    self.location = location
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.id) {
        self.id = try container.decode(String?.self, forKey: .id)
    }
    if container.contains(.name) {
        self.name = try container.decode(String?.self, forKey: .name)
    }
    if container.contains(.type) {
        self.type = try container.decode(String?.self, forKey: .type)
    }
    self.location = try container.decode(String.self, forKey: .location)
    if container.contains(.tags) {
        self.tags = try container.decode([String:String]?.self, forKey: .tags)
    }
    if container.contains(.instanceId) {
        self.instanceId = try container.decode(String?.self, forKey: .instanceId)
    }
    if container.contains(.sku) {
        self.sku = try container.decode(SkuData?.self, forKey: .sku)
    }
    if container.contains(.properties) {
        self.properties = try container.decode(VirtualMachineScaleSetVMPropertiesData?.self, forKey: .properties)
    }
    if container.contains(.plan) {
        self.plan = try container.decode(PlanData?.self, forKey: .plan)
    }
    if container.contains(.resources) {
        self.resources = try container.decode([VirtualMachineExtensionData?]?.self, forKey: .resources)
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
    if self.id != nil {try container.encode(self.id, forKey: .id)}
    if self.name != nil {try container.encode(self.name, forKey: .name)}
    if self.type != nil {try container.encode(self.type, forKey: .type)}
    try container.encode(self.location, forKey: .location)
    if self.tags != nil {try container.encode(self.tags, forKey: .tags)}
    if self.instanceId != nil {try container.encode(self.instanceId, forKey: .instanceId)}
    if self.sku != nil {try container.encode(self.sku as! SkuData?, forKey: .sku)}
    if self.properties != nil {try container.encode(self.properties as! VirtualMachineScaleSetVMPropertiesData?, forKey: .properties)}
    if self.plan != nil {try container.encode(self.plan as! PlanData?, forKey: .plan)}
    if self.resources != nil {try container.encode(self.resources as! [VirtualMachineExtensionData?]?, forKey: .resources)}
  }
}

extension DataFactory {
  public static func createVirtualMachineScaleSetVMProtocol(location: String) -> VirtualMachineScaleSetVMProtocol {
    return VirtualMachineScaleSetVMData(location: location)
  }
}
