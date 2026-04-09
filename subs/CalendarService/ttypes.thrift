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

struct ListEventsResponse {
    1: required Meta meta,
    2: required list<CalendarEvent> events,
}

struct UpdateEventsResponse {
    1: optional list<CalendarError> errors,
    2: optional i64 eventUpdatedAt,
}

struct CreateEventsResponse {
    1: optional list<CalendarEventError> errors,
    2: optional i64 eventUpdatedAt,
}

struct DeleteEventsResponse {
    1: optional list<CalendarEventError> errors,
    2: optional i64 eventUpdatedAt,
}

struct RespondToInvitationResponse {
    1: optional i64 eventUpdatedAt,
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

struct CalendarEventError {
    1: required CalendarErrorCode errorCode,
    2: required string message,
    3: optional string eventId,
    4: optional i64 recurId,
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

struct CalendarEvent {
    1: optional string id,
    2: optional string calendarId,
    3: optional i64 startTime,
    4: optional i64 endTime,
    5: optional string timezone,
    6: optional string title,
    7: optional bool isAllDay,
    8: optional string location,
    9: optional string url,
    10: optional string description,
    11: optional CalendarRecurrence recurrence,
    12: optional list<CalendarInvitee> invitees,
    13: optional list<i32> reminder,
    14: optional bool isDeleted,
    15: optional string messageId,
    16: optional list<CalendarChildEvent> recurrenceChildEvents,
    17: optional i64 clientUpdatedAt,
    18: optional bool isEditableInLineCalendar,
    19: optional string creatorId,
    20: optional i32 colorId,
    21: optional CalendarAppReminder appReminders,
    22: optional string stampId,
}

struct CalendarRecurrence {
    1: optional i32 frequency,
    2: optional i32 interval,
    3: optional i64 until,
    4: optional list<string> byDay,
    5: optional list<i64> exceptIds,
}

struct CalendarInvitee {
    1: optional string inviteeId,
    #
    3: optional CalendarInviteeStatus status,
    4: optional i64 clientUpdatedAt,
}

struct CalendarChildEvent {
    1: optional i64 startTime,
    2: optional i64 endTime,
    3: optional string timezone,
    4: optional string title,
    5: optional bool isAllDay,
    6: optional string location,
    7: optional string url,
    8: optional string description,
    9: optional list<CalendarInvitee> invitees,
    10: optional list<i32> reminder,
    11: optional bool isDeleted,
    12: optional string messageId,
    13: optional i64 recurId,
    14: optional i64 clientUpdatedAt,
    15: optional bool isEditableInLineCalendar,
    16: optional string creatorId,
    17: optional i32 colorId,
    18: optional CalendarAppReminder appReminders,
    19: optional string stampId,
}

struct CalendarAppReminder {
    1: optional list<i32> offset,
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

enum CalendarInviteeStatus {
    UNRECOGNIZED                   = -1,
    INVITATION_STATUS_UNSPECIFIED  = 0,
    INVITATION_STATUS_NEEDS_ACTION = 1,
    INVITATION_STATUS_ACCEPTED     = 2,
    INVITATION_STATUS_DECLINED     = 3,
}