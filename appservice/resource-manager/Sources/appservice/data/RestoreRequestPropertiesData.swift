// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct RestoreRequestPropertiesData : RestoreRequestPropertiesProtocol {
    public var storageAccountUrl: String?
    public var blobName: String?
    public var overwrite: Bool?
    public var siteName: String?
    public var databases: [DatabaseBackupSettingProtocol?]?
    public var ignoreConflictingHostNames: Bool?
    public var ignoreDatabases: Bool?
    public var appServicePlan: String?
    public var operationType: BackupRestoreOperationTypeEnum?
    public var adjustConnectionStrings: Bool?
    public var hostingEnvironment: String?

        enum CodingKeys: String, CodingKey {case storageAccountUrl = "storageAccountUrl"
        case blobName = "blobName"
        case overwrite = "overwrite"
        case siteName = "siteName"
        case databases = "databases"
        case ignoreConflictingHostNames = "ignoreConflictingHostNames"
        case ignoreDatabases = "ignoreDatabases"
        case appServicePlan = "appServicePlan"
        case operationType = "operationType"
        case adjustConnectionStrings = "adjustConnectionStrings"
        case hostingEnvironment = "hostingEnvironment"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.storageAccountUrl) {
        self.storageAccountUrl = try container.decode(String?.self, forKey: .storageAccountUrl)
    }
    if container.contains(.blobName) {
        self.blobName = try container.decode(String?.self, forKey: .blobName)
    }
    if container.contains(.overwrite) {
        self.overwrite = try container.decode(Bool?.self, forKey: .overwrite)
    }
    if container.contains(.siteName) {
        self.siteName = try container.decode(String?.self, forKey: .siteName)
    }
    if container.contains(.databases) {
        self.databases = try container.decode([DatabaseBackupSettingData?]?.self, forKey: .databases)
    }
    if container.contains(.ignoreConflictingHostNames) {
        self.ignoreConflictingHostNames = try container.decode(Bool?.self, forKey: .ignoreConflictingHostNames)
    }
    if container.contains(.ignoreDatabases) {
        self.ignoreDatabases = try container.decode(Bool?.self, forKey: .ignoreDatabases)
    }
    if container.contains(.appServicePlan) {
        self.appServicePlan = try container.decode(String?.self, forKey: .appServicePlan)
    }
    if container.contains(.operationType) {
        self.operationType = try container.decode(BackupRestoreOperationTypeEnum?.self, forKey: .operationType)
    }
    if container.contains(.adjustConnectionStrings) {
        self.adjustConnectionStrings = try container.decode(Bool?.self, forKey: .adjustConnectionStrings)
    }
    if container.contains(.hostingEnvironment) {
        self.hostingEnvironment = try container.decode(String?.self, forKey: .hostingEnvironment)
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
    if self.storageAccountUrl != nil {try container.encode(self.storageAccountUrl, forKey: .storageAccountUrl)}
    if self.blobName != nil {try container.encode(self.blobName, forKey: .blobName)}
    if self.overwrite != nil {try container.encode(self.overwrite, forKey: .overwrite)}
    if self.siteName != nil {try container.encode(self.siteName, forKey: .siteName)}
    if self.databases != nil {try container.encode(self.databases as! [DatabaseBackupSettingData?]?, forKey: .databases)}
    if self.ignoreConflictingHostNames != nil {try container.encode(self.ignoreConflictingHostNames, forKey: .ignoreConflictingHostNames)}
    if self.ignoreDatabases != nil {try container.encode(self.ignoreDatabases, forKey: .ignoreDatabases)}
    if self.appServicePlan != nil {try container.encode(self.appServicePlan, forKey: .appServicePlan)}
    if self.operationType != nil {try container.encode(self.operationType, forKey: .operationType)}
    if self.adjustConnectionStrings != nil {try container.encode(self.adjustConnectionStrings, forKey: .adjustConnectionStrings)}
    if self.hostingEnvironment != nil {try container.encode(self.hostingEnvironment, forKey: .hostingEnvironment)}
  }
}

extension DataFactory {
  public static func createRestoreRequestPropertiesProtocol() -> RestoreRequestPropertiesProtocol {
    return RestoreRequestPropertiesData()
  }
}
