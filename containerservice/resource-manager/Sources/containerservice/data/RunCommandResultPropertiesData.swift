// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct RunCommandResultPropertiesData : RunCommandResultPropertiesProtocol {
    public var output: [String: String?]?

        enum CodingKeys: String, CodingKey {case output = "output"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.output) {
        self.output = try container.decode([String: String?]?.self, forKey: .output)
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
    if self.output != nil {try container.encode(self.output, forKey: .output)}
  }
}

extension DataFactory {
  public static func createRunCommandResultPropertiesProtocol() -> RunCommandResultPropertiesProtocol {
    return RunCommandResultPropertiesData()
  }
}
