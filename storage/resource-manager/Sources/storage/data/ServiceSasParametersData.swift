// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ServiceSasParametersData : ServiceSasParametersProtocol {
    public var canonicalizedResource: String
    public var resource: SignedResourceEnum
    public var permissions: PermissionsEnum?
    public var iPAddressOrRange: String?
    public var protocols: HttpProtocolEnum?
    public var sharedAccessStartTime: Date?
    public var sharedAccessExpiryTime: Date?
    public var identifier: String?
    public var partitionKeyStart: String?
    public var partitionKeyEnd: String?
    public var rowKeyStart: String?
    public var rowKeyEnd: String?
    public var keyToSign: String?
    public var cacheControl: String?
    public var contentDisposition: String?
    public var contentEncoding: String?
    public var contentLanguage: String?
    public var contentType: String?

        enum CodingKeys: String, CodingKey {case canonicalizedResource = "canonicalizedResource"
        case resource = "signedResource"
        case permissions = "signedPermission"
        case iPAddressOrRange = "signedIp"
        case protocols = "signedProtocol"
        case sharedAccessStartTime = "signedStart"
        case sharedAccessExpiryTime = "signedExpiry"
        case identifier = "signedIdentifier"
        case partitionKeyStart = "startPk"
        case partitionKeyEnd = "endPk"
        case rowKeyStart = "startRk"
        case rowKeyEnd = "endRk"
        case keyToSign = "keyToSign"
        case cacheControl = "rscc"
        case contentDisposition = "rscd"
        case contentEncoding = "rsce"
        case contentLanguage = "rscl"
        case contentType = "rsct"
        }

  public init(canonicalizedResource: String, resource: SignedResourceEnum) {
    self.canonicalizedResource = canonicalizedResource
    self.resource = resource
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      self.canonicalizedResource = try container.decode(String.self, forKey: .canonicalizedResource)
    self.resource = try container.decode(SignedResourceEnum.self, forKey: .resource)
    if container.contains(.permissions) {
        self.permissions = try container.decode(PermissionsEnum?.self, forKey: .permissions)
    }
    if container.contains(.iPAddressOrRange) {
        self.iPAddressOrRange = try container.decode(String?.self, forKey: .iPAddressOrRange)
    }
    if container.contains(.protocols) {
        self.protocols = try container.decode(HttpProtocolEnum?.self, forKey: .protocols)
    }
    if container.contains(.sharedAccessStartTime) {
        self.sharedAccessStartTime = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .sharedAccessStartTime)), format: .dateTime)
    }
    if container.contains(.sharedAccessExpiryTime) {
        self.sharedAccessExpiryTime = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .sharedAccessExpiryTime)), format: .dateTime)
    }
    if container.contains(.identifier) {
        self.identifier = try container.decode(String?.self, forKey: .identifier)
    }
    if container.contains(.partitionKeyStart) {
        self.partitionKeyStart = try container.decode(String?.self, forKey: .partitionKeyStart)
    }
    if container.contains(.partitionKeyEnd) {
        self.partitionKeyEnd = try container.decode(String?.self, forKey: .partitionKeyEnd)
    }
    if container.contains(.rowKeyStart) {
        self.rowKeyStart = try container.decode(String?.self, forKey: .rowKeyStart)
    }
    if container.contains(.rowKeyEnd) {
        self.rowKeyEnd = try container.decode(String?.self, forKey: .rowKeyEnd)
    }
    if container.contains(.keyToSign) {
        self.keyToSign = try container.decode(String?.self, forKey: .keyToSign)
    }
    if container.contains(.cacheControl) {
        self.cacheControl = try container.decode(String?.self, forKey: .cacheControl)
    }
    if container.contains(.contentDisposition) {
        self.contentDisposition = try container.decode(String?.self, forKey: .contentDisposition)
    }
    if container.contains(.contentEncoding) {
        self.contentEncoding = try container.decode(String?.self, forKey: .contentEncoding)
    }
    if container.contains(.contentLanguage) {
        self.contentLanguage = try container.decode(String?.self, forKey: .contentLanguage)
    }
    if container.contains(.contentType) {
        self.contentType = try container.decode(String?.self, forKey: .contentType)
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
    try container.encode(self.canonicalizedResource, forKey: .canonicalizedResource)
    try container.encode(self.resource, forKey: .resource)
    if self.permissions != nil { try container.encode(self.permissions, forKey: .permissions) }
    if self.iPAddressOrRange != nil { try container.encode(self.iPAddressOrRange, forKey: .iPAddressOrRange) }
    if self.protocols != nil { try container.encode(self.protocols, forKey: .protocols) }
    if self.sharedAccessStartTime != nil {
        try container.encode(DateConverter.toString(date: self.sharedAccessStartTime!, format: .dateTime), forKey: .sharedAccessStartTime)
    }
    if self.sharedAccessExpiryTime != nil {
        try container.encode(DateConverter.toString(date: self.sharedAccessExpiryTime!, format: .dateTime), forKey: .sharedAccessExpiryTime)
    }
    if self.identifier != nil { try container.encode(self.identifier, forKey: .identifier) }
    if self.partitionKeyStart != nil { try container.encode(self.partitionKeyStart, forKey: .partitionKeyStart) }
    if self.partitionKeyEnd != nil { try container.encode(self.partitionKeyEnd, forKey: .partitionKeyEnd) }
    if self.rowKeyStart != nil { try container.encode(self.rowKeyStart, forKey: .rowKeyStart) }
    if self.rowKeyEnd != nil { try container.encode(self.rowKeyEnd, forKey: .rowKeyEnd) }
    if self.keyToSign != nil { try container.encode(self.keyToSign, forKey: .keyToSign) }
    if self.cacheControl != nil { try container.encode(self.cacheControl, forKey: .cacheControl) }
    if self.contentDisposition != nil { try container.encode(self.contentDisposition, forKey: .contentDisposition) }
    if self.contentEncoding != nil { try container.encode(self.contentEncoding, forKey: .contentEncoding) }
    if self.contentLanguage != nil { try container.encode(self.contentLanguage, forKey: .contentLanguage) }
    if self.contentType != nil { try container.encode(self.contentType, forKey: .contentType) }
  }
}

extension DataFactory {
  public static func createServiceSasParametersProtocol(canonicalizedResource: String, resource: SignedResourceEnum) -> ServiceSasParametersProtocol {
    return ServiceSasParametersData(canonicalizedResource: canonicalizedResource, resource: resource)
  }
}
