


service RelationService {
    GetContactsV3Response getContactsV3() throws(
        1:RejectedException be;
        2:ServerFailureException ce;
        3:TalkException te
    );

    AddFriendByMidResponse addFriendByMid() throws(
        1:RejectedException be;
        2:ServerFailureException ce;
        3:TalkException te
    );

    GetContactCalendarEventsResponse getContactCalendarEvents() throws(
        1:RejectedException be;
        2:ServerFailureException ce;
        3:TalkException te
    );
}

