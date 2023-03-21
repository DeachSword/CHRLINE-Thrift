enum ApplicationType {
    IOS                    = 16;
    IOS_RC                 = 17;
    IOS_BETA               = 18;
    IOS_ALPHA              = 19;
    ANDROID                = 32;
    ANDROID_RC             = 33;
    ANDROID_BETA           = 34;
    ANDROID_ALPHA          = 35;
    WAP                    = 48;
    WAP_RC                 = 49;
    WAP_BETA               = 50;
    WAP_ALPHA              = 51;
    BOT                    = 64;
    BOT_RC                 = 65;
    BOT_BETA               = 66;
    BOT_ALPHA              = 67;
    WEB                    = 80;
    WEB_RC                 = 81;
    WEB_BETA               = 82;
    WEB_ALPHA              = 83;
    DESKTOPWIN             = 96;
    DESKTOPWIN_RC          = 97;
    DESKTOPWIN_BETA        = 98;
    DESKTOPWIN_ALPHA       = 99;
    DESKTOPMAC             = 112;
    DESKTOPMAC_RC          = 113;
    DESKTOPMAC_BETA        = 114;
    DESKTOPMAC_ALPHA       = 115;
    CHANNELGW              = 128;
    CHANNELGW_RC           = 129;
    CHANNELGW_BETA         = 130;
    CHANNELGW_ALPHA        = 131;
    CHANNELCP              = 144;
    CHANNELCP_RC           = 145;
    CHANNELCP_BETA         = 146;
    CHANNELCP_ALPHA        = 147;
    WINPHONE               = 160;
    WINPHONE_RC            = 161;
    WINPHONE_BETA          = 162;
    WINPHONE_ALPHA         = 163;
    BLACKBERRY             = 176;
    BLACKBERRY_RC          = 177;
    BLACKBERRY_BETA        = 178;
    BLACKBERRY_ALPHA       = 179;
    WINMETRO               = 192;
    WINMETRO_RC            = 193;
    WINMETRO_BETA          = 194;
    WINMETRO_ALPHA         = 195;
    S40                    = 208;
    S40_RC                 = 209;
    S40_BETA               = 210;
    S40_ALPHA              = 211;
    CHRONO                 = 224;
    CHRONO_RC              = 225;
    CHRONO_BETA            = 226;
    CHRONO_ALPHA           = 227;
    TIZEN                  = 256;
    TIZEN_RC               = 257;
    TIZEN_BETA             = 258;
    TIZEN_ALPHA            = 259;
    VIRTUAL                = 272;
    FIREFOXOS              = 288;
    FIREFOXOS_RC           = 289;
    FIREFOXOS_BETA         = 290;
    FIREFOXOS_ALPHA        = 291;
    IOSIPAD                = 304;
    IOSIPAD_RC             = 305;
    IOSIPAD_BETA           = 306;
    IOSIPAD_ALPHA          = 307;
    BIZIOS                 = 320;
    BIZIOS_RC              = 321;
    BIZIOS_BETA            = 322;
    BIZIOS_ALPHA           = 323;
    BIZANDROID             = 336;
    BIZANDROID_RC          = 337;
    BIZANDROID_BETA        = 338;
    BIZANDROID_ALPHA       = 339;
    BIZBOT                 = 352;
    BIZBOT_RC              = 353;
    BIZBOT_BETA            = 354;
    BIZBOT_ALPHA           = 355;
    CHROMEOS               = 368;
    CHROMEOS_RC            = 369;
    CHROMEOS_BETA          = 370;
    CHROMEOS_ALPHA         = 371;
    ANDROIDLITE            = 384;
    ANDROIDLITE_RC         = 385;
    ANDROIDLITE_BETA       = 386;
    ANDROIDLITE_ALPHA      = 387;
    WIN10                  = 400;
    WIN10_RC               = 401;
    WIN10_BETA             = 402;
    WIN10_ALPHA            = 403;
    BIZWEB                 = 416;
    BIZWEB_RC              = 417;
    BIZWEB_BETA            = 418;
    BIZWEB_ALPHA           = 419;
    DUMMYPRIMARY           = 432;
    DUMMYPRIMARY_RC        = 433;
    DUMMYPRIMARY_BETA      = 434;
    DUMMYPRIMARY_ALPHA     = 435;
    SQUARE                 = 448;
    SQUARE_RC              = 449;
    SQUARE_BETA            = 450;
    SQUARE_ALPHA           = 451;
    INTERNAL               = 464;
    INTERNAL_RC            = 465;
    INTERNAL_BETA          = 466;
    INTERNAL_ALPHA         = 467;
    CLOVAFRIENDS           = 480;
    CLOVAFRIENDS_RC        = 481;
    CLOVAFRIENDS_BETA      = 482;
    CLOVAFRIENDS_ALPHA     = 483;
    WATCHOS                = 496;
    WATCHOS_RC             = 497;
    WATCHOS_BETA           = 498;
    WATCHOS_ALPHA          = 499;
    OPENCHAT_PLUG          = 512;
    OPENCHAT_PLUG_RC       = 513;
    OPENCHAT_PLUG_BETA     = 514;
    OPENCHAT_PLUG_ALPHA    = 515;
    ANDROIDSECONDARY       = 528;
    ANDROIDSECONDARY_RC    = 529;
    ANDROIDSECONDARY_BETA  = 530;
    ANDROIDSECONDARY_ALPHA = 531;
    WEAROS                 = 544;
    WEAROS_RC              = 545;
    WEAROS_BETA            = 546;
    WEAROS_ALPHA           = 547;
}

