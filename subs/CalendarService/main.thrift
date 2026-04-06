include "./ttypes.thrift"
include "../Exceptions.thrift"

service CalendarService {
    ListAllCalendarsResponse listAllCalendars() throws(),
    GetChatCalendarResponse getChatCalendar() throws(),
    UpdateCalendarsResponse updateCalendars() throws(),
    CreateChatCalendarResponse createChatCalendar() throws(),
    CreatePersonalCalendarResponse createPersonalCalendar() throws(),
    DeletePersonalCalendarResponse deletePersonalCalendar() throws(),
}