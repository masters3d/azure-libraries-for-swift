// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct StorageAccountKeyData : StorageAccountKeyProtocol {
    public var keyName: String?
    public var value: String?
    public var permissions: KeyPermissionEnum?

        enum CodingKeys: String, CodingKey {case keyName = "keyName"
        case value = "value"
        case permissions = "permissions"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.keyName) {
        self.keyName = try container.decode(String?.self, forKey: .keyName)
    }
    if container.contains(.value) {
        self.value = try container.decode(String?.self, forKey: .value)
    }
    if container.contains(.permissions) {
        self.permissions = try container.decode(KeyPermissionEnum?.self, forKey: .permissions)
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
    if self.keyName != nil {try container.encode(self.keyName, forKey: .keyName)}
    if self.value != nil {try container.encode(self.value, forKey: .value)}
    if self.permissions != nil {try container.encode(self.permissions, forKey: .permissions)}
  }
}

extension DataFactory {
  public static func createStorageAccountKeyProtocol() -> StorageAccountKeyProtocol {
    return StorageAccountKeyData()
  }
}
