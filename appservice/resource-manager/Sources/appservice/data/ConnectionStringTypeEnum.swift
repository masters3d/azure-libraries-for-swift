// ConnectionStringType enumerates the values for connection string type.

// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
public enum ConnectionStringTypeEnum: String, Codable
{
// ApiHub specifies the api hub state for connection string type.
    case ApiHub = "ApiHub"
// Custom specifies the custom state for connection string type.
    case Custom = "Custom"
// DocDb specifies the doc db state for connection string type.
    case DocDb = "DocDb"
// EventHub specifies the event hub state for connection string type.
    case EventHub = "EventHub"
// MySql specifies the my sql state for connection string type.
    case MySql = "MySql"
// NotificationHub specifies the notification hub state for connection string type.
    case NotificationHub = "NotificationHub"
// PostgreSQL specifies the postgre sql state for connection string type.
    case PostgreSQL = "PostgreSQL"
// RedisCache specifies the redis cache state for connection string type.
    case RedisCache = "RedisCache"
// ServiceBus specifies the service bus state for connection string type.
    case ServiceBus = "ServiceBus"
// SQLAzure specifies the sql azure state for connection string type.
    case SQLAzure = "SQLAzure"
// SQLServer specifies the sql server state for connection string type.
    case SQLServer = "SQLServer"
}
