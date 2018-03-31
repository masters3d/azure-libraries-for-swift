// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct TensorFlowSettingsData : TensorFlowSettingsProtocol {
    public var pythonScriptFilePath: String
    public var pythonInterpreterPath: String?
    public var masterCommandLineArgs: String
    public var workerCommandLineArgs: String?
    public var parameterServerCommandLineArgs: String?
    public var workerCount: Int32?
    public var parameterServerCount: Int32?

        enum CodingKeys: String, CodingKey {case pythonScriptFilePath = "pythonScriptFilePath"
        case pythonInterpreterPath = "pythonInterpreterPath"
        case masterCommandLineArgs = "masterCommandLineArgs"
        case workerCommandLineArgs = "workerCommandLineArgs"
        case parameterServerCommandLineArgs = "parameterServerCommandLineArgs"
        case workerCount = "workerCount"
        case parameterServerCount = "parameterServerCount"
        }

  public init(pythonScriptFilePath: String, masterCommandLineArgs: String) {
    self.pythonScriptFilePath = pythonScriptFilePath
    self.masterCommandLineArgs = masterCommandLineArgs
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.pythonScriptFilePath = try container.decode(String.self, forKey: .pythonScriptFilePath)
    if container.contains(.pythonInterpreterPath) {
        self.pythonInterpreterPath = try container.decode(String?.self, forKey: .pythonInterpreterPath)
    }
    self.masterCommandLineArgs = try container.decode(String.self, forKey: .masterCommandLineArgs)
    if container.contains(.workerCommandLineArgs) {
        self.workerCommandLineArgs = try container.decode(String?.self, forKey: .workerCommandLineArgs)
    }
    if container.contains(.parameterServerCommandLineArgs) {
        self.parameterServerCommandLineArgs = try container.decode(String?.self, forKey: .parameterServerCommandLineArgs)
    }
    if container.contains(.workerCount) {
        self.workerCount = try container.decode(Int32?.self, forKey: .workerCount)
    }
    if container.contains(.parameterServerCount) {
        self.parameterServerCount = try container.decode(Int32?.self, forKey: .parameterServerCount)
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
    try container.encode(self.pythonScriptFilePath, forKey: .pythonScriptFilePath)
    if self.pythonInterpreterPath != nil { try container.encode(self.pythonInterpreterPath, forKey: .pythonInterpreterPath) }
    try container.encode(self.masterCommandLineArgs, forKey: .masterCommandLineArgs)
    if self.workerCommandLineArgs != nil { try container.encode(self.workerCommandLineArgs, forKey: .workerCommandLineArgs) }
    if self.parameterServerCommandLineArgs != nil { try container.encode(self.parameterServerCommandLineArgs, forKey: .parameterServerCommandLineArgs) }
    if self.workerCount != nil { try container.encode(self.workerCount, forKey: .workerCount) }
    if self.parameterServerCount != nil { try container.encode(self.parameterServerCount, forKey: .parameterServerCount) }
  }
}

extension DataFactory {
  public static func createTensorFlowSettingsProtocol(pythonScriptFilePath: String, masterCommandLineArgs: String) -> TensorFlowSettingsProtocol {
    return TensorFlowSettingsData(pythonScriptFilePath: pythonScriptFilePath, masterCommandLineArgs: masterCommandLineArgs)
  }
}
