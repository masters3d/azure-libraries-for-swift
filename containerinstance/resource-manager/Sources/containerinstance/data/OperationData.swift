// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct OperationData : OperationProtocol {
    public var name: String
    public var display: OperationDisplayProtocol
    public var origin: ContainerInstanceOperationsOriginEnum?

        enum CodingKeys: String, CodingKey {case name = "name"
        case display = "display"
        case origin = "origin"
        }

  public init(name: String, display: OperationDisplayProtocol) {
    self.name = name
    self.display = display
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.name = try container.decode(String.self, forKey: .name)
    self.display = try container.decode(OperationDisplayData.self, forKey: .display)
    if container.contains(.origin) {
        self.origin = try container.decode(ContainerInstanceOperationsOriginEnum?.self, forKey: .origin)
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
    try container.encode(self.name, forKey: .name)
    try container.encode(self.display as! OperationDisplayData, forKey: .display)
    if self.origin != nil { try container.encode(self.origin, forKey: .origin) }
  }
}

extension DataFactory {
  public static func createOperationProtocol(name: String, display: OperationDisplayProtocol) -> OperationProtocol {
    return OperationData(name: name, display: display)
  }
}
