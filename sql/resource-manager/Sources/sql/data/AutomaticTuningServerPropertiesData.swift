// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct AutomaticTuningServerPropertiesData : AutomaticTuningServerPropertiesProtocol {
    public var desiredState: AutomaticTuningServerModeEnum?
    public var actualState: AutomaticTuningServerModeEnum?
    public var options: [String:AutomaticTuningServerOptionsProtocol?]?

        enum CodingKeys: String, CodingKey {case desiredState = "desiredState"
        case actualState = "actualState"
        case options = "options"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.desiredState) {
        self.desiredState = try container.decode(AutomaticTuningServerModeEnum?.self, forKey: .desiredState)
    }
    if container.contains(.actualState) {
        self.actualState = try container.decode(AutomaticTuningServerModeEnum?.self, forKey: .actualState)
    }
    if container.contains(.options) {
        self.options = try container.decode([String:AutomaticTuningServerOptionsData?]?.self, forKey: .options)
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
    if self.desiredState != nil {try container.encode(self.desiredState, forKey: .desiredState)}
    if self.actualState != nil {try container.encode(self.actualState, forKey: .actualState)}
    if self.options != nil {try container.encode(self.options, forKey: .options)}
  }
}

extension DataFactory {
  public static func createAutomaticTuningServerPropertiesProtocol() -> AutomaticTuningServerPropertiesProtocol {
    return AutomaticTuningServerPropertiesData()
  }
}
