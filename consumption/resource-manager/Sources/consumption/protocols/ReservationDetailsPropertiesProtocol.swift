// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ReservationDetailsPropertiesProtocol is the properties of the reservation details.
public protocol ReservationDetailsPropertiesProtocol : Codable {
     var reservationOrderId: String? { get set }
     var reservationId: String? { get set }
     var skuName: String? { get set }
     var reservedHours: Decimal? { get set }
     var usageDate: Date? { get set }
     var usedHours: Decimal? { get set }
     var instanceId: String? { get set }
     var totalReservedQuantity: Decimal? { get set }
}
