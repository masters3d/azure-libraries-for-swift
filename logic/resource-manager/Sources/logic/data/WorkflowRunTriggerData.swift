// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct WorkflowRunTriggerData : WorkflowRunTriggerProtocol {
    public var name: String?
    public var inputs: [String: String?]?
    public var inputsLink: ContentLinkProtocol?
    public var outputs: [String: String?]?
    public var outputsLink: ContentLinkProtocol?
    public var startTime: Date?
    public var endTime: Date?
    public var trackingId: String?
    public var correlation: CorrelationProtocol?
    public var code: String?
    public var status: WorkflowStatusEnum?
    public var error: [String: String?]?
    public var trackedProperties: [String: String?]?

        enum CodingKeys: String, CodingKey {case name = "name"
        case inputs = "inputs"
        case inputsLink = "inputsLink"
        case outputs = "outputs"
        case outputsLink = "outputsLink"
        case startTime = "startTime"
        case endTime = "endTime"
        case trackingId = "trackingId"
        case correlation = "correlation"
        case code = "code"
        case status = "status"
        case error = "error"
        case trackedProperties = "trackedProperties"
        }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.name) {
        self.name = try container.decode(String?.self, forKey: .name)
    }
    if container.contains(.inputs) {
        self.inputs = try container.decode([String: String?]?.self, forKey: .inputs)
    }
    if container.contains(.inputsLink) {
        self.inputsLink = try container.decode(ContentLinkData?.self, forKey: .inputsLink)
    }
    if container.contains(.outputs) {
        self.outputs = try container.decode([String: String?]?.self, forKey: .outputs)
    }
    if container.contains(.outputsLink) {
        self.outputsLink = try container.decode(ContentLinkData?.self, forKey: .outputsLink)
    }
    if container.contains(.startTime) {
        self.startTime = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .startTime)), format: .dateTime)
    }
    if container.contains(.endTime) {
        self.endTime = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .endTime)), format: .dateTime)
    }
    if container.contains(.trackingId) {
        self.trackingId = try container.decode(String?.self, forKey: .trackingId)
    }
    if container.contains(.correlation) {
        self.correlation = try container.decode(CorrelationData?.self, forKey: .correlation)
    }
    if container.contains(.code) {
        self.code = try container.decode(String?.self, forKey: .code)
    }
    if container.contains(.status) {
        self.status = try container.decode(WorkflowStatusEnum?.self, forKey: .status)
    }
    if container.contains(.error) {
        self.error = try container.decode([String: String?]?.self, forKey: .error)
    }
    if container.contains(.trackedProperties) {
        self.trackedProperties = try container.decode([String: String?]?.self, forKey: .trackedProperties)
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
    if self.name != nil { try container.encode(self.name, forKey: .name) }
    if self.inputs != nil { try container.encode(self.inputs, forKey: .inputs) }
    if self.inputsLink != nil { try container.encode(self.inputsLink as! ContentLinkData?, forKey: .inputsLink) }
    if self.outputs != nil { try container.encode(self.outputs, forKey: .outputs) }
    if self.outputsLink != nil { try container.encode(self.outputsLink as! ContentLinkData?, forKey: .outputsLink) }
    if self.startTime != nil {
        try container.encode(DateConverter.toString(date: self.startTime!, format: .dateTime), forKey: .startTime)
    }
    if self.endTime != nil {
        try container.encode(DateConverter.toString(date: self.endTime!, format: .dateTime), forKey: .endTime)
    }
    if self.trackingId != nil { try container.encode(self.trackingId, forKey: .trackingId) }
    if self.correlation != nil { try container.encode(self.correlation as! CorrelationData?, forKey: .correlation) }
    if self.code != nil { try container.encode(self.code, forKey: .code) }
    if self.status != nil { try container.encode(self.status, forKey: .status) }
    if self.error != nil { try container.encode(self.error, forKey: .error) }
    if self.trackedProperties != nil { try container.encode(self.trackedProperties, forKey: .trackedProperties) }
  }
}

extension DataFactory {
  public static func createWorkflowRunTriggerProtocol() -> WorkflowRunTriggerProtocol {
    return WorkflowRunTriggerData()
  }
}
