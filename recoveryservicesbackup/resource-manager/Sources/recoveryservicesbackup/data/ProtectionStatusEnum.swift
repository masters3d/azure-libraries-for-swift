// ProtectionStatus enumerates the values for protection status.

// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
public enum ProtectionStatusEnum: String, Codable {
// ProtectionStatusInvalid specifies the protection status invalid state for protection status.
    case ProtectionStatusInvalid = "Invalid"
// ProtectionStatusNotProtected specifies the protection status not protected state for protection status.
    case ProtectionStatusNotProtected = "NotProtected"
// ProtectionStatusProtected specifies the protection status protected state for protection status.
    case ProtectionStatusProtected = "Protected"
// ProtectionStatusProtecting specifies the protection status protecting state for protection status.
    case ProtectionStatusProtecting = "Protecting"
// ProtectionStatusProtectionFailed specifies the protection status protection failed state for protection status.
    case ProtectionStatusProtectionFailed = "ProtectionFailed"
}
