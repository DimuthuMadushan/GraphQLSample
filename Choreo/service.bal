import ballerina/http;

listener http:Listener httpListener = check new(9090);

service /mobile on httpListener {
    resource function get documents/name() returns string {
        return "Mobile Documents";
    }
}

service /mobile on httpListener {
    resource function get data/mobileData() returns string {
        return "Mobile Data";
    }
}
