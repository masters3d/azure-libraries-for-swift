// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct WorkflowOutputParameterData : WorkflowOutputParameterProtocol, WorkflowParameterProtocol {
    public var type: ParameterTypeEnum?
    public var value: [String: String?]?
    public var metadata: [String: String?]?
    public var description: String?
    public var error: [String: String?]?

        enum CodingKeys: String, CodingKey {case type = "type"
        case value = "value"
        case metadata = "metadata"
        case description = "description"
        case error = "error"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.type) {
        self.type = try container.decode(ParameterTypeEnum?.self, forKey: .type)
    }
    if container.contains(.value) {
        self.value = try container.decode([String: String?]?.self, forKey: .value)
    }
    if container.contains(.metadata) {
        self.metadata = try container.decode([String: String?]?.self, forKey: .metadata)
    }
    if container.contains(.description) {
        self.description = try container.decode(String?.self, forKey: .description)
    }
    if container.contains(.error) {
        self.error = try container.decode([String: String?]?.self, forKey: .error)
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
    if self.type != nil {try container.encode(self.type, forKey: .type)}
    if self.value != nil {try container.encode(self.value, forKey: .value)}
    if self.metadata != nil {try container.encode(self.metadata, forKey: .metadata)}
    if self.description != nil {try container.encode(self.description, forKey: .description)}
    if self.error != nil {try container.encode(self.error, forKey: .error)}
  }
}

extension DataFactory {
  public static func createWorkflowOutputParameterProtocol() -> WorkflowOutputParameterProtocol {
    return WorkflowOutputParameterData()
  }
}