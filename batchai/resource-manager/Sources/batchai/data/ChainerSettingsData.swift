// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ChainerSettingsData : ChainerSettingsProtocol {
    public var pythonScriptFilePath: String
    public var pythonInterpreterPath: String?
    public var commandLineArgs: String?
    public var processCount: Int32?

        enum CodingKeys: String, CodingKey {case pythonScriptFilePath = "pythonScriptFilePath"
        case pythonInterpreterPath = "pythonInterpreterPath"
        case commandLineArgs = "commandLineArgs"
        case processCount = "processCount"
        }

  public init(pythonScriptFilePath: String)  {
    self.pythonScriptFilePath = pythonScriptFilePath
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.pythonScriptFilePath = try container.decode(String.self, forKey: .pythonScriptFilePath)
    if container.contains(.pythonInterpreterPath) {
        self.pythonInterpreterPath = try container.decode(String?.self, forKey: .pythonInterpreterPath)
    }
    if container.contains(.commandLineArgs) {
        self.commandLineArgs = try container.decode(String?.self, forKey: .commandLineArgs)
    }
    if container.contains(.processCount) {
        self.processCount = try container.decode(Int32?.self, forKey: .processCount)
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
    try container.encode(self.pythonScriptFilePath, forKey: .pythonScriptFilePath)
    if self.pythonInterpreterPath != nil {try container.encode(self.pythonInterpreterPath, forKey: .pythonInterpreterPath)}
    if self.commandLineArgs != nil {try container.encode(self.commandLineArgs, forKey: .commandLineArgs)}
    if self.processCount != nil {try container.encode(self.processCount, forKey: .processCount)}
  }
}

extension DataFactory {
  public static func createChainerSettingsProtocol(pythonScriptFilePath: String) -> ChainerSettingsProtocol {
    return ChainerSettingsData(pythonScriptFilePath: pythonScriptFilePath)
  }
}
