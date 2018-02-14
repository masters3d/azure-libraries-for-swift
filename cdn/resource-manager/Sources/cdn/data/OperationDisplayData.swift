// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct OperationDisplayData : OperationDisplayProtocol {
    public var provider: String?
    public var resource: String?
    public var operation: String?

        enum CodingKeys: String, CodingKey {case provider = "provider"
        case resource = "resource"
        case operation = "operation"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.provider) {
        self.provider = try container.decode(String?.self, forKey: .provider)
    }
    if container.contains(.resource) {
        self.resource = try container.decode(String?.self, forKey: .resource)
    }
    if container.contains(.operation) {
        self.operation = try container.decode(String?.self, forKey: .operation)
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
    if self.provider != nil {try container.encode(self.provider, forKey: .provider)}
    if self.resource != nil {try container.encode(self.resource, forKey: .resource)}
    if self.operation != nil {try container.encode(self.operation, forKey: .operation)}
  }
}

extension DataFactory {
  public static func createOperationDisplayProtocol() -> OperationDisplayProtocol {
    return OperationDisplayData()
  }
}
