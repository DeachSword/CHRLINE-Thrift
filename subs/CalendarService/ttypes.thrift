struct ListAllCalendarsResponse {
    1: required Meta meta,
    2: required list<Calendar> calendars,
}

struct GetChatCalendarResponse {
    1: required Meta meta,
    2: required Calendar calendar,
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