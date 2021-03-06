// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct AutoHealCustomActionData : AutoHealCustomActionProtocol {
    public var exe: String?
    public var parameters: String?

        enum CodingKeys: String, CodingKey {case exe = "exe"
        case parameters = "parameters"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.exe) {
        self.exe = try container.decode(String?.self, forKey: .exe)
    }
    if container.contains(.parameters) {
        self.parameters = try container.decode(String?.self, forKey: .parameters)
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
    if self.exe != nil {try container.encode(self.exe, forKey: .exe)}
    if self.parameters != nil {try container.encode(self.parameters, forKey: .parameters)}
  }
}

extension DataFactory {
  public static func createAutoHealCustomActionProtocol() -> AutoHealCustomActionProtocol {
    return AutoHealCustomActionData()
  }
}
