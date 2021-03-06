// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ContainerServiceVMDiagnosticsData : ContainerServiceVMDiagnosticsProtocol {
    public var enabled: Bool
    public var storageUri: String?

        enum CodingKeys: String, CodingKey {case enabled = "enabled"
        case storageUri = "storageUri"
        }

  public init(enabled: Bool)  {
    self.enabled = enabled
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.enabled = try container.decode(Bool.self, forKey: .enabled)
    if container.contains(.storageUri) {
        self.storageUri = try container.decode(String?.self, forKey: .storageUri)
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
    try container.encode(self.enabled, forKey: .enabled)
    if self.storageUri != nil {try container.encode(self.storageUri, forKey: .storageUri)}
  }
}

extension DataFactory {
  public static func createContainerServiceVMDiagnosticsProtocol(enabled: Bool) -> ContainerServiceVMDiagnosticsProtocol {
    return ContainerServiceVMDiagnosticsData(enabled: enabled)
  }
}
