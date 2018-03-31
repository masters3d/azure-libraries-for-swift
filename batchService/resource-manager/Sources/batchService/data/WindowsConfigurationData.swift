// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct WindowsConfigurationData : WindowsConfigurationProtocol {
    public var enableAutomaticUpdates: Bool?

        enum CodingKeys: String, CodingKey {case enableAutomaticUpdates = "enableAutomaticUpdates"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.enableAutomaticUpdates) {
        self.enableAutomaticUpdates = try container.decode(Bool?.self, forKey: .enableAutomaticUpdates)
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
    if self.enableAutomaticUpdates != nil {try container.encode(self.enableAutomaticUpdates, forKey: .enableAutomaticUpdates)}
  }
}

extension DataFactory {
  public static func createWindowsConfigurationProtocol() -> WindowsConfigurationProtocol {
    return WindowsConfigurationData()
  }
}
