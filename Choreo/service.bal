import ballerina/http;

listener http:Listener httpListener = check new(9090);

service /mobile/documents on httpListener {
    resource function get name() returns string {
        return "Mobile Documents";
    }
}

service /mobile/data on httpListener {
    resource function get mobileData() returns string {
        return "Mobile Data";
    }
}
