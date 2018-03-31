// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct ProcessServerData : ProcessServerProtocol {
    public var friendlyName: String?
    public var id: String?
    public var ipAddress: String?
    public var osType: String?
    public var agentVersion: String?
    public var lastHeartbeat: Date?
    public var versionStatus: String?
    public var mobilityServiceUpdates: [MobilityServiceUpdateProtocol?]?
    public var hostId: String?
    public var machineCount: String?
    public var replicationPairCount: String?
    public var systemLoad: String?
    public var systemLoadStatus: String?
    public var cpuLoad: String?
    public var cpuLoadStatus: String?
    public var totalMemoryInBytes: Int64?
    public var availableMemoryInBytes: Int64?
    public var memoryUsageStatus: String?
    public var totalSpaceInBytes: Int64?
    public var availableSpaceInBytes: Int64?
    public var spaceUsageStatus: String?
    public var psServiceStatus: String?
    public var sslCertExpiryDate: Date?
    public var sslCertExpiryRemainingDays: Int32?
    public var osVersion: String?
    public var healthErrors: [HealthErrorProtocol?]?
    public var agentExpiryDate: Date?
    public var agentVersionDetails: VersionDetailsProtocol?

        enum CodingKeys: String, CodingKey {case friendlyName = "friendlyName"
        case id = "id"
        case ipAddress = "ipAddress"
        case osType = "osType"
        case agentVersion = "agentVersion"
        case lastHeartbeat = "lastHeartbeat"
        case versionStatus = "versionStatus"
        case mobilityServiceUpdates = "mobilityServiceUpdates"
        case hostId = "hostId"
        case machineCount = "machineCount"
        case replicationPairCount = "replicationPairCount"
        case systemLoad = "systemLoad"
        case systemLoadStatus = "systemLoadStatus"
        case cpuLoad = "cpuLoad"
        case cpuLoadStatus = "cpuLoadStatus"
        case totalMemoryInBytes = "totalMemoryInBytes"
        case availableMemoryInBytes = "availableMemoryInBytes"
        case memoryUsageStatus = "memoryUsageStatus"
        case totalSpaceInBytes = "totalSpaceInBytes"
        case availableSpaceInBytes = "availableSpaceInBytes"
        case spaceUsageStatus = "spaceUsageStatus"
        case psServiceStatus = "psServiceStatus"
        case sslCertExpiryDate = "sslCertExpiryDate"
        case sslCertExpiryRemainingDays = "sslCertExpiryRemainingDays"
        case osVersion = "osVersion"
        case healthErrors = "healthErrors"
        case agentExpiryDate = "agentExpiryDate"
        case agentVersionDetails = "agentVersionDetails"
        }

  public init()  {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.friendlyName) {
        self.friendlyName = try container.decode(String?.self, forKey: .friendlyName)
    }
    if container.contains(.id) {
        self.id = try container.decode(String?.self, forKey: .id)
    }
    if container.contains(.ipAddress) {
        self.ipAddress = try container.decode(String?.self, forKey: .ipAddress)
    }
    if container.contains(.osType) {
        self.osType = try container.decode(String?.self, forKey: .osType)
    }
    if container.contains(.agentVersion) {
        self.agentVersion = try container.decode(String?.self, forKey: .agentVersion)
    }
    if container.contains(.lastHeartbeat) {
        self.lastHeartbeat = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .lastHeartbeat)), format: .dateTime)
    }
    if container.contains(.versionStatus) {
        self.versionStatus = try container.decode(String?.self, forKey: .versionStatus)
    }
    if container.contains(.mobilityServiceUpdates) {
        self.mobilityServiceUpdates = try container.decode([MobilityServiceUpdateData?]?.self, forKey: .mobilityServiceUpdates)
    }
    if container.contains(.hostId) {
        self.hostId = try container.decode(String?.self, forKey: .hostId)
    }
    if container.contains(.machineCount) {
        self.machineCount = try container.decode(String?.self, forKey: .machineCount)
    }
    if container.contains(.replicationPairCount) {
        self.replicationPairCount = try container.decode(String?.self, forKey: .replicationPairCount)
    }
    if container.contains(.systemLoad) {
        self.systemLoad = try container.decode(String?.self, forKey: .systemLoad)
    }
    if container.contains(.systemLoadStatus) {
        self.systemLoadStatus = try container.decode(String?.self, forKey: .systemLoadStatus)
    }
    if container.contains(.cpuLoad) {
        self.cpuLoad = try container.decode(String?.self, forKey: .cpuLoad)
    }
    if container.contains(.cpuLoadStatus) {
        self.cpuLoadStatus = try container.decode(String?.self, forKey: .cpuLoadStatus)
    }
    if container.contains(.totalMemoryInBytes) {
        self.totalMemoryInBytes = try container.decode(Int64?.self, forKey: .totalMemoryInBytes)
    }
    if container.contains(.availableMemoryInBytes) {
        self.availableMemoryInBytes = try container.decode(Int64?.self, forKey: .availableMemoryInBytes)
    }
    if container.contains(.memoryUsageStatus) {
        self.memoryUsageStatus = try container.decode(String?.self, forKey: .memoryUsageStatus)
    }
    if container.contains(.totalSpaceInBytes) {
        self.totalSpaceInBytes = try container.decode(Int64?.self, forKey: .totalSpaceInBytes)
    }
    if container.contains(.availableSpaceInBytes) {
        self.availableSpaceInBytes = try container.decode(Int64?.self, forKey: .availableSpaceInBytes)
    }
    if container.contains(.spaceUsageStatus) {
        self.spaceUsageStatus = try container.decode(String?.self, forKey: .spaceUsageStatus)
    }
    if container.contains(.psServiceStatus) {
        self.psServiceStatus = try container.decode(String?.self, forKey: .psServiceStatus)
    }
    if container.contains(.sslCertExpiryDate) {
        self.sslCertExpiryDate = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .sslCertExpiryDate)), format: .dateTime)
    }
    if container.contains(.sslCertExpiryRemainingDays) {
        self.sslCertExpiryRemainingDays = try container.decode(Int32?.self, forKey: .sslCertExpiryRemainingDays)
    }
    if container.contains(.osVersion) {
        self.osVersion = try container.decode(String?.self, forKey: .osVersion)
    }
    if container.contains(.healthErrors) {
        self.healthErrors = try container.decode([HealthErrorData?]?.self, forKey: .healthErrors)
    }
    if container.contains(.agentExpiryDate) {
        self.agentExpiryDate = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .agentExpiryDate)), format: .dateTime)
    }
    if container.contains(.agentVersionDetails) {
        self.agentVersionDetails = try container.decode(VersionDetailsData?.self, forKey: .agentVersionDetails)
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
    if self.friendlyName != nil {try container.encode(self.friendlyName, forKey: .friendlyName)}
    if self.id != nil {try container.encode(self.id, forKey: .id)}
    if self.ipAddress != nil {try container.encode(self.ipAddress, forKey: .ipAddress)}
    if self.osType != nil {try container.encode(self.osType, forKey: .osType)}
    if self.agentVersion != nil {try container.encode(self.agentVersion, forKey: .agentVersion)}
    if self.lastHeartbeat != nil {
        try container.encode(DateConverter.toString(date: self.lastHeartbeat!, format: .dateTime), forKey: .lastHeartbeat)
    }
    if self.versionStatus != nil {try container.encode(self.versionStatus, forKey: .versionStatus)}
    if self.mobilityServiceUpdates != nil {try container.encode(self.mobilityServiceUpdates as! [MobilityServiceUpdateData?]?, forKey: .mobilityServiceUpdates)}
    if self.hostId != nil {try container.encode(self.hostId, forKey: .hostId)}
    if self.machineCount != nil {try container.encode(self.machineCount, forKey: .machineCount)}
    if self.replicationPairCount != nil {try container.encode(self.replicationPairCount, forKey: .replicationPairCount)}
    if self.systemLoad != nil {try container.encode(self.systemLoad, forKey: .systemLoad)}
    if self.systemLoadStatus != nil {try container.encode(self.systemLoadStatus, forKey: .systemLoadStatus)}
    if self.cpuLoad != nil {try container.encode(self.cpuLoad, forKey: .cpuLoad)}
    if self.cpuLoadStatus != nil {try container.encode(self.cpuLoadStatus, forKey: .cpuLoadStatus)}
    if self.totalMemoryInBytes != nil {try container.encode(self.totalMemoryInBytes, forKey: .totalMemoryInBytes)}
    if self.availableMemoryInBytes != nil {try container.encode(self.availableMemoryInBytes, forKey: .availableMemoryInBytes)}
    if self.memoryUsageStatus != nil {try container.encode(self.memoryUsageStatus, forKey: .memoryUsageStatus)}
    if self.totalSpaceInBytes != nil {try container.encode(self.totalSpaceInBytes, forKey: .totalSpaceInBytes)}
    if self.availableSpaceInBytes != nil {try container.encode(self.availableSpaceInBytes, forKey: .availableSpaceInBytes)}
    if self.spaceUsageStatus != nil {try container.encode(self.spaceUsageStatus, forKey: .spaceUsageStatus)}
    if self.psServiceStatus != nil {try container.encode(self.psServiceStatus, forKey: .psServiceStatus)}
    if self.sslCertExpiryDate != nil {
        try container.encode(DateConverter.toString(date: self.sslCertExpiryDate!, format: .dateTime), forKey: .sslCertExpiryDate)
    }
    if self.sslCertExpiryRemainingDays != nil {try container.encode(self.sslCertExpiryRemainingDays, forKey: .sslCertExpiryRemainingDays)}
    if self.osVersion != nil {try container.encode(self.osVersion, forKey: .osVersion)}
    if self.healthErrors != nil {try container.encode(self.healthErrors as! [HealthErrorData?]?, forKey: .healthErrors)}
    if self.agentExpiryDate != nil {
        try container.encode(DateConverter.toString(date: self.agentExpiryDate!, format: .dateTime), forKey: .agentExpiryDate)
    }
    if self.agentVersionDetails != nil {try container.encode(self.agentVersionDetails as! VersionDetailsData?, forKey: .agentVersionDetails)}
  }
}

extension DataFactory {
  public static func createProcessServerProtocol() -> ProcessServerProtocol {
    return ProcessServerData()
  }
}