enum ErrorCode {
    ILLEGAL_ARGUMENT                                      = 0;
    AUTHENTICATION_FAILED                                 = 1;
    DB_FAILED                                             = 2;
    INVALID_STATE                                         = 3;
    EXCESSIVE_ACCESS                                      = 4;
    NOT_FOUND                                             = 5;
    INVALID_LENGTH                                        = 6;
    NOT_AVAILABLE_USER                                    = 7;
    NOT_AUTHORIZED_DEVICE                                 = 8;
    INVALID_MID                                           = 9;
    NOT_A_MEMBER                                          = 10;
    INCOMPATIBLE_APP_VERSION                              = 11;
    NOT_READY                                             = 12;
    NOT_AVAILABLE_SESSION                                 = 13;
    NOT_AUTHORIZED_SESSION                                = 14;
    SYSTEM_ERROR                                          = 15;
    NO_AVAILABLE_VERIFICATION_METHOD                      = 16;
    NOT_AUTHENTICATED                                     = 17;
    INVALID_IDENTITY_CREDENTIAL                           = 18;
    NOT_AVAILABLE_IDENTITY_IDENTIFIER                     = 19;
    INTERNAL_ERROR                                        = 20;
    NO_SUCH_IDENTITY_IDENFIER                             = 21;
    DEACTIVATED_ACCOUNT_BOUND_TO_THIS_IDENTITY            = 22;
    ILLEGAL_IDENTITY_CREDENTIAL                           = 23;
    UNKNOWN_CHANNEL                                       = 24;
    NO_SUCH_MESSAGE_BOX                                   = 25;
    NOT_AVAILABLE_MESSAGE_BOX                             = 26;
    CHANNEL_DOES_NOT_MATCH                                = 27;
    NOT_YOUR_MESSAGE                                      = 28;
    MESSAGE_DEFINED_ERROR                                 = 29;
    USER_CANNOT_ACCEPT_PRESENTS                           = 30;
    USER_NOT_STICKER_OWNER                                = 32;
    MAINTENANCE_ERROR                                     = 33;
    ACCOUNT_NOT_MATCHED                                   = 34;
    ABUSE_BLOCK                                           = 35;
    NOT_FRIEND                                            = 36;
    NOT_ALLOWED_CALL                                      = 37;
    BLOCK_FRIEND                                          = 38;
    INCOMPATIBLE_VOIP_VERSION                             = 39;
    INVALID_SNS_ACCESS_TOKEN                              = 40;
    EXTERNAL_SERVICE_NOT_AVAILABLE                        = 41;
    NOT_ALLOWED_ADD_CONTACT                               = 42;
    NOT_CERTIFICATED                                      = 43;
    NOT_ALLOWED_SECONDARY_DEVICE                          = 44;
    INVALID_PIN_CODE                                      = 45;
    NOT_FOUND_IDENTITY_CREDENTIAL                         = 46;
    EXCEED_FILE_MAX_SIZE                                  = 47;
    EXCEED_DAILY_QUOTA                                    = 48;
    NOT_SUPPORT_SEND_FILE                                 = 49;
    MUST_UPGRADE                                          = 50;
    NOT_AVAILABLE_PIN_CODE_SESSION                        = 51;
    EXPIRED_REVISION                                      = 52;
    NOT_YET_PHONE_NUMBER                                  = 54;
    BAD_CALL_NUMBER                                       = 55;
    UNAVAILABLE_CALL_NUMBER                               = 56;
    NOT_SUPPORT_CALL_SERVICE                              = 57;
    CONGESTION_CONTROL                                    = 58;
    NO_BALANCE                                            = 59;
    NOT_PERMITTED_CALLER_ID                               = 60;
    NO_CALLER_ID_LIMIT_EXCEEDED                           = 61;
    CALLER_ID_VERIFICATION_REQUIRED                       = 62;
    NO_CALLER_ID_LIMIT_EXCEEDED_AND_VERIFICATION_REQUIRED = 63;
    MESSAGE_NOT_FOUND                                     = 64;
    INVALID_ACCOUNT_MIGRATION_PINCODE_FORMAT              = 65;
    ACCOUNT_MIGRATION_PINCODE_NOT_MATCHED                 = 66;
    ACCOUNT_MIGRATION_PINCODE_BLOCKED                     = 67;
    INVALID_PASSWORD_FORMAT                               = 69;
    FEATURE_RESTRICTED                                    = 70;
    MESSAGE_NOT_DESTRUCTIBLE                              = 71;
    PAID_CALL_REDEEM_FAILED                               = 72;
    PREVENTED_JOIN_BY_TICKET                              = 73;
    SEND_MESSAGE_NOT_PERMITTED_FROM_LINE_AT               = 75;
    SEND_MESSAGE_NOT_PERMITTED_WHILE_AUTO_REPLY           = 76;
    SECURITY_CENTER_NOT_VERIFIED                          = 77;
    SECURITY_CENTER_BLOCKED_BY_SETTING                    = 78;
    SECURITY_CENTER_BLOCKED                               = 79;
    TALK_PROXY_EXCEPTION                                  = 80;
    E2EE_INVALID_PROTOCOL                                 = 81;
    E2EE_RETRY_ENCRYPT                                    = 82;
    E2EE_UPDATE_SENDER_KEY                                = 83;
    E2EE_UPDATE_RECEIVER_KEY                              = 84;
    E2EE_INVALID_ARGUMENT                                 = 85;
    E2EE_INVALID_VERSION                                  = 86;
    E2EE_SENDER_DISABLED                                  = 87;
    E2EE_RECEIVER_DISABLED                                = 88;
    E2EE_SENDER_NOT_ALLOWED                               = 89;
    E2EE_RECEIVER_NOT_ALLOWED                             = 90;
    E2EE_RESEND_FAIL                                      = 91;
    E2EE_RESEND_OK                                        = 92;
    HITOKOTO_BACKUP_NO_AVAILABLE_DATA                     = 93;
    E2EE_UPDATE_PRIMARY_DEVICE                            = 94;
    SUCCESS                                               = 95;
    CANCEL                                                = 96;
    E2EE_PRIMARY_NOT_SUPPORT                              = 97;
    E2EE_RETRY_PLAIN                                      = 98;
    E2EE_RECREATE_GROUP_KEY                               = 99;
    E2EE_GROUP_TOO_MANY_MEMBERS                           = 100;
    SERVER_BUSY                                           = 101;
    NOT_ALLOWED_ADD_FOLLOW                                = 102;
    INCOMING_FRIEND_REQUEST_LIMIT                         = 103;
    OUTGOING_FRIEND_REQUEST_LIMIT                         = 104;
    OUTGOING_FRIEND_REQUEST_QUOTA                         = 105;
    DUPLICATED                                            = 106;
    BANNED                                                = 107;
    NOT_AN_INVITEE                                        = 108;
    NOT_AN_OUTSIDER                                       = 109;
    EMPTY_GROUP                                           = 111;
    EXCEED_FOLLOW_LIMIT                                   = 112;
    UNSUPPORTED_ACCOUNT_TYPE                              = 113;
    AGREEMENT_REQUIRED                                    = 114;
    SHOULD_RETRY                                          = 115;
    OVER_MAX_CHATS_PER_USER                               = 116;
    NOT_AVAILABLE_API                                     = 117;
    INVALID_OTP                                           = 118;
    MUST_REFRESH_V3_TOKEN                                 = 119;
    ALREADY_EXPIRED                                       = 120;
    USER_NOT_STICON_OWNER                                 = 121;
}

