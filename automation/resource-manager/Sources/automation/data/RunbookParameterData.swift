// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct RunbookParameterData : RunbookParameterProtocol {
    public var type: String?
    public var isMandatory: Bool?
    public var position: Int32?
    public var defaultValue: String?

        enum CodingKeys: String, CodingKey {case type = "type"
        case isMandatory = "isMandatory"
        case position = "position"
        case defaultValue = "defaultValue"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.type) {
        self.type = try container.decode(String?.self, forKey: .type)
    }
    if container.contains(.isMandatory) {
        self.isMandatory = try container.decode(Bool?.self, forKey: .isMandatory)
    }
    if container.contains(.position) {
        self.position = try container.decode(Int32?.self, forKey: .position)
    }
    if container.contains(.defaultValue) {
        self.defaultValue = try container.decode(String?.self, forKey: .defaultValue)
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
    if self.isMandatory != nil {try container.encode(self.isMandatory, forKey: .isMandatory)}
    if self.position != nil {try container.encode(self.position, forKey: .position)}
    if self.defaultValue != nil {try container.encode(self.defaultValue, forKey: .defaultValue)}
  }
}

extension DataFactory {
  public static func createRunbookParameterProtocol() -> RunbookParameterProtocol {
    return RunbookParameterData()
  }
}
