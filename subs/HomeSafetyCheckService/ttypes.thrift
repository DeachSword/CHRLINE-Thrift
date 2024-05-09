


struct DisasterInfo {
    1: string   disasterId;            
    2: string   title;                 
    3: string   region;                
    4: string   disasterDescription;   
    5: string   seeMoreUrl;            
    7: i32      status;                
}

struct GetDisasterCasesRequest {
}

struct GetDisasterCasesResponse {
    1: list<DisasterInfo>   disasters;         
    2: list<string>         messageTemplate;   
    3: i64                  ttlInMillis;       
}


