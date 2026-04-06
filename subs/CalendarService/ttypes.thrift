struct ListAllCalendarsResponse {
    1: required Meta meta,
    2: required list<Calendar> calendars,
}

struct GetChatCalendarResponse {
    1: required Meta meta,
    2: required Calendar calendar,
}

struct UpdateCalendarsResponse {
    1: optional list<CalendarError> errors,
}

struct CreateChatCalendarResponse {
    1: required Calendar calendar,
}

struct CreatePersonalCalendarResponse {
    1: required Calendar calendar,
}

struct DeletePersonalCalendarResponse {
}

struct Meta {
    1: required i64 clientLastGetTime,
}

struct CalendarError {
    1: required CalendarErrorCode errorCode,
    2: required string message,
    3: optional string calendarId,
    4: optional string chatroomId,
}

struct Calendar {
    1: optional string name,
    2: optional string id,
    3: optional bool isVisible,
    4: optional bool isFavorite,
    5: optional CalendarType type,
    6: optional i32 colorId,
    7: optional string chatroomId,
    9: optional i64 updatedAt,
    10: optional i64 eventUpdatedAt,
    11: optional i64 clientUpdatedAt,
    12: optional i64 createdAt,
    13: optional bool isReminderEnabled,
    14: optional bool isInitial,
    15: optional bool isShownInCalendarList,
}

enum CalendarType {
    UNRECOGNIZED              = -1,
    CALENDAR_TYPE_UNSPECIFIED = 0,
    CALENDAR_TYPE_PERSONAL    = 1,
    CALENDAR_TYPE_CHATROOM    = 2,
}

enum CalendarErrorCode {
    UNRECOGNIZED                              = -1,
    ERROR_CODE_UNSPECIFIED                    = 0,
    ERROR_CODE_INVALID_ARGUMENT_VALUE         = 11,
    ERROR_CODE_INVALID_ARGUMENT_FORMAT        = 12,
    ERROR_CODE_INVALID_CLIENT_UPDATED_AT      = 13,
    ERROR_CODE_PERSONAL_CALENDAR_EXCEEDED     = 14,
    ERROR_CODE_DATA_NOT_FOUND                 = 21,
    ERROR_CODE_USER_NOT_FOUND                 = 22,
    ERROR_CODE_CALENDAR_NOT_FOUND             = 23,
    ERROR_CODE_FOLDER_EVENT_CONSISTENCY       = 31,
    ERROR_CODE_USER_CONSISTENCY               = 32,
    ERROR_CODE_CLIENT_UPDATED_AT_OUTDATED     = 33,
    ERROR_CODE_PERSONAL_CALENDAR_ID_DUPLICATE = 34,
    ERROR_CODE_EDIT_PERMISSION_DENIED         = 41,
    ERROR_CODE_INTERNAL_SERVER_ERROR          = 51,
    ERROR_CODE_DB_CONNECTION_ERROR            = 52,
    ERROR_CODE_EXTERNAL_API_ERROR             = 53,
    ERROR_CODE_MAINTENANCE_MODE               = 61,
    ERROR_CODE_AUTHENTICATION_REQUIRED        = 71,
    ERROR_CODE_CLIENT_ID_MISMATCH             = 72,
    ERROR_CODE_AUTHENTICATION_OTHER           = 73,
}