enum LiffErrorCode {
    INVALID_REQUEST                  = 1;
    UNAUTHORIZED                     = 2;
    CONSENT_REQUIRED                 = 3;
    VERSION_UPDATE_REQUIRED          = 4;
    COMPREHENSIVE_AGREEMENT_REQUIRED = 5;
    SPLASH_SCREEN_REQUIRED           = 6;
    SERVER_ERROR                     = 100;
}

enum ChannelErrorCode {
    ILLEGAL_ARGUMENT         = 0;
    INTERNAL_ERROR           = 1;
    CONNECTION_ERROR         = 2;
    AUTHENTICATIONI_FAILED   = 3;
    NEED_PERMISSION_APPROVAL = 4;
    COIN_NOT_USABLE          = 5;
    WEBVIEW_NOT_ALLOWED      = 6;
}

enum PreconditionFailedExtraInfo {
    DUPLICATED_DISPLAY_NAME = 0;
}

enum SquareErrorCode {
    UNKNOWN                = 0;
    INTERNAL_ERROR         = 500;
    NOT_IMPLEMENTED        = 501;
    TRY_AGAIN_LATER        = 503;
    MAINTENANCE            = 505;
    NO_PRESENCE_EXISTS     = 506;
    ILLEGAL_ARGUMENT       = 400;
    AUTHENTICATION_FAILURE = 401;
    FORBIDDEN              = 403;
    NOT_FOUND              = 404;
    REVISION_MISMATCH      = 409;
    PRECONDITION_FAILED    = 410;
}

enum HomeExceptionCode {
    INTERNAL_ERROR              = 0;
    ILLEGAL_ARGUMENT            = 1;
    VERIFICATION_FAILED         = 2;
    NOT_FOUND                   = 3;
    RETRY_LATER                 = 4;
    HUMAN_VERIFICATION_REQUIRED = 5;
    INVALID_CONTEXT             = 100;
    APP_UPGRADE_REQUIRED        = 101;
    NO_CONTENT                  = 102;
}

enum ChatappErrorCode {
    INVALID_REQUEST = 1;
    UNAUTHORIZED    = 2;
    SERVER_ERROR    = 100;
}

enum MembershipErrorCode {
    ILLEGAL_ARGUMENT      = 0;
    AUTHENTICATION_FAILED = 1;
    NOT_FOUND             = 5;
    INTERNAL_ERROR        = 20;
    MAINTENANCE_ERROR     = 33;
}

enum BotErrorCode {
    UNKNOWN               = 0;
    BOT_NOT_FOUND         = 1;
    BOT_NOT_AVAILABLE     = 2;
    NOT_A_MEMBER          = 3;
    AUTHENTICATION_FAILED = 401;
    ILLEGAL_ARGUMENT      = 400;
    INTERNAL_ERROR        = 500;
}

enum BotExternalErrorCode {
    ILLEGAL_ARGUMENT = 0;
    INTERNAL_ERROR   = 1;
}

enum AccessTokenRefreshErrorCode {
    INVALID_REQUEST = 1000;
    RETRY_REQUIRED  = 1001;
}

enum AccountEapConnectErrorCode {
    INTERNAL_ERROR              = 0;
    ILLEGAL_ARGUMENT            = 1;
    VERIFICATION_FAILED         = 2;
    RETRY_LATER                 = 4;
    HUMAN_VERIFICATION_REQUIRED = 5;
    APP_UPGRADE_REQUIRED        = 101;
}

enum PwlessCredentialErrorCode {
    INTERNAL_ERROR                        = 0;
    ILLEGAL_ARGUMENT                      = 1;
    VERIFICATION_FAILED                   = 2;
    EXTERNAL_SERVICE_UNAVAILABLE          = 3;
    RETRY_LATER                           = 4;
    INVALID_CONTEXT                       = 100;
    NOT_SUPPORTED                         = 101;
    FORBIDDEN                             = 102;
    FIDO_RETRY_WITH_ANOTHER_AUTHENTICATOR = 201;
}

enum SecondAuthFactorPinCodeErrorCode {
    INTERNAL_ERROR       = 0;
    ILLEGAL_ARGUMENT     = 1;
    VERIFICATION_FAILED  = 2;
    RETRY_LATER          = 3;
    INVALID_CONTEXT      = 100;
    APP_UPGRADE_REQUIRED = 101;
}

enum AuthErrorCode {
    INTERNAL_ERROR              = 0;
    ILLEGAL_ARGUMENT            = 1;
    VERIFICATION_FAILED         = 2;
    NOT_FOUND                   = 3;
    RETRY_LATER                 = 4;
    HUMAN_VERIFICATION_REQUIRED = 5;
    INVALID_CONTEXT             = 100;
    APP_UPGRADE_REQUIRED        = 101;
}

