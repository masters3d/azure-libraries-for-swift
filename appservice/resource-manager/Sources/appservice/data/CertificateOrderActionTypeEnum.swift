// CertificateOrderActionType enumerates the values for certificate order action type.

// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
public enum CertificateOrderActionTypeEnum: String, Codable
{
// CertificateExpirationWarning specifies the certificate expiration warning state for certificate order action type.
    case CertificateExpirationWarning = "CertificateExpirationWarning"
// CertificateExpired specifies the certificate expired state for certificate order action type.
    case CertificateExpired = "CertificateExpired"
// CertificateIssued specifies the certificate issued state for certificate order action type.
    case CertificateIssued = "CertificateIssued"
// CertificateOrderCanceled specifies the certificate order canceled state for certificate order action type.
    case CertificateOrderCanceled = "CertificateOrderCanceled"
// CertificateOrderCreated specifies the certificate order created state for certificate order action type.
    case CertificateOrderCreated = "CertificateOrderCreated"
// CertificateRevoked specifies the certificate revoked state for certificate order action type.
    case CertificateRevoked = "CertificateRevoked"
// DomainValidationComplete specifies the domain validation complete state for certificate order action type.
    case DomainValidationComplete = "DomainValidationComplete"
// FraudCleared specifies the fraud cleared state for certificate order action type.
    case FraudCleared = "FraudCleared"
// FraudDetected specifies the fraud detected state for certificate order action type.
    case FraudDetected = "FraudDetected"
// FraudDocumentationRequired specifies the fraud documentation required state for certificate order action type.
    case FraudDocumentationRequired = "FraudDocumentationRequired"
// OrgNameChange specifies the org name change state for certificate order action type.
    case OrgNameChange = "OrgNameChange"
// OrgValidationComplete specifies the org validation complete state for certificate order action type.
    case OrgValidationComplete = "OrgValidationComplete"
// SanDrop specifies the san drop state for certificate order action type.
    case SanDrop = "SanDrop"
// Unknown specifies the unknown state for certificate order action type.
    case Unknown = "Unknown"
}
