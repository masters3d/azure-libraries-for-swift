// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct DeploymentPropertiesData : DeploymentPropertiesProtocol {
    public var id: String?
    public var status: Int32?
    public var message: String?
    public var author: String?
    public var deployer: String?
    public var authorEmail: String?
    public var startTime: Date?
    public var endTime: Date?
    public var active: Bool?
    public var details: String?

        enum CodingKeys: String, CodingKey {case id = "id"
        case status = "status"
        case message = "message"
        case author = "author"
        case deployer = "deployer"
        case authorEmail = "authorEmail"
        case startTime = "startTime"
        case endTime = "endTime"
        case active = "active"
        case details = "details"
        }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.id) {
        self.id = try container.decode(String?.self, forKey: .id)
    }
    if container.contains(.status) {
        self.status = try container.decode(Int32?.self, forKey: .status)
    }
    if container.contains(.message) {
        self.message = try container.decode(String?.self, forKey: .message)
    }
    if container.contains(.author) {
        self.author = try container.decode(String?.self, forKey: .author)
    }
    if container.contains(.deployer) {
        self.deployer = try container.decode(String?.self, forKey: .deployer)
    }
    if container.contains(.authorEmail) {
        self.authorEmail = try container.decode(String?.self, forKey: .authorEmail)
    }
    if container.contains(.startTime) {
        self.startTime = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .startTime)), format: .dateTime)
    }
    if container.contains(.endTime) {
        self.endTime = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .endTime)), format: .dateTime)
    }
    if container.contains(.active) {
        self.active = try container.decode(Bool?.self, forKey: .active)
    }
    if container.contains(.details) {
        self.details = try container.decode(String?.self, forKey: .details)
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
    if self.id != nil { try container.encode(self.id, forKey: .id) }
    if self.status != nil { try container.encode(self.status, forKey: .status) }
    if self.message != nil { try container.encode(self.message, forKey: .message) }
    if self.author != nil { try container.encode(self.author, forKey: .author) }
    if self.deployer != nil { try container.encode(self.deployer, forKey: .deployer) }
    if self.authorEmail != nil { try container.encode(self.authorEmail, forKey: .authorEmail) }
    if self.startTime != nil {
        try container.encode(DateConverter.toString(date: self.startTime!, format: .dateTime), forKey: .startTime)
    }
    if self.endTime != nil {
        try container.encode(DateConverter.toString(date: self.endTime!, format: .dateTime), forKey: .endTime)
    }
    if self.active != nil { try container.encode(self.active, forKey: .active) }
    if self.details != nil { try container.encode(self.details, forKey: .details) }
  }
}

extension DataFactory {
  public static func createDeploymentPropertiesProtocol() -> DeploymentPropertiesProtocol {
    return DeploymentPropertiesData()
  }
}
