// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ExitCodeMappingData : ExitCodeMappingProtocol {
    public var code: Int32
    public var exitOptions: ExitOptionsProtocol

        enum CodingKeys: String, CodingKey {case code = "code"
        case exitOptions = "exitOptions"
        }

  public init(code: Int32, exitOptions: ExitOptionsProtocol)  {
    self.code = code
    self.exitOptions = exitOptions
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.code = try container.decode(Int32.self, forKey: .code)
    self.exitOptions = try container.decode(ExitOptionsData.self, forKey: .exitOptions)
    if var pageDecoder = decoder as? PageDecoder  {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(self.code, forKey: .code)
    try container.encode(self.exitOptions as! ExitOptionsData, forKey: .exitOptions)
  }
}

extension DataFactory {
  public static func createExitCodeMappingProtocol(code: Int32, exitOptions: ExitOptionsProtocol) -> ExitCodeMappingProtocol {
    return ExitCodeMappingData(code: code, exitOptions: exitOptions)
  }
}
