// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// MarketplacePropertiesProtocol is the properties of the marketplace usage detail.
public protocol MarketplacePropertiesProtocol : Codable {
     var billingPeriodId: String? { get set }
     var usageStart: Date? { get set }
     var usageEnd: Date? { get set }
     var resourceRate: Decimal? { get set }
     var offerName: String? { get set }
     var resourceGroup: String? { get set }
     var orderNumber: String? { get set }
     var instanceName: String? { get set }
     var instanceId: String? { get set }
     var currency: String? { get set }
     var consumedQuantity: Decimal? { get set }
     var unitOfMeasure: String? { get set }
     var pretaxCost: Decimal? { get set }
     var isEstimated: Bool? { get set }
     var meterId: String? { get set }
     var subscriptionGuid: String? { get set }
     var subscriptionName: String? { get set }
     var accountName: String? { get set }
     var departmentName: String? { get set }
     var consumedService: String? { get set }
     var costCenter: String? { get set }
     var additionalProperties: String? { get set }
     var publisherName: String? { get set }
     var planName: String? { get set }
}