enum SecondaryPwlessLoginErrorCode {
    INTERNAL_ERROR                        = 0;
    VERIFICATION_FAILED                   = 1;
    LOGIN_NOT_ALLOWED                     = 2;
    EXTERNAL_SERVICE_UNAVAILABLE          = 3;
    RETRY_LATER                           = 4;
    NOT_SUPPORTED                         = 100;
    ILLEGAL_ARGUMENT                      = 101;
    INVALID_CONTEXT                       = 102;
    FORBIDDEN                             = 103;
    FIDO_UNKNOWN_CREDENTIAL_ID            = 200;
    FIDO_RETRY_WITH_ANOTHER_AUTHENTICATOR = 201;
    FIDO_UNACCEPTABLE_CONTENT             = 202;
}

enum SecondaryQrCodeErrorCode {
    INTERNAL_ERROR             = 0;
    ILLEGAL_ARGUMENT           = 1;
    VERIFICATION_FAILED        = 2;
    NOT_ALLOWED_QR_CODE_LOGIN  = 3;
    VERIFICATION_NOTICE_FAILED = 4;
    RETRY_LATER                = 5;
    INVALID_CONTEXT            = 100;
    APP_UPGRADE_REQUIRED       = 101;
}

enum PaymentErrorCode {
    SUCCESS                       = 0;
    GENERAL_USER_ERROR            = 1000;
    ACCOUNT_NOT_EXISTS            = 1101;
    ACCOUNT_INVALID_STATUS        = 1102;
    ACCOUNT_ALREADY_EXISTS        = 1103;
    MERCHANT_NOT_EXISTS           = 1104;
    MERCHANT_INVALID_STATUS       = 1105;
    AGREEMENT_REQUIRED            = 1107;
    BLACKLISTED                   = 1108;
    WRONG_PASSWORD                = 1109;
    INVALID_CREDIT_CARD           = 1110;
    LIMIT_EXCEEDED                = 1111;
    CANNOT_PROCEED                = 1115;
    TOO_WEAK_PASSWORD             = 1120;
    CANNOT_CREATE_ACCOUNT         = 1125;
    TEMPORARY_PASSWORD_ERROR      = 1130;
    MISSING_PARAMETERS            = 1140;
    NO_VALID_MYCODE_ACCOUNT       = 1141;
    INSUFFICIENT_BALANCE          = 1142;
    TRANSACTION_NOT_FOUND         = 1150;
    TRANSACTION_FINISHED          = 1152;
    PAYMENT_AMOUNT_WRONG          = 1153;
    BALANCE_ACCOUNT_NOT_EXISTS    = 1157;
    DUPLICATED_CITIZEN_ID         = 1158;
    PAYMENT_REQUEST_NOT_FOUND     = 1159;
    AUTH_FAILED                   = 1169;
    PASSWORD_SETTING_REQUIRED     = 1171;
    TRANSACTION_ALREADY_PROCESSED = 1172;
    CURRENCY_NOT_SUPPORTED        = 1178;
    PAYMENT_NOT_AVAILABLE         = 1180;
    TRANSFER_REQUEST_NOT_FOUND    = 1181;
    INVALID_PAYMENT_AMOUNT        = 1183;
    INSUFFICIENT_PAYMENT_AMOUNT   = 1184;
    EXTERNAL_SYSTEM_MAINTENANCE   = 1185;
    EXTERNAL_SYSTEM_INOPERATIONAL = 1186;
    SESSION_EXPIRED               = 1192;
    UPGRADE_REQUIRED              = 1195;
    REQUEST_TOKEN_EXPIRED         = 1196;
    OPERATION_FINISHED            = 1198;
    EXTERNAL_SYSTEM_ERROR         = 1199;
    PARTIAL_AMOUNT_APPROVED       = 1299;
    PINCODE_AUTH_REQUIRED         = 1600;
    ADDITIONAL_AUTH_REQUIRED      = 1601;
    NOT_BOUND                     = 1603;
    OTP_USER_REGISTRATION_ERROR   = 1610;
    OTP_CARD_REGISTRATION_ERROR   = 1611;
    NO_AUTH_METHOD                = 1612;
    GENERAL_USER_ERROR_RESTART    = 1696;
    GENERAL_USER_ERROR_REFRESH    = 1697;
    GENERAL_USER_ERROR_CLOSE      = 1698;
    INTERNAL_SERVER_ERROR         = 9000;
    INTERNAL_SYSTEM_MAINTENANCE   = 9999;
    UNKNOWN_ERROR                 = 10000;
}

enum SettingsErrorCode {
    UNKNOWN                      = 0;
    NONE                         = 1;
    ILLEGAL_ARGUMENT             = 16641;
    NOT_FOUND                    = 16642;
    NOT_AVAILABLE                = 16643;
    TOO_LARGE_VALUE              = 16644;
    CLOCK_DRIFT_DETECTED         = 16645;
    UNSUPPORTED_APPLICATION_TYPE = 16646;
    DUPLICATED_ENTRY             = 16647;
    AUTHENTICATION_FAILED        = 16897;
    INTERNAL_SERVER_ERROR        = 20737;
    SERVICE_IN_MAINTENANCE_MODE  = 20738;
    SERVICE_UNAVAILABLE          = 20739;
}

enum ThingsErrorCode {
    INTERNAL_SERVER_ERROR = 0;
    UNAUTHORIZED          = 1;
    INVALID_REQUEST       = 2;
    INVALID_STATE         = 3;
    DEVICE_LIMIT_EXCEEDED = 4096;
    UNSUPPORTED_REGION    = 4097;
}

enum SuggestTrialErrorCode {
    UNKNOWN               = 0;
    NONE                  = 1;
    ILLEGAL_ARGUMENT      = 16641;
    NOT_FOUND             = 16642;
    NOT_AVAILABLE         = 16643;
    AUTHENTICATION_FAILED = 16897;
    INTERNAL_SERVER_ERROR = 20737;
    SERVICE_UNAVAILABLE   = 20739;
}

