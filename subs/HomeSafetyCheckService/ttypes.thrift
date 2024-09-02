struct DisasterInfo {
    1: required string disasterId,
    2: required string title,
    3: required string region,
    4: required string disasterDescription,
    5: required string seeMoreUrl,
    7: required i32 status,
}

struct GetDisasterCasesRequest {
}

struct GetDisasterCasesResponse {
    1: required list<DisasterInfo> disasters,
    2: required list<string> messageTemplate,
    3: required i64 ttlInMillis,
}