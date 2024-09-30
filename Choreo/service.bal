import ballerina/graphql;

listener graphql:Listener gqlListener = check new(9090);

service /mobile/documents on gqlListener {
    resource function get name() returns string {
        return "Mobile Documents";
    }
}

service /mobile/data on gqlListener {
    resource function get mobileData() returns string {
        return "Mobile Data";
    }
}