enum LFLPremiumErrorCode {
    ILLEGAL_ARGUMENT            = 16641;
    MAJOR_VERSION_NOT_SUPPORTED = 16642;
    AUTHENTICATION_FAILED       = 16897;
    INTERNAL_SERVER_ERROR       = 20737;
}

enum WalletErrorCode {
    INVALID_PARAMETER           = 400;
    AUTHENTICATION_FAILED       = 401;
    INTERNAL_SERVER_ERROR       = 500;
    SERVICE_IN_MAINTENANCE_MODE = 503;
}

enum ShopErrorCode {
    UNKNOWN                      = 0;
    NONE                         = 1;
    ILLEGAL_ARGUMENT             = 16641;
    NOT_FOUND                    = 16642;
    NOT_AVAILABLE                = 16643;
    NOT_PAID_PRODUCT             = 16644;
    NOT_FREE_PRODUCT             = 16645;
    ALREADY_OWNED                = 16646;
    ERROR_WITH_CUSTOM_MESSAGE    = 16647;
    NOT_AVAILABLE_TO_RECIPIENT   = 16648;
    NOT_AVAILABLE_FOR_CHANNEL_ID = 16649;
    NOT_SALE_FOR_COUNTRY         = 16650;
    NOT_SALES_PERIOD             = 16651;
    NOT_SALE_FOR_DEVICE          = 16652;
    NOT_SALE_FOR_VERSION         = 16653;
    ALREADY_EXPIRED              = 16654;
    AUTHENTICATION_FAILED        = 16897;
    BALANCE_SHORTAGE             = 17153;
    INTERNAL_SERVER_ERROR        = 20737;
    SERVICE_IN_MAINTENANCE_MODE  = 20738;
    SERVICE_UNAVAILABLE          = 20739;
}

enum PointErrorCode {
    REQUEST_DUPLICATION               = 3001;
    INVALID_PARAMETER                 = 3002;
    NOT_ENOUGH_BALANCE                = 3003;
    AUTHENTICATION_FAIL               = 3004;
    API_ACCESS_FORBIDDEN              = 3005;
    MEMBER_ACCOUNT_NOT_FOUND          = 3006;
    SERVICE_ACCOUNT_NOT_FOUND         = 3007;
    TRANSACTION_NOT_FOUND             = 3008;
    ALREADY_REVERSED_TRANSACTION      = 3009;
    MESSAGE_NOT_READABLE              = 3010;
    HTTP_REQUEST_METHOD_NOT_SUPPORTED = 3011;
    HTTP_MEDIA_TYPE_NOT_SUPPORTED     = 3012;
    NOT_ALLOWED_TO_DEPOSIT            = 3013;
    NOT_ALLOWED_TO_PAY                = 3014;
    TRANSACTION_ACCESS_FORBIDDEN      = 3015;
    INVALID_SERVICE_CONFIGURATION     = 4001;
    DCS_COMMUNICATION_FAIL            = 5004;
    UPDATE_BALANCE_FAIL               = 5007;
    SYSTEM_MAINTENANCE                = 5888;
    SYSTEM_ERROR                      = 5999;
}

enum E2EEKeyBackupErrorCode {
    ILLEGAL_ARGUMENT      = 0;
    AUTHENTICATION_FAILED = 1;
    INTERNAL_ERROR        = 2;
    RESTORE_KEY_FIRST     = 3;
    NO_BACKUP             = 4;
    LOCKOUT               = 5;
    INVALID_PIN           = 6;
}

enum TalkSyncReason {
    UNSPECIFIED    = 0;
    UNKNOWN        = 1;
    INITIALIZATION = 2;
    OPERATION      = 3;
    FULL_SYNC      = 4;
    AUTO_REPAIR    = 5;
    MANUAL_REPAIR  = 6;
    INTERNAL       = 7;
    USER_INITIATED = 8;
}

