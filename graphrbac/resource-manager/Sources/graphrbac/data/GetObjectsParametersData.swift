// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct GetObjectsParametersData : GetObjectsParametersProtocol {
    public var additionalProperties: [String:[String: String?]]?
    public var objectIds: [String]?
    public var types: [String]?
    public var includeDirectoryObjectReferences: Bool

        enum CodingKeys: String, CodingKey {case additionalProperties = ""
        case objectIds = "objectIds"
        case types = "types"
        case includeDirectoryObjectReferences = "includeDirectoryObjectReferences"
        }

  public init(includeDirectoryObjectReferences: Bool) {
    self.includeDirectoryObjectReferences = includeDirectoryObjectReferences
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.additionalProperties) {
        self.additionalProperties = try container.decode([String:[String: String?]]?.self, forKey: .additionalProperties)
    }
    if container.contains(.objectIds) {
        self.objectIds = try container.decode([String]?.self, forKey: .objectIds)
    }
    if container.contains(.types) {
        self.types = try container.decode([String]?.self, forKey: .types)
    }
    self.includeDirectoryObjectReferences = try container.decode(Bool.self, forKey: .includeDirectoryObjectReferences)
    if var pageDecoder = decoder as? PageDecoder {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    if self.additionalProperties != nil { try container.encode(self.additionalProperties, forKey: .additionalProperties) }
    if self.objectIds != nil { try container.encode(self.objectIds as! [String]?, forKey: .objectIds) }
    if self.types != nil { try container.encode(self.types as! [String]?, forKey: .types) }
    try container.encode(self.includeDirectoryObjectReferences, forKey: .includeDirectoryObjectReferences)
  }
}

extension DataFactory {
  public static func createGetObjectsParametersProtocol(includeDirectoryObjectReferences: Bool) -> GetObjectsParametersProtocol {
    return GetObjectsParametersData(includeDirectoryObjectReferences: includeDirectoryObjectReferences)
  }
}
