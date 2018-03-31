// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// ReservationsDetails is the consumption management client provides access to consumption resources for Azure
// Enterprise Subscriptions.
import Foundation
import azureSwiftRuntime
extension Commands {
public struct ReservationsDetails {
    public static func ListByReservationOrder(reservationOrderId: String, filter: String) -> ReservationsDetailsListByReservationOrder {
        return ListByReservationOrderCommand(reservationOrderId: reservationOrderId, filter: filter)
    }
    public static func ListByReservationOrderAndReservation(reservationOrderId: String, reservationId: String, filter: String) -> ReservationsDetailsListByReservationOrderAndReservation {
        return ListByReservationOrderAndReservationCommand(reservationOrderId: reservationOrderId, reservationId: reservationId, filter: filter)
    }
}
}
