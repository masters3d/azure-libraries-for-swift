// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct JavaScriptFunctionBindingRetrievalPropertiesData : JavaScriptFunctionBindingRetrievalPropertiesProtocol {
    public var script: String?
    public var udfType: UdfTypeEnum?

        enum CodingKeys: String, CodingKey {case script = "script"
        case udfType = "udfType"
        }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.script) {
        self.script = try container.decode(String?.self, forKey: .script)
    }
    if container.contains(.udfType) {
        self.udfType = try container.decode(UdfTypeEnum?.self, forKey: .udfType)
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
    if self.script != nil { try container.encode(self.script, forKey: .script) }
    if self.udfType != nil { try container.encode(self.udfType, forKey: .udfType) }
  }
}

extension DataFactory {
  public static func createJavaScriptFunctionBindingRetrievalPropertiesProtocol() -> JavaScriptFunctionBindingRetrievalPropertiesProtocol {
    return JavaScriptFunctionBindingRetrievalPropertiesData()
  }
}
