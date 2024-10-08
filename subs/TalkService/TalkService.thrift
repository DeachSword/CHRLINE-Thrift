include "../Exceptions.thrift"
include "./ttypes.thrift"

service TalkService {
    Profile getProfile(1: TalkSyncReason syncReason) throws(1: TalkException e),
    Message sendMessage(1: i32 seq, 2: Message message) throws(1: TalkException e),
    void unsendMessage(1: i32 seq, 2: string messageId) throws(1: TalkException e),
    void requestResendMessage(1: i32 reqSeq, 2: string senderMid, 3: string messageId) throws(1: TalkException e),
    void respondResendMessage(1: i32 reqSeq, 2: string receiverMid, 3: string originalMessageId, 4: Message resendMessage, 5: ErrorCode errorCode) throws(1: TalkException e),
    void sendChatChecked(1: i32 seq, 2: string chatMid, 3: string lastMessageId, 4: i8 sessionId) throws(1: TalkException e),
    Contact getContact(2: string id) throws(1: TalkException e),
    list<Contact> getContacts(2: list<string> ids) throws(1: TalkException e),
    GetContactsV2Response getContactsV2(1: GetContactsV2Request request, 2: TalkSyncReason syncReason) throws(1: TalkException e),
    map<string, Contact> findAndAddContactsByMid(1: i32 reqSeq, 2: string mid, 3: ContactType type, 4: string reference) throws(1: TalkException e),
    map<string, Contact> findAndAddContactsByPhone(1: i32 reqSeq, 2: set<string> phones, 3: string reference) throws(1: TalkException e),
    list<string> getAllContactIds() throws(1: TalkException e),
    list<string> getBlockedContactIds() throws(1: TalkException e),
    list<string> getBlockedRecommendationIds() throws(1: TalkException e),
    Configurations getConfigurations(2: i64 revision, 3: string regionOfUsim, 4: string regionOfTelephone, 5: string regionOfLocale, 6: string carrier, 7: TalkSyncReason syncReason) throws(1: TalkException e),
    E2EEPublicKey getE2EEPublicKey(2: string mid, 3: i32 version, 4: i32 keyId) throws(1: TalkException e),
    map<string, Contact> findAndAddContactsByUserid(1: i32 reqSeq, 2: string searchId, 3: string reference) throws(1: TalkException e),
    RSAKey getRSAKeyInfo(2: IdentityProvider provider) throws(1: TalkException e),
    list<string> getRecommendationIds() throws(1: TalkException e),
    Settings getSettings() throws(1: TalkException e),
    Settings getSettingsAttributes2() throws(1: TalkException e),
    E2EENegotiationResult negotiateE2EEPublicKey(2: string mid) throws(1: TalkException e),
    E2EEPublicKey registerE2EEPublicKey(1: i32 reqSeq, 2: E2EEPublicKey publicKey) throws(1: TalkException e),
    map<string, ContactRegistration> syncContacts(1: i32 reqSeq, 2: list<ContactModification> localContacts) throws(1: TalkException e),
    string unregisterUserAndDevice() throws(1: TalkException e),
    E2EEGroupSharedKey registerE2EEGroupKey() throws(1: TalkException e),
    void removeFollower() throws(1: TalkException e),
    void report() throws(1: TalkException e),
    void reportProfile() throws(1: TalkException e),
    void reportPushRecvReports() throws(1: TalkException e),
    void reportSettings() throws(1: TalkException e),
    void requestAccountPasswordReset() throws(1: TalkException e),
    VerificationSessionData changeVerificationMethod() throws(1: TalkException e),
    void resendPinCode() throws(1: TalkException e),
    void clearRingbackTone() throws(1: TalkException e),
    void clearRingtone() throws(1: TalkException e),
    list<Operation> fetchOps(2: i64 localRev, 3: i32 count, 4: i64 globalRev, 5: i64 individualRev) throws(1: TalkException e),
    string decryptFollowEMid(2: string eMid) throws(1: TalkException e),
    Contact findContactByUserTicket(2: string ticketIdWithTag) throws(1: TalkException e),
    void updateContactSetting(1: i32 reqSeq, 2: string mid, 3: ContactSetting flag, 4: string value) throws(1: TalkException e),
    map<string, Contact> findContactsByPhone(2: set<string> phones) throws(1: TalkException e),
    void tryFriendRequest(1: string midOrEMid, 2: FriendRequestMethod method, 3: string friendRequestParams) throws(1: TalkException e),
    void follow(2: FollowRequest followRequest) throws(1: TalkException e),
    void unfollow(2: UnfollowRequest unfollowRequest) throws(1: TalkException e),
    Ticket generateUserTicket(3: i64 expirationTime, 4: i32 maxUseCount) throws(1: TalkException e),
    GetChatsResponse getChats(1: GetChatsRequest request) throws(1: TalkException e),
    void updateNotificationToken(3: NotificationType type, 2: string token) throws(1: TalkException e),
    ContactRegistration getContactRegistration(1: string id, 2: ContactType type) throws(1: TalkException e),
    E2EEGroupSharedKey getE2EEGroupSharedKey(2: i32 keyVersion, 3: string chatMid, 4: i32 groupKeyId) throws(1: TalkException e),
    string verifyQrcode(2: string verifier, 3: string pinCode) throws(1: TalkException e),
    bool wakeUpLongPolling(2: i64 clientRevision) throws(1: TalkException e),
    GetFollowersResponse getFollowers(2: GetFollowersRequest getFollowersRequest) throws(1: TalkException e),
    GetFollowingsResponse getFollowings(2: GetFollowingsRequest getFollowingsRequest) throws(1: TalkException e),
    E2EEGroupSharedKey getLastE2EEGroupSharedKey(2: i32 keyVersion, 3: string chatMid) throws(1: TalkException e),
    map<string, E2EEPublicKey> getLastE2EEPublicKeys(2: string chatMid) throws(1: TalkException e),
    i64 getLastOpRevision() throws(1: TalkException e),
    list<Room> getRoomsV2(2: list<string> roomIds) throws(1: TalkException e),
    bool isUseridAvailable(2: string userid) throws(1: TalkException e),
    string acquireEncryptedAccessToken(2: FeatureType featureType) throws(1: TalkException e),
    RejectChatInvitationResponse rejectChatInvitation(1: RejectChatInvitationRequest request) throws(1: TalkException e),
    GetAllChatMidsResponse getAllChatMids(1: GetAllChatMidsRequest request, 2: i32 syncReason) throws(1: TalkException e),
    DeleteSelfFromChatResponse deleteSelfFromChat(1: DeleteSelfFromChatRequest request) throws(1: TalkException e),
    FindChatByTicketResponse findChatByTicket(1: FindChatByTicketRequest request) throws(1: TalkException e),
    InviteIntoChatResponse inviteIntoChat(1: InviteIntoChatRequest request) throws(1: TalkException e),
    DeleteOtherFromChatResponse deleteOtherFromChat(1: DeleteOtherFromChatRequest request) throws(1: TalkException e),
    CreateChatResponse createChat(1: CreateChatRequest request) throws(1: TalkException e),
    ReissueChatTicketResponse reissueChatTicket(1: ReissueChatTicketRequest request) throws(1: TalkException e),
    CancelChatInvitationResponse cancelChatInvitation(1: CancelChatInvitationRequest request) throws(1: TalkException e),
    UpdateChatResponse updateChat(1: UpdateChatRequest request) throws(1: TalkException e),
    AcceptChatInvitationResponse acceptChatInvitation(1: AcceptChatInvitationRequest request) throws(1: TalkException e),
    AcceptChatInvitationByTicketResponse acceptChatInvitationByTicket(1: AcceptChatInvitationByTicketRequest request) throws(1: TalkException e),
    list<TMessageReadRange> getMessageReadRange(2: list<string> chatIds, 3: TalkSyncReason syncReason) throws(1: TalkException e),
    void react(1: ReactRequest reactRequest) throws(1: TalkException e),
    list<Message> getPreviousMessagesV2WithRequest(2: GetPreviousMessagesV2Request request, 3: TalkSyncReason syncReason) throws(1: TalkException e),
    list<Message> getPreviousMessagesV2() throws(1: TalkException e),
    list<Message> getRecentMessagesV2(2: string messageBoxId, 3: i32 messagesCount) throws(1: TalkException e),
    void cancelReaction(// 1: CancelReactionRequest cancelReactionRequest;
) throws(1: TalkException e),
    DetermineMediaMessageFlowResponse determineMediaMessageFlow(# 1: GetMediaMessageFlowRequest getMediaMessageFlowRequest;
) throws(1: TalkException e),
    map<string, list<ChatRoomAnnouncement>> getChatRoomAnnouncementsBulk() throws(1: TalkException e),
    list<ChatRoomAnnouncement> getChatRoomAnnouncements() throws(1: TalkException e),
    void removeChatRoomAnnouncement() throws(1: TalkException e),
    ChatRoomAnnouncement createChatRoomAnnouncement() throws(1: TalkException e),
}