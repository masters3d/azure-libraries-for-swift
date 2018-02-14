// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// PacketCaptureQueryStatusResultProtocol is status of packet capture session.
public protocol PacketCaptureQueryStatusResultProtocol : Codable {
     var name: String? { get set }
     var id: String? { get set }
     var captureStartTime: Date? { get set }
     var packetCaptureStatus: PcStatusEnum? { get set }
     var stopReason: String? { get set }
     var packetCaptureError: [PcErrorEnum?]? { get set }
}
