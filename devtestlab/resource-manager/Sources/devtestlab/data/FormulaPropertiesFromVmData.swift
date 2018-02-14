// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct FormulaPropertiesFromVmData : FormulaPropertiesFromVmProtocol {
    public var labVmId: String?

        enum CodingKeys: String, CodingKey {case labVmId = "labVmId"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.labVmId) {
        self.labVmId = try container.decode(String?.self, forKey: .labVmId)
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
    if self.labVmId != nil {try container.encode(self.labVmId, forKey: .labVmId)}
  }
}

extension DataFactory {
  public static func createFormulaPropertiesFromVmProtocol() -> FormulaPropertiesFromVmProtocol {
    return FormulaPropertiesFromVmData()
  }
}
