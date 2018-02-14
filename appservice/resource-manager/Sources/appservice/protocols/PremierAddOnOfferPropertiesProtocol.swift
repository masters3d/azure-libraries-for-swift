// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// PremierAddOnOfferPropertiesProtocol is premierAddOnOffer resource specific properties
public protocol PremierAddOnOfferPropertiesProtocol : Codable {
     var sku: String? { get set }
     var product: String? { get set }
     var vendor: String? { get set }
     var name: String? { get set }
     var promoCodeRequired: Bool? { get set }
     var quota: Int32? { get set }
     var webHostingPlanRestrictions: AppServicePlanRestrictionsEnum? { get set }
     var privacyPolicyUrl: String? { get set }
     var legalTermsUrl: String? { get set }
     var marketplacePublisher: String? { get set }
     var marketplaceOffer: String? { get set }
}
