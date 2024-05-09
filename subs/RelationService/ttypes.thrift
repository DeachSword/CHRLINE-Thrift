

enum UserType {
    USER  = 1  
    BOT   = 2  
}

struct RichString {
    1: string                content;   
    2: map<string, string>   meta;      
}

struct TargetProfileDetail {
    1: i64             snapshotTimeMillis;   
    2: string          profileName;          
    3: string          picturePath;          
    4: RichString      statusMessage;        
    5: string          musicProfile;         
    6: string          videoProfile;         
    7: AvatarProfile   avatarProfile;        
    8: PictureSource   pictureSource;        
    9: string          pictureStatus;        
}

struct UserFriendDetail {
    1: i64      createdTime;      
    3: string   overriddenName;   
    4: i64      favoriteTime;     
    6: bool     hidden;           
    7: string   ringtone;         
    8: string   ringbackTone;     
}

struct BotFriendDetail {
    1: i64    createdTime;    
    4: i64    favoriteTime;   
    6: bool   hidden;         
}

struct NotFriend {
}

struct FriendDetail {
    1: UserFriendDetail   user;        
    2: BotFriendDetail    bot;         
    3: NotFriend          notFriend;   
}

struct UserBlockDetail {
    3: bool   deletedFromBlockList;   
}

struct BotBlockDetail {
    3: bool   deletedFromBlockList;   
}

struct NotBlocked {
}

struct BlockDetail {
    1: UserBlockDetail   user;         
    2: BotBlockDetail    bot;          
    3: NotBlocked        notBlocked;   
}

struct RecommendationReasonSharedChat {
    1: string   chatMid;   
}

struct RecommendationReasonReverseFriendByUserId {
}

struct RecommendationReasonReverseFriendByQRCode {
}

struct RecommendationReasonReverseFriendByPhone {
}

struct RecommendationReason {
    1: RecommendationReasonSharedChat              sharedChat;              
    2: RecommendationReasonReverseFriendByUserId   reverseFriendByUserId;   
    3: RecommendationReasonReverseFriendByQRCode   reverseFriendByQrCode;   
    4: RecommendationReasonReverseFriendByPhone    reverseFriendByPhone;    
}

struct Recommended {
    1: i64                          createdTime;   
    2: list<RecommendationReason>   reasons;       
    4: bool                         hidden;        
}

struct NotRecommended {
}

struct RecommendationDetail {
    1: Recommended      recommendationDetail;   
    2: NotRecommended   notRecommended;         
}

struct NotificationSetting {
    1: bool   mute;   
}

struct NotificationSettingEntry {
    1: NotificationSetting   notificationSetting;   
}

struct GetContactV3Response {
    1: string                     targetUserMid;              
    2: UserType                   userType;                   
    3: TargetProfileDetail        targetProfileDetail;        
    4: FriendDetail               friendDetail;               
    5: BlockDetail                blockDetail;                
    6: RecommendationDetail       recommendationDetail;       
    7: NotificationSettingEntry   notificationSettingEntry;   
}

struct GetContactsV3Response {
    1: list<GetContactV3Response>   responses;   
}

struct AddFriendByMidResponse {
}

struct GetContactCalendarEventResponse {
    1: string targetUserMid;
    2: UserType userType;
    3: ContactCalendarEvents contactCalendarEvents;
    4: i64 snapshotTimeMillis;
}

struct GetContactCalendarEventsResponse {
    1: list<GetContactCalendarEventResponse> responses;
}


