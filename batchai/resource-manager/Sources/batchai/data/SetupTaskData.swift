// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct SetupTaskData : SetupTaskProtocol {
    public var commandLine: String
    public var environmentVariables: [EnvironmentSettingProtocol?]?
    public var runElevated: Bool?
    public var stdOutErrPathPrefix: String

        enum CodingKeys: String, CodingKey {case commandLine = "commandLine"
        case environmentVariables = "environmentVariables"
        case runElevated = "runElevated"
        case stdOutErrPathPrefix = "stdOutErrPathPrefix"
        }

  public init(commandLine: String, stdOutErrPathPrefix: String)  {
    self.commandLine = commandLine
    self.stdOutErrPathPrefix = stdOutErrPathPrefix
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.commandLine = try container.decode(String.self, forKey: .commandLine)
    if container.contains(.environmentVariables) {
        self.environmentVariables = try container.decode([EnvironmentSettingData?]?.self, forKey: .environmentVariables)
    }
    if container.contains(.runElevated) {
        self.runElevated = try container.decode(Bool?.self, forKey: .runElevated)
    }
    self.stdOutErrPathPrefix = try container.decode(String.self, forKey: .stdOutErrPathPrefix)
    if var pageDecoder = decoder as? PageDecoder  {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(self.commandLine, forKey: .commandLine)
    if self.environmentVariables != nil {try container.encode(self.environmentVariables as! [EnvironmentSettingData?]?, forKey: .environmentVariables)}
    if self.runElevated != nil {try container.encode(self.runElevated, forKey: .runElevated)}
    try container.encode(self.stdOutErrPathPrefix, forKey: .stdOutErrPathPrefix)
  }
}

extension DataFactory {
  public static func createSetupTaskProtocol(commandLine: String, stdOutErrPathPrefix: String) -> SetupTaskProtocol {
    return SetupTaskData(commandLine: commandLine, stdOutErrPathPrefix: stdOutErrPathPrefix)
  }
}
