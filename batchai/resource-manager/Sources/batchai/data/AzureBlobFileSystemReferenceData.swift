// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct AzureBlobFileSystemReferenceData : AzureBlobFileSystemReferenceProtocol {
    public var accountName: String
    public var containerName: String
    public var credentials: AzureStorageCredentialsInfoProtocol
    public var relativeMountPath: String
    public var mountOptions: String?

        enum CodingKeys: String, CodingKey {case accountName = "accountName"
        case containerName = "containerName"
        case credentials = "credentials"
        case relativeMountPath = "relativeMountPath"
        case mountOptions = "mountOptions"
        }

  public init(accountName: String, containerName: String, credentials: AzureStorageCredentialsInfoProtocol, relativeMountPath: String) {
    self.accountName = accountName
    self.containerName = containerName
    self.credentials = credentials
    self.relativeMountPath = relativeMountPath
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.accountName = try container.decode(String.self, forKey: .accountName)
    self.containerName = try container.decode(String.self, forKey: .containerName)
    self.credentials = try container.decode(AzureStorageCredentialsInfoData.self, forKey: .credentials)
    self.relativeMountPath = try container.decode(String.self, forKey: .relativeMountPath)
    if container.contains(.mountOptions) {
        self.mountOptions = try container.decode(String?.self, forKey: .mountOptions)
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
    try container.encode(self.accountName, forKey: .accountName)
    try container.encode(self.containerName, forKey: .containerName)
    try container.encode(self.credentials as! AzureStorageCredentialsInfoData, forKey: .credentials)
    try container.encode(self.relativeMountPath, forKey: .relativeMountPath)
    if self.mountOptions != nil { try container.encode(self.mountOptions, forKey: .mountOptions) }
  }
}

extension DataFactory {
  public static func createAzureBlobFileSystemReferenceProtocol(accountName: String, containerName: String, credentials: AzureStorageCredentialsInfoProtocol, relativeMountPath: String) -> AzureBlobFileSystemReferenceProtocol {
    return AzureBlobFileSystemReferenceData(accountName: accountName, containerName: containerName, credentials: credentials, relativeMountPath: relativeMountPath)
  }
}
