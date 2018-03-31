// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct WorkflowPropertiesData : WorkflowPropertiesProtocol {
    public var provisioningState: WorkflowProvisioningStateEnum?
    public var createdTime: Date?
    public var changedTime: Date?
    public var state: WorkflowStateEnum?
    public var version: String?
    public var accessEndpoint: String?
    public var sku: SkuProtocol?
    public var integrationAccount: ResourceReferenceProtocol?
    public var definition: [String: String?]?
    public var parameters: [String:WorkflowParameterProtocol?]?

        enum CodingKeys: String, CodingKey {case provisioningState = "provisioningState"
        case createdTime = "createdTime"
        case changedTime = "changedTime"
        case state = "state"
        case version = "version"
        case accessEndpoint = "accessEndpoint"
        case sku = "sku"
        case integrationAccount = "integrationAccount"
        case definition = "definition"
        case parameters = "parameters"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.provisioningState) {
        self.provisioningState = try container.decode(WorkflowProvisioningStateEnum?.self, forKey: .provisioningState)
    }
    if container.contains(.createdTime) {
        self.createdTime = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .createdTime)), format: .dateTime)
    }
    if container.contains(.changedTime) {
        self.changedTime = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .changedTime)), format: .dateTime)
    }
    if container.contains(.state) {
        self.state = try container.decode(WorkflowStateEnum?.self, forKey: .state)
    }
    if container.contains(.version) {
        self.version = try container.decode(String?.self, forKey: .version)
    }
    if container.contains(.accessEndpoint) {
        self.accessEndpoint = try container.decode(String?.self, forKey: .accessEndpoint)
    }
    if container.contains(.sku) {
        self.sku = try container.decode(SkuData?.self, forKey: .sku)
    }
    if container.contains(.integrationAccount) {
        self.integrationAccount = try container.decode(ResourceReferenceData?.self, forKey: .integrationAccount)
    }
    if container.contains(.definition) {
        self.definition = try container.decode([String: String?]?.self, forKey: .definition)
    }
    if container.contains(.parameters) {
        self.parameters = try container.decode([String:WorkflowParameterData?]?.self, forKey: .parameters)
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
    if self.provisioningState != nil {try container.encode(self.provisioningState, forKey: .provisioningState)}
    if self.createdTime != nil {
        try container.encode(DateConverter.toString(date: self.createdTime!, format: .dateTime), forKey: .createdTime)
    }
    if self.changedTime != nil {
        try container.encode(DateConverter.toString(date: self.changedTime!, format: .dateTime), forKey: .changedTime)
    }
    if self.state != nil {try container.encode(self.state, forKey: .state)}
    if self.version != nil {try container.encode(self.version, forKey: .version)}
    if self.accessEndpoint != nil {try container.encode(self.accessEndpoint, forKey: .accessEndpoint)}
    if self.sku != nil {try container.encode(self.sku as! SkuData?, forKey: .sku)}
    if self.integrationAccount != nil {try container.encode(self.integrationAccount as! ResourceReferenceData?, forKey: .integrationAccount)}
    if self.definition != nil {try container.encode(self.definition, forKey: .definition)}
    if self.parameters != nil {try container.encode(self.parameters, forKey: .parameters)}
  }
}

extension DataFactory {
  public static func createWorkflowPropertiesProtocol() -> WorkflowPropertiesProtocol {
    return WorkflowPropertiesData()
  }
}
