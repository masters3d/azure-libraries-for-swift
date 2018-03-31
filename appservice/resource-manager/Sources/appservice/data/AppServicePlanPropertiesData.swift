// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
import azureSwiftRuntime
internal struct AppServicePlanPropertiesData : AppServicePlanPropertiesProtocol {
    public var name: String?
    public var workerTierName: String?
    public var status: StatusOptionsEnum?
    public var subscription: String?
    public var adminSiteName: String?
    public var hostingEnvironmentProfile: HostingEnvironmentProfileProtocol?
    public var maximumNumberOfWorkers: Int32?
    public var geoRegion: String?
    public var perSiteScaling: Bool?
    public var numberOfSites: Int32?
    public var isSpot: Bool?
    public var spotExpirationTime: Date?
    public var resourceGroup: String?
    public var reserved: Bool?
    public var targetWorkerCount: Int32?
    public var targetWorkerSizeId: Int32?
    public var provisioningState: ProvisioningStateEnum?

        enum CodingKeys: String, CodingKey {case name = "name"
        case workerTierName = "workerTierName"
        case status = "status"
        case subscription = "subscription"
        case adminSiteName = "adminSiteName"
        case hostingEnvironmentProfile = "hostingEnvironmentProfile"
        case maximumNumberOfWorkers = "maximumNumberOfWorkers"
        case geoRegion = "geoRegion"
        case perSiteScaling = "perSiteScaling"
        case numberOfSites = "numberOfSites"
        case isSpot = "isSpot"
        case spotExpirationTime = "spotExpirationTime"
        case resourceGroup = "resourceGroup"
        case reserved = "reserved"
        case targetWorkerCount = "targetWorkerCount"
        case targetWorkerSizeId = "targetWorkerSizeId"
        case provisioningState = "provisioningState"
        }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      if container.contains(.name) {
        self.name = try container.decode(String?.self, forKey: .name)
    }
    if container.contains(.workerTierName) {
        self.workerTierName = try container.decode(String?.self, forKey: .workerTierName)
    }
    if container.contains(.status) {
        self.status = try container.decode(StatusOptionsEnum?.self, forKey: .status)
    }
    if container.contains(.subscription) {
        self.subscription = try container.decode(String?.self, forKey: .subscription)
    }
    if container.contains(.adminSiteName) {
        self.adminSiteName = try container.decode(String?.self, forKey: .adminSiteName)
    }
    if container.contains(.hostingEnvironmentProfile) {
        self.hostingEnvironmentProfile = try container.decode(HostingEnvironmentProfileData?.self, forKey: .hostingEnvironmentProfile)
    }
    if container.contains(.maximumNumberOfWorkers) {
        self.maximumNumberOfWorkers = try container.decode(Int32?.self, forKey: .maximumNumberOfWorkers)
    }
    if container.contains(.geoRegion) {
        self.geoRegion = try container.decode(String?.self, forKey: .geoRegion)
    }
    if container.contains(.perSiteScaling) {
        self.perSiteScaling = try container.decode(Bool?.self, forKey: .perSiteScaling)
    }
    if container.contains(.numberOfSites) {
        self.numberOfSites = try container.decode(Int32?.self, forKey: .numberOfSites)
    }
    if container.contains(.isSpot) {
        self.isSpot = try container.decode(Bool?.self, forKey: .isSpot)
    }
    if container.contains(.spotExpirationTime) {
        self.spotExpirationTime = DateConverter.fromString(dateStr: (try container.decode(String?.self, forKey: .spotExpirationTime)), format: .dateTime)
    }
    if container.contains(.resourceGroup) {
        self.resourceGroup = try container.decode(String?.self, forKey: .resourceGroup)
    }
    if container.contains(.reserved) {
        self.reserved = try container.decode(Bool?.self, forKey: .reserved)
    }
    if container.contains(.targetWorkerCount) {
        self.targetWorkerCount = try container.decode(Int32?.self, forKey: .targetWorkerCount)
    }
    if container.contains(.targetWorkerSizeId) {
        self.targetWorkerSizeId = try container.decode(Int32?.self, forKey: .targetWorkerSizeId)
    }
    if container.contains(.provisioningState) {
        self.provisioningState = try container.decode(ProvisioningStateEnum?.self, forKey: .provisioningState)
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
    if self.name != nil { try container.encode(self.name, forKey: .name) }
    if self.workerTierName != nil { try container.encode(self.workerTierName, forKey: .workerTierName) }
    if self.status != nil { try container.encode(self.status, forKey: .status) }
    if self.subscription != nil { try container.encode(self.subscription, forKey: .subscription) }
    if self.adminSiteName != nil { try container.encode(self.adminSiteName, forKey: .adminSiteName) }
    if self.hostingEnvironmentProfile != nil { try container.encode(self.hostingEnvironmentProfile as! HostingEnvironmentProfileData?, forKey: .hostingEnvironmentProfile) }
    if self.maximumNumberOfWorkers != nil { try container.encode(self.maximumNumberOfWorkers, forKey: .maximumNumberOfWorkers) }
    if self.geoRegion != nil { try container.encode(self.geoRegion, forKey: .geoRegion) }
    if self.perSiteScaling != nil { try container.encode(self.perSiteScaling, forKey: .perSiteScaling) }
    if self.numberOfSites != nil { try container.encode(self.numberOfSites, forKey: .numberOfSites) }
    if self.isSpot != nil { try container.encode(self.isSpot, forKey: .isSpot) }
    if self.spotExpirationTime != nil {
        try container.encode(DateConverter.toString(date: self.spotExpirationTime!, format: .dateTime), forKey: .spotExpirationTime)
    }
    if self.resourceGroup != nil { try container.encode(self.resourceGroup, forKey: .resourceGroup) }
    if self.reserved != nil { try container.encode(self.reserved, forKey: .reserved) }
    if self.targetWorkerCount != nil { try container.encode(self.targetWorkerCount, forKey: .targetWorkerCount) }
    if self.targetWorkerSizeId != nil { try container.encode(self.targetWorkerSizeId, forKey: .targetWorkerSizeId) }
    if self.provisioningState != nil { try container.encode(self.provisioningState, forKey: .provisioningState) }
  }
}

extension DataFactory {
  public static func createAppServicePlanPropertiesProtocol() -> AppServicePlanPropertiesProtocol {
    return AppServicePlanPropertiesData()
  }
}
