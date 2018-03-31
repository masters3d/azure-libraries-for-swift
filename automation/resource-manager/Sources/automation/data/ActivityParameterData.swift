// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ActivityParameterData : ActivityParameterProtocol {
    public var name: String?
    public var type: String?
    public var isMandatory: Bool?
    public var isDynamic: Bool?
    public var position: Bool?
    public var valueFromPipeline: Bool?
    public var valueFromPipelineByPropertyName: Bool?
    public var valueFromRemainingArguments: Bool?

        enum CodingKeys: String, CodingKey {case name = "name"
        case type = "type"
        case isMandatory = "isMandatory"
        case isDynamic = "isDynamic"
        case position = "position"
        case valueFromPipeline = "valueFromPipeline"
        case valueFromPipelineByPropertyName = "valueFromPipelineByPropertyName"
        case valueFromRemainingArguments = "valueFromRemainingArguments"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.name) {
        self.name = try container.decode(String?.self, forKey: .name)
    }
    if container.contains(.type) {
        self.type = try container.decode(String?.self, forKey: .type)
    }
    if container.contains(.isMandatory) {
        self.isMandatory = try container.decode(Bool?.self, forKey: .isMandatory)
    }
    if container.contains(.isDynamic) {
        self.isDynamic = try container.decode(Bool?.self, forKey: .isDynamic)
    }
    if container.contains(.position) {
        self.position = try container.decode(Bool?.self, forKey: .position)
    }
    if container.contains(.valueFromPipeline) {
        self.valueFromPipeline = try container.decode(Bool?.self, forKey: .valueFromPipeline)
    }
    if container.contains(.valueFromPipelineByPropertyName) {
        self.valueFromPipelineByPropertyName = try container.decode(Bool?.self, forKey: .valueFromPipelineByPropertyName)
    }
    if container.contains(.valueFromRemainingArguments) {
        self.valueFromRemainingArguments = try container.decode(Bool?.self, forKey: .valueFromRemainingArguments)
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
    if self.name != nil {try container.encode(self.name, forKey: .name)}
    if self.type != nil {try container.encode(self.type, forKey: .type)}
    if self.isMandatory != nil {try container.encode(self.isMandatory, forKey: .isMandatory)}
    if self.isDynamic != nil {try container.encode(self.isDynamic, forKey: .isDynamic)}
    if self.position != nil {try container.encode(self.position, forKey: .position)}
    if self.valueFromPipeline != nil {try container.encode(self.valueFromPipeline, forKey: .valueFromPipeline)}
    if self.valueFromPipelineByPropertyName != nil {try container.encode(self.valueFromPipelineByPropertyName, forKey: .valueFromPipelineByPropertyName)}
    if self.valueFromRemainingArguments != nil {try container.encode(self.valueFromRemainingArguments, forKey: .valueFromRemainingArguments)}
  }
}

extension DataFactory {
  public static func createActivityParameterProtocol() -> ActivityParameterProtocol {
    return ActivityParameterData()
  }
}
