// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ExpressRouteServiceProviderBandwidthsOfferedProtocol is contains bandwidths offered in ExpressRouteServiceProvider
// resources.
public protocol ExpressRouteServiceProviderBandwidthsOfferedProtocol : Codable {
     var offerName: String? { get set }
     var valueInMbps: Int32? { get set }
}
