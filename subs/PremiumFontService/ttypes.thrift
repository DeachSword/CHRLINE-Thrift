enum FontMetaType {
    FREE    = 1,
    PREMIUM = 2,
}

struct FileMeta {
    1: required string url,
    2: required string hash,
}

struct FontMeta {
    1: required string id,
    2: required string name,
    3: required string displayName,
    4: required FontMetaType type,
    5: required FileMeta font,
    6: required FileMeta fontSubset,
    7: required i64 expiresAtMillis,
}

struct GetAccessTokenResponse {
    1: required map<string, list<string>> queryParams,
    2: required map<string, list<string>> headers,
    3: required i64 expiresAtMillis,
}

struct GetFontMetasResponse {
    1: required list<FontMeta> fontMetas,
    2: required i32 ttlInSeconds,
}