// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ContinuousWebJobPropertiesData : ContinuousWebJobPropertiesProtocol {
    public var status: ContinuousWebJobStatusEnum?
    public var detailedStatus: String?
    public var logUrl: String?
    public var name: String?
    public var runCommand: String?
    public var url: String?
    public var extraInfoUrl: String?
    public var jobType: WebJobTypeEnum?
    public var error: String?
    public var usingSdk: Bool?
    public var settings: [String:[String: String?]]?

        enum CodingKeys: String, CodingKey {case status = "status"
        case detailedStatus = "detailedStatus"
        case logUrl = "logUrl"
        case name = "name"
        case runCommand = "runCommand"
        case url = "url"
        case extraInfoUrl = "extraInfoUrl"
        case jobType = "jobType"
        case error = "error"
        case usingSdk = "usingSdk"
        case settings = "settings"
        }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.status) {
        self.status = try container.decode(ContinuousWebJobStatusEnum?.self, forKey: .status)
    }
    if container.contains(.detailedStatus) {
        self.detailedStatus = try container.decode(String?.self, forKey: .detailedStatus)
    }
    if container.contains(.logUrl) {
        self.logUrl = try container.decode(String?.self, forKey: .logUrl)
    }
    if container.contains(.name) {
        self.name = try container.decode(String?.self, forKey: .name)
    }
    if container.contains(.runCommand) {
        self.runCommand = try container.decode(String?.self, forKey: .runCommand)
    }
    if container.contains(.url) {
        self.url = try container.decode(String?.self, forKey: .url)
    }
    if container.contains(.extraInfoUrl) {
        self.extraInfoUrl = try container.decode(String?.self, forKey: .extraInfoUrl)
    }
    if container.contains(.jobType) {
        self.jobType = try container.decode(WebJobTypeEnum?.self, forKey: .jobType)
    }
    if container.contains(.error) {
        self.error = try container.decode(String?.self, forKey: .error)
    }
    if container.contains(.usingSdk) {
        self.usingSdk = try container.decode(Bool?.self, forKey: .usingSdk)
    }
    if container.contains(.settings) {
        self.settings = try container.decode([String:[String: String?]]?.self, forKey: .settings)
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
    if self.status != nil { try container.encode(self.status, forKey: .status) }
    if self.detailedStatus != nil { try container.encode(self.detailedStatus, forKey: .detailedStatus) }
    if self.logUrl != nil { try container.encode(self.logUrl, forKey: .logUrl) }
    if self.name != nil { try container.encode(self.name, forKey: .name) }
    if self.runCommand != nil { try container.encode(self.runCommand, forKey: .runCommand) }
    if self.url != nil { try container.encode(self.url, forKey: .url) }
    if self.extraInfoUrl != nil { try container.encode(self.extraInfoUrl, forKey: .extraInfoUrl) }
    if self.jobType != nil { try container.encode(self.jobType, forKey: .jobType) }
    if self.error != nil { try container.encode(self.error, forKey: .error) }
    if self.usingSdk != nil { try container.encode(self.usingSdk, forKey: .usingSdk) }
    if self.settings != nil { try container.encode(self.settings, forKey: .settings) }
  }
}

extension DataFactory {
  public static func createContinuousWebJobPropertiesProtocol() -> ContinuousWebJobPropertiesProtocol {
    return ContinuousWebJobPropertiesData()
  }
}
