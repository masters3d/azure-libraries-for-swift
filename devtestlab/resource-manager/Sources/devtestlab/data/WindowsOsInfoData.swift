// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct WindowsOsInfoData : WindowsOsInfoProtocol {
    public var windowsOsState: WindowsOsStateEnum?

        enum CodingKeys: String, CodingKey {case windowsOsState = "windowsOsState"
        }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.windowsOsState) {
        self.windowsOsState = try container.decode(WindowsOsStateEnum?.self, forKey: .windowsOsState)
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
    if self.windowsOsState != nil { try container.encode(self.windowsOsState, forKey: .windowsOsState) }
  }
}

extension DataFactory {
  public static func createWindowsOsInfoProtocol() -> WindowsOsInfoProtocol {
    return WindowsOsInfoData()
  }
}