enum OpType {
    END_OF_OPERATION                    = 0;
    UPDATE_PROFILE                      = 1;
    NOTIFIED_UPDATE_PROFILE             = 2;
    REGISTER_USERID                     = 3;
    ADD_CONTACT                         = 4;
    NOTIFIED_ADD_CONTACT                = 5;
    BLOCK_CONTACT                       = 6;
    UNBLOCK_CONTACT                     = 7;
    NOTIFIED_RECOMMEND_CONTACT          = 8;
    CREATE_GROUP                        = 9;
    UPDATE_GROUP                        = 10;
    NOTIFIED_UPDATE_GROUP               = 11;
    INVITE_INTO_GROUP                   = 12;
    NOTIFIED_INVITE_INTO_GROUP          = 13;
    LEAVE_GROUP                         = 14;
    NOTIFIED_LEAVE_GROUP                = 15;
    ACCEPT_GROUP_INVITATION             = 16;
    NOTIFIED_ACCEPT_GROUP_INVITATION    = 17;
    KICKOUT_FROM_GROUP                  = 18;
    NOTIFIED_KICKOUT_FROM_GROUP         = 19;
    CREATE_ROOM                         = 20;
    INVITE_INTO_ROOM                    = 21;
    NOTIFIED_INVITE_INTO_ROOM           = 22;
    LEAVE_ROOM                          = 23;
    NOTIFIED_LEAVE_ROOM                 = 24;
    SEND_MESSAGE                        = 25;
    RECEIVE_MESSAGE                     = 26;
    SEND_MESSAGE_RECEIPT                = 27;
    RECEIVE_MESSAGE_RECEIPT             = 28;
    SEND_CONTENT_RECEIPT                = 29;
    RECEIVE_ANNOUNCEMENT                = 30;
    CANCEL_INVITATION_GROUP             = 31;
    NOTIFIED_CANCEL_INVITATION_GROUP    = 32;
    NOTIFIED_UNREGISTER_USER            = 33;
    REJECT_GROUP_INVITATION             = 34;
    NOTIFIED_REJECT_GROUP_INVITATION    = 35;
    UPDATE_SETTINGS                     = 36;
    NOTIFIED_REGISTER_USER              = 37;
    INVITE_VIA_EMAIL                    = 38;
    NOTIFIED_REQUEST_RECOVERY           = 39;
    SEND_CHAT_CHECKED                   = 40;
    SEND_CHAT_REMOVED                   = 41;
    NOTIFIED_FORCE_SYNC                 = 42;
    SEND_CONTENT                        = 43;
    SEND_MESSAGE_MYHOME                 = 44;
    NOTIFIED_UPDATE_CONTENT_PREVIEW     = 45;
    REMOVE_ALL_MESSAGES                 = 46;
    NOTIFIED_UPDATE_PURCHASES           = 47;
    DUMMY                               = 48;
    UPDATE_CONTACT                      = 49;
    NOTIFIED_RECEIVED_CALL              = 50;
    CANCEL_CALL                         = 51;
    NOTIFIED_REDIRECT                   = 52;
    NOTIFIED_CHANNEL_SYNC               = 53;
    FAILED_SEND_MESSAGE                 = 54;
    NOTIFIED_READ_MESSAGE               = 55;
    FAILED_EMAIL_CONFIRMATION           = 56;
    NOTIFIED_CHAT_CONTENT               = 58;
    NOTIFIED_PUSH_NOTICENTER_ITEM       = 59;
    NOTIFIED_JOIN_CHAT                  = 60;
    NOTIFIED_LEAVE_CHAT                 = 61;
    NOTIFIED_TYPING                     = 62;
    FRIEND_REQUEST_ACCEPTED             = 63;
    DESTROY_MESSAGE                     = 64;
    NOTIFIED_DESTROY_MESSAGE            = 65;
    UPDATE_PUBLICKEYCHAIN               = 66;
    NOTIFIED_UPDATE_PUBLICKEYCHAIN      = 67;
    NOTIFIED_BLOCK_CONTACT              = 68;
    NOTIFIED_UNBLOCK_CONTACT            = 69;
    UPDATE_GROUPPREFERENCE              = 70;
    NOTIFIED_PAYMENT_EVENT              = 71;
    REGISTER_E2EE_PUBLICKEY             = 72;
    NOTIFIED_E2EE_KEY_EXCHANGE_REQ      = 73;
    NOTIFIED_E2EE_KEY_EXCHANGE_RESP     = 74;
    NOTIFIED_E2EE_MESSAGE_RESEND_REQ    = 75;
    NOTIFIED_E2EE_MESSAGE_RESEND_RESP   = 76;
    NOTIFIED_E2EE_KEY_UPDATE            = 77;
    NOTIFIED_BUDDY_UPDATE_PROFILE       = 78;
    NOTIFIED_UPDATE_LINEAT_TABS         = 79;
    UPDATE_ROOM                         = 80;
    NOTIFIED_BEACON_DETECTED            = 81;
    UPDATE_EXTENDED_PROFILE             = 82;
    ADD_FOLLOW                          = 83;
    NOTIFIED_ADD_FOLLOW                 = 84;
    DELETE_FOLLOW                       = 85;
    NOTIFIED_DELETE_FOLLOW              = 86;
    UPDATE_TIMELINE_SETTINGS            = 87;
    NOTIFIED_FRIEND_REQUEST             = 88;
    UPDATE_RINGBACK_TONE                = 89;
    NOTIFIED_POSTBACK                   = 90;
    RECEIVE_READ_WATERMARK              = 91;
    NOTIFIED_MESSAGE_DELIVERED          = 92;
    NOTIFIED_UPDATE_CHAT_BAR            = 93;
    NOTIFIED_CHATAPP_INSTALLED          = 94;
    NOTIFIED_CHATAPP_UPDATED            = 95;
    NOTIFIED_CHATAPP_NEW_MARK           = 96;
    NOTIFIED_CHATAPP_DELETED            = 97;
    NOTIFIED_CHATAPP_SYNC               = 98;
    NOTIFIED_UPDATE_MESSAGE             = 99;
    UPDATE_CHATROOMBGM                  = 100;
    NOTIFIED_UPDATE_CHATROOMBGM         = 101;
    UPDATE_RINGTONE                     = 102;
    UPDATE_USER_SETTINGS                = 118;
    NOTIFIED_UPDATE_STATUS_BAR          = 119;
    CREATE_CHAT                         = 120;
    UPDATE_CHAT                         = 121;
    NOTIFIED_UPDATE_CHAT                = 122;
    INVITE_INTO_CHAT                    = 123;
    NOTIFIED_INVITE_INTO_CHAT           = 124;
    CANCEL_CHAT_INVITATION              = 125;
    NOTIFIED_CANCEL_CHAT_INVITATION     = 126;
    DELETE_SELF_FROM_CHAT               = 127;
    NOTIFIED_DELETE_SELF_FROM_CHAT      = 128;
    ACCEPT_CHAT_INVITATION              = 129;
    NOTIFIED_ACCEPT_CHAT_INVITATION     = 130;
    REJECT_CHAT_INVITATION              = 131;
    DELETE_OTHER_FROM_CHAT              = 132;
    NOTIFIED_DELETE_OTHER_FROM_CHAT     = 133;
    NOTIFIED_CONTACT_CALENDAR_EVENT     = 134;
    NOTIFIED_CONTACT_CALENDAR_EVENT_ALL = 135;
    UPDATE_THINGS_OPERATIONS            = 136;
    SEND_CHAT_HIDDEN                    = 137;
    CHAT_META_SYNC_ALL                  = 138;
    SEND_REACTION                       = 139;
    NOTIFIED_SEND_REACTION              = 140;
    NOTIFIED_UPDATE_PROFILE_CONTENT     = 141;
    FAILED_DELIVERY_MESSAGE             = 142;
}

enum OpStatus {
    NORMAL         = 0;
    ALERT_DISABLED = 1;
    ALWAYS         = 2;
}

enum MIDType {
    USER          = 0;
    ROOM          = 1;
    GROUP         = 2;
    SQUARE        = 3;
    SQUARE_CHAT   = 4;
    SQUARE_MEMBER = 5;
    BOT           = 6;
}

