// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct PowerShellCommandParametersPropertiesData : PowerShellCommandParametersPropertiesProtocol {
    public var command: String?

        enum CodingKeys: String, CodingKey {case command = "command"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.command) {
        self.command = try container.decode(String?.self, forKey: .command)
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
    if self.command != nil {try container.encode(self.command, forKey: .command)}
  }
}

extension DataFactory {
  public static func createPowerShellCommandParametersPropertiesProtocol() -> PowerShellCommandParametersPropertiesProtocol {
    return PowerShellCommandParametersPropertiesData()
  }
}
