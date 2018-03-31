// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ContactData : ContactProtocol {
    public var addressMailing: AddressProtocol?
    public var email: String
    public var fax: String?
    public var jobTitle: String?
    public var nameFirst: String
    public var nameLast: String
    public var nameMiddle: String?
    public var organization: String?
    public var phone: String

        enum CodingKeys: String, CodingKey {case addressMailing = "addressMailing"
        case email = "email"
        case fax = "fax"
        case jobTitle = "jobTitle"
        case nameFirst = "nameFirst"
        case nameLast = "nameLast"
        case nameMiddle = "nameMiddle"
        case organization = "organization"
        case phone = "phone"
        }

  public init(email: String, nameFirst: String, nameLast: String, phone: String)  {
    self.email = email
    self.nameFirst = nameFirst
    self.nameLast = nameLast
    self.phone = phone
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.addressMailing) {
        self.addressMailing = try container.decode(AddressData?.self, forKey: .addressMailing)
    }
    self.email = try container.decode(String.self, forKey: .email)
    if container.contains(.fax) {
        self.fax = try container.decode(String?.self, forKey: .fax)
    }
    if container.contains(.jobTitle) {
        self.jobTitle = try container.decode(String?.self, forKey: .jobTitle)
    }
    self.nameFirst = try container.decode(String.self, forKey: .nameFirst)
    self.nameLast = try container.decode(String.self, forKey: .nameLast)
    if container.contains(.nameMiddle) {
        self.nameMiddle = try container.decode(String?.self, forKey: .nameMiddle)
    }
    if container.contains(.organization) {
        self.organization = try container.decode(String?.self, forKey: .organization)
    }
    self.phone = try container.decode(String.self, forKey: .phone)
    if var pageDecoder = decoder as? PageDecoder  {
      if pageDecoder.isPagedData,
        let nextLinkName = pageDecoder.nextLinkName {
          pageDecoder.nextLink = try UnknownCodingKey.decodeStringForKey(decoder: decoder, keyForDecode: nextLinkName)
      }
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    if self.addressMailing != nil {try container.encode(self.addressMailing as! AddressData?, forKey: .addressMailing)}
    try container.encode(self.email, forKey: .email)
    if self.fax != nil {try container.encode(self.fax, forKey: .fax)}
    if self.jobTitle != nil {try container.encode(self.jobTitle, forKey: .jobTitle)}
    try container.encode(self.nameFirst, forKey: .nameFirst)
    try container.encode(self.nameLast, forKey: .nameLast)
    if self.nameMiddle != nil {try container.encode(self.nameMiddle, forKey: .nameMiddle)}
    if self.organization != nil {try container.encode(self.organization, forKey: .organization)}
    try container.encode(self.phone, forKey: .phone)
  }
}

extension DataFactory {
  public static func createContactProtocol(email: String, nameFirst: String, nameLast: String, phone: String) -> ContactProtocol {
    return ContactData(email: email, nameFirst: nameFirst, nameLast: nameLast, phone: phone)
  }
}