enum MessageRelationType {
    FORWARD     = 0;
    AUTO_REPLY  = 1;
    SUBORDINATE = 2;
    REPLY       = 3;
}

enum ServiceCode {
    UNKNOWN = 0;
    TALK    = 1;
    SQUARE  = 2;
}

enum AppExtensionType {
    SIRI             = 1;
    GOOGLE_ASSISTANT = 2;
    OS_SHARE         = 3;
}

enum PredefinedReactionType {
    NICE    = 2;
    LOVE    = 3;
    FUN     = 4;
    AMAZING = 5;
    SAD     = 6;
    OMG     = 7;
}

enum PlaceSearchProvider {
    GOOGLE     = 0;
    BAIDU      = 1;
    FOURSQUARE = 2;
}

enum GeolocationAccuracyMode {
    UNKNOWN                  = 0;
    IOS_REDUCED_ACCURACY     = 1;
    IOS_FULL_ACCURACY        = 2;
    AOS_PRECISE_LOCATION     = 3;
    AOS_APPROXIMATE_LOCATION = 4;
}

enum ContentType {
    NONE             = 0;
    IMAGE            = 1;
    VIDEO            = 2;
    AUDIO            = 3;
    HTML             = 4;
    PDF              = 5;
    CALL             = 6;
    STICKER          = 7;
    PRESENCE         = 8;
    GIFT             = 9;
    GROUPBOARD       = 10;
    APPLINK          = 11;
    LINK             = 12;
    CONTACT          = 13;
    FILE             = 14;
    LOCATION         = 15;
    POSTNOTIFICATION = 16;
    RICH             = 17;
    CHATEVENT        = 18;
    MUSIC            = 19;
    PAYMENT          = 20;
    EXTIMAGE         = 21;
    FLEX             = 22;
}

enum ContactType {
    MID             = 0;
    PHONE           = 1;
    EMAIL           = 2;
    USERID          = 3;
    PROXIMITY       = 4;
    GROUP           = 5;
    USER            = 6;
    QRCODE          = 7;
    PROMOTION_BOT   = 8;
    CONTACT_MESSAGE = 9;
    FRIEND_REQUEST  = 10;
    BEACON          = 11;
    REPAIR          = 128;
    FACEBOOK        = 2305;
    SINA            = 2306;
    RENREN          = 2307;
    FEIXIN          = 2308;
    BBM             = 2309;
}

enum ContactStatus {
    UNSPECIFIED       = 0;
    FRIEND            = 1;
    FRIEND_BLOCKED    = 2;
    RECOMMEND         = 3;
    RECOMMEND_BLOCKED = 4;
    DELETED           = 5;
    DELETED_BLOCKED   = 6;
}

enum ContactRelation {
    ONEWAY         = 0;
    BOTH           = 1;
    NOT_REGISTERED = 2;
}

enum FriendRequestStatus {
    NONE              = 0;
    AVAILABLE         = 1;
    ALREADY_REQUESTED = 2;
    UNAVAILABLE       = 3;
}

enum ContactCalendarEventType {
    BIRTHDAY = 0;
}

enum UserStatus {
    NORMAL       = 0;
    UNBOUND      = 1;
    UNREGISTERED = 2;
    UNKNOWN      = 3;
}

enum ContactCalendarEventState {
    SHOW = 0;
    HIDE = 1;
}

enum SnsIdType {
    FACEBOOK   = 1;
    SINA       = 2;
    RENREN     = 3;
    FEIXIN     = 4;
    BBM        = 5;
    APPLE      = 6;
    YAHOOJAPAN = 7;
}

enum UserAgeType {
    OVER      = 1;
    UNDER     = 2;
    UNDEFINED = 3;
}

enum UserAllowProfileHistoryType {
    OWNER  = 0;
    FRIEND = 1;
}

enum UserStatusMessageHistoryType {
    NONE = 1;
    ALL  = 2;
}

enum UserSharePersonalInfoToFriendsType {
    NEVER_SHOW = 0;
    ONE_WAY    = 1;
    MUTUAL     = 2;
}

enum IdentityProvider {
    UNKNOWN    = 0;
    LINE       = 1;
    NAVER_KR   = 2;
    LINE_PHONE = 3;
}

enum EmailConfirmationStatus {
    NOT_SPECIFIED       = 0;
    NOT_YET             = 1;
    DONE                = 3;
    NEED_ENFORCED_INPUT = 4;
}

enum AccountMigrationPincodeType {
    NOT_APPLICABLE      = 0;
    NOT_SET             = 1;
    SET                 = 2;
    NEED_ENFORCED_INPUT = 3;
}

enum SecurityCenterSettingsType {
    NOT_APPLICABLE      = 0;
    NOT_SET             = 1;
    SET                 = 2;
    NEED_ENFORCED_INPUT = 3;
}

enum CustomMode {
    PROMOTION_FRIENDS_INVITE            = 1;
    CAPABILITY_SERVER_SIDE_SMS          = 2;
    LINE_CLIENT_ANALYTICS_CONFIGURATION = 3;
}

enum VerificationMethod {
    NO_AVAILABLE    = 0;
    PIN_VIA_SMS     = 1;
    CALLERID_INDIGO = 2;
    PIN_VIA_TTS     = 4;
    SKIP            = 10;
}

enum ContactSetting {
    CONTACT_SETTING_NOTIFICATION_DISABLE  = 1;
    CONTACT_SETTING_DISPLAY_NAME_OVERRIDE = 2;
    CONTACT_SETTING_CONTACT_HIDE          = 4;
    CONTACT_SETTING_FAVORITE              = 8;
    CONTACT_SETTING_DELETE                = 16;
}

enum FriendRequestMethod {
    TIMELINE = 1;
    NEARBY   = 2;
    SQUARE   = 3;
}

enum CharType {
    GROUP = 0;
    ROOM  = 1;
    PEER  = 2;
}

enum FeatureType {
    OBS_VIDEO         = 1;
    OBS_GENERAL       = 2;
    OBS_RINGBACK_TONE = 3;
}

