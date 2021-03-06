// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// AppServiceCertificateOrderPatchResourcePropertiesProtocol is appServiceCertificateOrderPatchResource resource
// specific properties
public protocol AppServiceCertificateOrderPatchResourcePropertiesProtocol : Codable {
     var certificates: [String:AppServiceCertificateProtocol?]? { get set }
     var distinguishedName: String? { get set }
     var domainVerificationToken: String? { get set }
     var validityInYears: Int32? { get set }
     var keySize: Int32? { get set }
     var productType: CertificateProductTypeEnum? { get set }
     var autoRenew: Bool? { get set }
     var provisioningState: ProvisioningStateEnum? { get set }
     var status: CertificateOrderStatusEnum? { get set }
     var signedCertificate: CertificateDetailsProtocol? { get set }
     var csr: String? { get set }
     var intermediate: CertificateDetailsProtocol? { get set }
     var root: CertificateDetailsProtocol? { get set }
     var serialNumber: String? { get set }
     var lastCertificateIssuanceTime: Date? { get set }
     var expirationTime: Date? { get set }
     var isPrivateKeyExternal: Bool? { get set }
     var appServiceCertificateNotRenewableReasons: [String?]? { get set }
     var nextAutoRenewalTimeStamp: Date? { get set }
}
