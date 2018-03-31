// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct RunCommandInputData : RunCommandInputProtocol {
    public var commandId: String
    public var script: [String]?
    public var parameters: [RunCommandInputParameterProtocol?]?

        enum CodingKeys: String, CodingKey {case commandId = "commandId"
        case script = "script"
        case parameters = "parameters"
        }

  public init(commandId: String)  {
    self.commandId = commandId
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.commandId = try container.decode(String.self, forKey: .commandId)
    if container.contains(.script) {
        self.script = try container.decode([String]?.self, forKey: .script)
    }
    if container.contains(.parameters) {
        self.parameters = try container.decode([RunCommandInputParameterData?]?.self, forKey: .parameters)
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
    try container.encode(self.commandId, forKey: .commandId)
    if self.script != nil {try container.encode(self.script as! [String]?, forKey: .script)}
    if self.parameters != nil {try container.encode(self.parameters as! [RunCommandInputParameterData?]?, forKey: .parameters)}
  }
}

extension DataFactory {
  public static func createRunCommandInputProtocol(commandId: String) -> RunCommandInputProtocol {
    return RunCommandInputData(commandId: commandId)
  }
}