enum NotificationType {
    APPLE_APNS      = 1;
    GOOGLE_C2DM     = 2;
    NHN_NNI         = 3;
    SKT_AOM         = 4;
    MS_MPNS         = 5;
    RIM_BIS         = 6;
    GOOGLE_GCM      = 7;
    NOKIA_NNAPI     = 8;
    TIZEN           = 9;
    MOZILLA_SIMPLE  = 10;
    LINE_BOT        = 17;
    LINE_WAP        = 18;
    APPLE_APNS_VOIP = 19;
    MS_WNS          = 20;
    GOOGLE_FCM      = 21;
    CLOVA           = 22;
    CLOVA_VOIP      = 23;
    HUAWEI_HCM      = 24;
}

enum ModificationType {
    ADD    = 0;
    REMOVE = 1;
    MODIFY = 2;
}

enum ChatAttribute {
    NAME                     = 1;
    PICTURE_STATUS           = 2;
    PREVENTED_JOIN_BY_TICKET = 4;
    NOTIFICATION_SETTING     = 8;
    INVITATION_TICKET        = 16;
    FAVORITE_TIMESTAMP       = 32;
    CHAT_TYPE                = 64;
}

enum BotType {
    RESERVED  = 0;
    OFFICIAL  = 1;
    LINE_AT_0 = 2;
    LINE_AT   = 3;
}

enum BuddyOnAirLabel {
    ON_AIR = 0;
    LIVE   = 1;
    GLP    = 2;
}

enum BuddyBotActiveStatus {
    UNSPECIFIED = 0;
    INACTIVE    = 1;
    ACTIVE      = 2;
    DELETED     = 3;
}

enum GroupCallMediaType {
    AUDIO = 1;
    VIDEO = 2;
    LIVE  = 3;
}

enum GroupCallProtocol {
    STANDARD  = 1;
    CONSTELLA = 2;
}

enum SyncTriggerReason {
    UNKNOWN                       = 0;
    REVISION_GAP_TOO_LARGE_CLIENT = 1;
    REVISION_GAP_TOO_LARGE_SERVER = 2;
    OPERATION_EXPIRED             = 3;
    REVISION_HOLE                 = 4;
    FORCE_TRIGGERED               = 5;
}

enum NotificationStatus {
    NOTIFICATION_ITEM_EXIST        = 1;
    TIMELINE_ITEM_EXIST            = 2;
    NOTE_GROUP_NEW_ITEM_EXIST      = 4;
    TIMELINE_BUDDYGROUP_CHANGED    = 8;
    NOTE_ONE_TO_ONE_NEW_ITEM_EXIST = 16;
    ALBUM_ITEM_EXIST               = 32;
    TIMELINE_ITEM_DELETED          = 64;
    OTOGROUP_ITEM_EXIST            = 128;
    GROUPHOME_NEW_ITEM_EXIST       = 256;
    GROUPHOME_HIDDEN_ITEM_CHANGED  = 512;
    NOTIFICATION_ITEM_CHANGED      = 1024;
    BEAD_ITEM_HIDE                 = 2048;
    BEAD_ITEM_SHOW                 = 4096;
    LINE_TICKET_UPDATED            = 8192;
    TIMELINE_STORY_UPDATED         = 16384;
    SMARTCH_UPDATED                = 32768;
    AVATAR_UPDATED                 = 65536;
    HOME_NOTIFICATION_ITEM_EXIST   = 131072;
    TIMELINE_REBOOT_COMPLETED      = 262144;
    TIMELINE_GUIDE_STORY_UPDATED   = 524288;
}

enum GlobalEventType {
    DUMMY                  = 0;
    NOTICE                 = 1;
    MORETAB                = 2;
    STICKERSHOP            = 3;
    CHANNEL                = 4;
    DENY_KEYWORD           = 5;
    CONNECTIONINFO         = 6;
    BUDDY                  = 7;
    TIMELINEINFO           = 8;
    THEMESHOP              = 9;
    CALLRATE               = 10;
    CONFIGURATION          = 11;
    STICONSHOP             = 12;
    SUGGESTDICTIONARY      = 13;
    SUGGESTSETTINGS        = 14;
    USERSETTINGS           = 15;
    ANALYTICSINFO          = 16;
    SEARCHPOPULARKEYWORD   = 17;
    SEARCHNOTICE           = 18;
    TIMELINE               = 19;
    SEARCHPOPULARCATEGORY  = 20;
    EXTENDEDPROFILE        = 21;
    SEASONALMARKETING      = 22;
    NEWSTAB                = 23;
    SUGGESTDICTIONARYV2    = 24;
    CHATAPPSYNC            = 25;
    AGREEMENTS             = 26;
    INSTANTNEWS            = 27;
    EMOJI_MAPPING          = 28;
    SEARCHBARKEYWORDS      = 29;
    SHOPPING               = 30;
    CHAT_EFFECT_BACKGROUND = 31;
    CHAT_EFFECT_KEYWORD    = 32;
    SEARCHINDEX            = 33;
    HUBTAB                 = 34;
    PAY_RULE_UPDATED       = 35;
    SMARTCH                = 36;
    HOME_SERVICE_LIST      = 37;
    TIMELINESTORY          = 38;
    WALLET_TAB             = 39;
    POD_TAB                = 40;
    HOME_SAFETY_CHECK      = 41;
}

enum SyncCategories {
    ALL            = 0;
    PROFILE        = 1;
    SETTINGS       = 2;
    CONFIGURATIONS = 3;
    CONTACT        = 4;
    GROUP          = 5;
    E2EE           = 6;
    MESSAGE        = 7;
}

enum MediaMessageFlow {
    V1 = 1;
    V2 = 2;
}

enum MessageReactionType {
    ALL     = 0;
    UNDO    = 1;
    NICE    = 2;
    LOVE    = 3;
    FUN     = 4;
    AMAZING = 5;
    SAD     = 6;
    OMG     = 7;
}

enum SquareChatAnnouncementType {
}