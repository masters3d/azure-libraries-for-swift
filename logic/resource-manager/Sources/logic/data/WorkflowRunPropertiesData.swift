// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct WorkflowRunPropertiesData : WorkflowRunPropertiesProtocol {
    public var startTime: Date?
    public var endTime: Date?
    public var status: WorkflowStatusEnum?
    public var code: String?
    public var error: [String: String?]?
    public var correlationId: String?
    public var correlation: CorrelationProtocol?
    public var workflow: ResourceReferenceProtocol?
    public var trigger: WorkflowRunTriggerProtocol?
    public var outputs: [String:WorkflowOutputParameterProtocol?]?
    public var response: WorkflowRunTriggerProtocol?

        enum CodingKeys: String, CodingKey {case startTime = "startTime"
        case endTime = "endTime"
        case status = "status"
        case code = "code"
        case error = "error"
        case correlationId = "correlationId"
        case correlation = "correlation"
        case workflow = "workflow"
        case trigger = "trigger"
        case outputs = "outputs"
        case response = "response"
        }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.startTime) {
        self.startTime = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .startTime)), format: .dateTime)
    }
    if container.contains(.endTime) {
        self.endTime = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .endTime)), format: .dateTime)
    }
    if container.contains(.status) {
        self.status = try container.decode(WorkflowStatusEnum?.self, forKey: .status)
    }
    if container.contains(.code) {
        self.code = try container.decode(String?.self, forKey: .code)
    }
    if container.contains(.error) {
        self.error = try container.decode([String: String?]?.self, forKey: .error)
    }
    if container.contains(.correlationId) {
        self.correlationId = try container.decode(String?.self, forKey: .correlationId)
    }
    if container.contains(.correlation) {
        self.correlation = try container.decode(CorrelationData?.self, forKey: .correlation)
    }
    if container.contains(.workflow) {
        self.workflow = try container.decode(ResourceReferenceData?.self, forKey: .workflow)
    }
    if container.contains(.trigger) {
        self.trigger = try container.decode(WorkflowRunTriggerData?.self, forKey: .trigger)
    }
    if container.contains(.outputs) {
        self.outputs = try container.decode([String:WorkflowOutputParameterData?]?.self, forKey: .outputs)
    }
    if container.contains(.response) {
        self.response = try container.decode(WorkflowRunTriggerData?.self, forKey: .response)
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
    if self.startTime != nil {
        try container.encode(DateConverter.toString(date: self.startTime!, format: .dateTime), forKey: .startTime)
    }
    if self.endTime != nil {
        try container.encode(DateConverter.toString(date: self.endTime!, format: .dateTime), forKey: .endTime)
    }
    if self.status != nil { try container.encode(self.status, forKey: .status) }
    if self.code != nil { try container.encode(self.code, forKey: .code) }
    if self.error != nil { try container.encode(self.error, forKey: .error) }
    if self.correlationId != nil { try container.encode(self.correlationId, forKey: .correlationId) }
    if self.correlation != nil { try container.encode(self.correlation as! CorrelationData?, forKey: .correlation) }
    if self.workflow != nil { try container.encode(self.workflow as! ResourceReferenceData?, forKey: .workflow) }
    if self.trigger != nil { try container.encode(self.trigger as! WorkflowRunTriggerData?, forKey: .trigger) }
    if self.outputs != nil { try container.encode(self.outputs, forKey: .outputs) }
    if self.response != nil { try container.encode(self.response as! WorkflowRunTriggerData?, forKey: .response) }
  }
}

extension DataFactory {
  public static func createWorkflowRunPropertiesProtocol() -> WorkflowRunPropertiesProtocol {
    return WorkflowRunPropertiesData()
  }
}
