.class public Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;
.super Ljava/lang/Object;
.source "HiddenMenuDataOperation.java"


# instance fields
.field public LOG_TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "HiddenMenuDataOperation"

    iput-object v0, p0, Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;->LOG_TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public deleteExistingRow(Landroid/content/ContentResolver;)I
    .locals 4
    .parameter "r1"

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .local v0, rowCount:I
    const/4 v1, 0x0

    .local v1, x:I
    invoke-virtual {p0, p1}, Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;->getRowCount(Landroid/content/ContentResolver;)I

    move-result v0

    if-lez v0, :cond_0

    sget-object v2, Lcom/sec/android/internal/ims/external/MenuDetails$User;->DB_HIDDEN_MENU_DEL_URI:Landroid/net/Uri;

    invoke-virtual {p1, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    :cond_0
    return v1
.end method

.method public getAllData(Landroid/content/ContentResolver;)Lcom/sec/android/internal/ims/external/HiddenMenuData;
    .locals 17
    .parameter "r1"

    .prologue
    const/4 v14, 0x0

    .local v14, menuData:Lcom/sec/android/internal/ims/external/HiddenMenuData;
    sget-object v2, Lcom/sec/android/internal/ims/external/MenuDetails$User;->DB_HIDDEN_MENU_TABLE_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .local v7, c1:Landroid/database/Cursor;
    if-eqz v7, :cond_6

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_6

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .local v15, salesCode:Ljava/lang/String;
    const-string v1, "SKT"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    .local v12, isSKT:Z
    const-string v1, "LGT"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .local v11, isLGT:Z
    const-string v1, "Hidden Menu data"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSKT >>> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Hidden Menu data"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isLGT >>> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v14, Lcom/sec/android/internal/ims/external/HiddenMenuData;

    .end local v14           #menuData:Lcom/sec/android/internal/ims/external/HiddenMenuData;
    invoke-direct {v14}, Lcom/sec/android/internal/ims/external/HiddenMenuData;-><init>()V

    .restart local v14       #menuData:Lcom/sec/android/internal/ims/external/HiddenMenuData;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToLast()Z

    const-string v1, "mPrefCscfDns"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .local v8, coordIdx:I
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfDnsVal:Ljava/lang/String;

    const-string v1, "mPrefCscfDnsforWiFi"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfDnsforWiFiVal:Ljava/lang/String;

    const-string v1, "mPrefCscfIp"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfIpVal:Ljava/lang/String;

    const-string v1, "mAlwaysOn"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAlwaysOnVal:Ljava/lang/String;

    if-eqz v11, :cond_0

    const-string v1, "mPrefCscfIp2"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfIpVal2:Ljava/lang/String;

    const-string v1, "mPrefCscfIp3"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfIpVal3:Ljava/lang/String;

    const-string v1, "mPrefCscfIpCnt"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfIpCnt:Ljava/lang/String;

    :cond_0
    const-string v1, "mPrefCscfDomain"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfDomainVal:Ljava/lang/String;

    const-string v1, "mPrefCscfPort"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfPortVal:Ljava/lang/String;

    const-string v1, "mPrefCscfPortforLTE"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfPortforLTEVal:Ljava/lang/String;

    const-string v1, "mPrefCscfPortforWiFi"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfPortforWiFiVal:Ljava/lang/String;

    const-string v1, "mPrefXdmDns"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefXdmDnsVal:Ljava/lang/String;

    const-string v1, "mPrefXdmIp"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefXdmIpVal:Ljava/lang/String;

    const-string v1, "mPrefXdmIpforWiFi"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefXdmIpforWiFiVal:Ljava/lang/String;

    const-string v1, "mPrefAudioCodec"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefAudioCodecVal:Ljava/lang/String;

    const-string v1, "mPrefVideoCodec"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefVideoCodecVal:Ljava/lang/String;

    const-string v1, "mLoopback"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mLoopbackVal:Ljava/lang/String;

    const-string v1, "mEnableQos"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mEnableQosVal:Ljava/lang/String;

    iget-object v13, v14, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mEnableQosVal:Ljava/lang/String;

    .local v13, mString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SIP TIMERS String stored in DB Value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v13, :cond_1

    sget-object v13, Lcom/sec/android/internal/ims/external/HiddenMenuData;->DefaultmEnableQos:Ljava/lang/String;

    :cond_1
    const-string v9, "$"

    .local v9, dollar:Ljava/lang/String;
    invoke-virtual {v13, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    .local v10, isContain:Z
    if-eqz v10, :cond_2

    const-string v1, "\\$"

    invoke-virtual {v13, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .local v16, timerVals:[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v16, v1

    iput-object v1, v14, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mSipTimerT1Val:Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v1, v16, v1

    iput-object v1, v14, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mSipTimerT2Val:Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v1, v16, v1

    iput-object v1, v14, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mSipTimerFVal:Ljava/lang/String;

    .end local v16           #timerVals:[Ljava/lang/String;
    :cond_2
    const-string v1, "mVideoProfile"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mVideoProfileVal:Ljava/lang/String;

    const-string v1, "mAudioFirst"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAudioFirstVal:Ljava/lang/String;

    const-string v1, "mQosAware"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mQosAwareVal:Ljava/lang/String;

    const-string v1, "mVTDebugging"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mVTDebuggingVal:Ljava/lang/String;

    const-string v1, "mAutoTest"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAutoTestVal:Ljava/lang/String;

    const-string v1, "mPrefNwType"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefNwTypeVal:Ljava/lang/String;

    const-string v1, "mCurrLatchedNw"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mCurrLatchedNwVal:Ljava/lang/String;

    const-string v1, "mAccessNwInfo"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAccessNwInfoVal:Ljava/lang/String;

    const-string v1, "mCurrDispFormat"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mCurrDispFormatVal:Ljava/lang/String;

    const-string v1, "mFrameRate"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mFrameRateVal:Ljava/lang/String;

    const-string v1, "mBitRate"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mBitRateVal:Ljava/lang/String;

    const-string v1, "mDynamicBitRate"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mDynamicBitRateVal:Ljava/lang/String;

    const-string v1, "mAudioCodecMode"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAudioCodecModeVal:Ljava/lang/String;

    const-string v1, "mPublicUserIdentity"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPublicUserIdentityVal:Ljava/lang/String;

    const-string v1, "mPrivateUserIdentity"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrivateUserIdentityVal:Ljava/lang/String;

    if-eqz v11, :cond_3

    const-string v1, "mWiFiSetting"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mWiFiSettingVal:Ljava/lang/String;

    :cond_3
    const-string v1, "mRegisterTimer"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mRegisterTimerVal:Ljava/lang/String;

    const-string v1, "mSubscriberTimer"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mSubscriberTimerVal:Ljava/lang/String;

    const-string v1, "mSessionExpire"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mSessionExpireVal:Ljava/lang/String;

    const-string v1, "mAudioPort"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAudioPortVal:Ljava/lang/String;

    const-string v1, "mVideoPort"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mVideoPortVal:Ljava/lang/String;

    const-string v1, "mPDN"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPDNVal:Ljava/lang/String;

    if-eqz v11, :cond_4

    const-string v1, "mPcscfType"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPcscfTypeVal:Ljava/lang/String;

    const-string v1, "mCommercialPcscfIP"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mCommercialPcscfIPVal:Ljava/lang/String;

    const-string v1, "mCodecBandwidth"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mCodecBandwidthVal:Ljava/lang/String;

    const-string v1, "mAec"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAecVal:Ljava/lang/String;

    const-string v1, "mNs"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mNsVal:Ljava/lang/String;

    const-string v1, "mVad"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mVadVal:Ljava/lang/String;

    const-string v1, "mUserAgent"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mUserAgentVal:Ljava/lang/String;

    :cond_4
    const-string v1, "mEnableIMSOnRoamingVal"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mEnableIMSOnRoamingVal:Ljava/lang/String;

    const-string v1, "mAudioBitRate"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAudioBitRateVal:Ljava/lang/String;

    const-string v1, "mAMRBundlingRate"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAMRBundlingRateVal:Ljava/lang/String;

    const-string v1, "mDTX"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mDTXVal:Ljava/lang/String;

    const-string v1, "mJitterBufferSetting"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mJitterBufferSettingVal:Ljava/lang/String;

    if-eqz v12, :cond_5

    const-string v1, "mEnableConfigServer"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mEnableConfigServerAccess:Ljava/lang/String;

    const-string v1, "mConfigServerUrl"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mConfigServerUrl:Ljava/lang/String;

    const-string v1, "mConfigServerServiceId"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mConfigServerServiceId:Ljava/lang/String;

    const-string v1, "mTimerA"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mTimerA:Ljava/lang/String;

    const-string v1, "mTimerB"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mTimerB:Ljava/lang/String;

    const-string v1, "mTimerC"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mTimerC:Ljava/lang/String;

    const-string v1, "mTimerD"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mTimerD:Ljava/lang/String;

    const-string v1, "mTimerE"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mTimerE:Ljava/lang/String;

    const-string v1, "mTimerF"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mTimerF:Ljava/lang/String;

    const-string v1, "mTimerG"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mTimerG:Ljava/lang/String;

    const-string v1, "mTimerH"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mTimerH:Ljava/lang/String;

    const-string v1, "mTimerI"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mTimerI:Ljava/lang/String;

    const-string v1, "mTimerJ"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mTimerJ:Ljava/lang/String;

    const-string v1, "mTimerK"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mTimerK:Ljava/lang/String;

    const-string v1, "mTimer1"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mTimer1:Ljava/lang/String;

    const-string v1, "mTimer2"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mTimer2:Ljava/lang/String;

    const-string v1, "mTimer4"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mTimer4:Ljava/lang/String;

    const-string v1, "mSKTRealm"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mRealm:Ljava/lang/String;

    const-string v1, "mSKTUname"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mUname:Ljava/lang/String;

    const-string v1, "mSKTPwd"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPwd:Ljava/lang/String;

    :cond_5
    const-string v1, "mReserved1"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mReservedVal1:Ljava/lang/String;

    const-string v1, "mReserved2"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mReservedVal2:Ljava/lang/String;

    const-string v1, "mReserved3"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mReservedVal3:Ljava/lang/String;

    const-string v1, "mReserved4"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mReservedVal4:Ljava/lang/String;

    const-string v1, "mReserved5"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mReservedVal5:Ljava/lang/String;

    const-string v1, "mReserved6"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mReservedVal6:Ljava/lang/String;

    if-eqz v12, :cond_6

    const-string v1, "mReserved7"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mReservedVal7:Ljava/lang/String;

    const-string v1, "mReserved8"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mReservedVal8:Ljava/lang/String;

    .end local v8           #coordIdx:I
    .end local v9           #dollar:Ljava/lang/String;
    .end local v10           #isContain:Z
    .end local v11           #isLGT:Z
    .end local v12           #isSKT:Z
    .end local v13           #mString:Ljava/lang/String;
    .end local v15           #salesCode:Ljava/lang/String;
    :cond_6
    if-eqz v7, :cond_7

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_7
    return-object v14
.end method

.method public getRowCount(Landroid/content/ContentResolver;)I
    .locals 8
    .parameter "r1"

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x0

    .local v7, r:I
    sget-object v1, Lcom/sec/android/internal/ims/external/MenuDetails$User;->DB_HIDDEN_MENU_TABLE_URI:Landroid/net/Uri;

    move-object v0, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    return v7
.end method

.method public insertDataIntoDB(Lcom/sec/android/internal/ims/external/HiddenMenuData;Landroid/content/ContentResolver;)Landroid/net/Uri;
    .locals 8
    .parameter "obj"
    .parameter "r1"

    .prologue
    const/4 v3, 0x0

    .local v3, uri:Landroid/net/Uri;
    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    const-string v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, salesCode:Ljava/lang/String;
    const-string v5, "SKT"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .local v1, isSKT:Z
    const-string v5, "LGT"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .local v0, isLGT:Z
    const-string v5, "Hidden Menu data"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isSKT >>> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "Hidden Menu data"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isLGT >>> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .local v4, values:Landroid/content/ContentValues;
    const-string v5, "mPrefCscfDns"

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfDnsVal:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "mPrefCscfDnsforWiFi"

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfDnsforWiFiVal:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "mPrefCscfIp"

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfIpVal:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const-string v5, "mPrefCscfIp2"

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfIpVal2:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "mPrefCscfIp3"

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfIpVal3:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "mPrefCscfIpCnt"

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfIpCnt:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v5, "mPrefCscfDomain"

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfDomainVal:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "mPrefCscfPort"

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfPortVal:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "mPrefCscfPortforLTE"

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfPortforLTEVal:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "mPrefCscfPortforWiFi"

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfPortforWiFiVal:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "mPrefXdmDns"

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefXdmDnsVal:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "mPrefXdmIp"

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefXdmIpVal:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "mPrefXdmIpforWiFi"

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefXdmIpforWiFiVal:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "mPrefAudioCodec"

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefAudioCodecVal:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "mPrefVideoCodec"

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefVideoCodecVal:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "mLoopback"

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mLoopbackVal:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "mAlwaysOn"

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAlwaysOnVal:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "mEnableQos"

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mEnableQosVal:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "mVideoProfile"

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mVideoProfileVal:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "mAudioFirst"

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAudioFirstVal:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "mQosAware"

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mQosAwareVal:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "mVTDebugging"

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mVTDebuggingVal:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "mAutoTest"

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAutoTestVal:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "mPrefNwType"

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefNwTypeVal:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "mCurrLatchedNw"

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mCurrLatchedNwVal:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "mAccessNwInfo"

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAccessNwInfoVal:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "mCurrDispFormat"

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mCurrDispFormatVal:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "mFrameRate"

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mFrameRateVal:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "mBitRate"

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mBitRateVal:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "mDynamicBitRate"

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mDynamicBitRateVal:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "mAudioCodecMode"

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAudioCodecModeVal:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "mPublicUserIdentity"

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPublicUserIdentityVal:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "mPrivateUserIdentity"

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrivateUserIdentityVal:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    const-string v5, "mWiFiSetting"

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mWiFiSettingVal:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v5, "mRegisterTimer"

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mRegisterTimerVal:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "mSubscriberTimer"

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mSubscriberTimerVal:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "mSessionExpire"

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mSessionExpireVal:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "mAudioPort"

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAudioPortVal:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "mVideoPort"

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mVideoPortVal:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "mPDN"

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPDNVal:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    const-string v5, "mPcscfType"

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPcscfTypeVal:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "mCommercialPcscfIP"

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mCommercialPcscfIPVal:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "mCodecBandwidth"

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mCodecBandwidthVal:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "mAec"

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAecVal:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "mNs"

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mNsVal:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "mVad"

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mVadVal:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "mUserAgent"

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mUserAgentVal:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v5, "mAudioBitRate"

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAudioBitRateVal:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "mAMRBundlingRate"

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAMRBundlingRateVal:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "mDTX"

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mDTXVal:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "mJitterBufferSetting"

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mJitterBufferSettingVal:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "mEnableIMSOnRoamingVal"

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mEnableIMSOnRoamingVal:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_3

    const-string v5, "mConfigServerUrl"

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mConfigServerUrl:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "mConfigServerServiceId"

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mConfigServerServiceId:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "mEnableConfigServer"

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mEnableConfigServerAccess:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "mTimerA"

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mTimerA:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "mTimerB"

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mTimerB:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "mTimerC"

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mTimerC:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "mTimerD"

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mTimerD:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "mTimerE"

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mTimerE:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "mTimerF"

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mTimerF:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "mTimerG"

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mTimerG:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "mTimerH"

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mTimerH:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "mTimerI"

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mTimerI:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "mTimerJ"

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mTimerJ:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "mTimerK"

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mTimerK:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "mTimer1"

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mTimer1:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "mTimer2"

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mTimer2:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "mTimer4"

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mTimer4:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "mSKTPwd"

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPwd:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "mSKTRealm"

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mRealm:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "mSKTUname"

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mUname:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v5, "mReserved1"

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mReservedVal1:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "mReserved2"

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mReservedVal2:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "mReserved3"

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mReservedVal3:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "mReserved4"

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mReservedVal4:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "mReserved5"

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mReservedVal5:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "mReserved6"

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mReservedVal6:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_4

    const-string v5, "mReserved7"

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mReservedVal7:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "mReserved8"

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mReservedVal8:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    sget-object v5, Lcom/sec/android/internal/ims/external/MenuDetails$User;->DB_HIDDEN_MENU_TABLE_URI:Landroid/net/Uri;

    invoke-virtual {p2, v5, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v5, p0, Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;->LOG_TAG:Ljava/lang/String;

    const-string v6, "Saved new values successfuly to HiddenMenu DataBase"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #isLGT:Z
    .end local v1           #isSKT:Z
    .end local v2           #salesCode:Ljava/lang/String;
    .end local v4           #values:Landroid/content/ContentValues;
    :cond_5
    :goto_0
    return-object v3

    .restart local v0       #isLGT:Z
    .restart local v1       #isSKT:Z
    .restart local v2       #salesCode:Ljava/lang/String;
    .restart local v4       #values:Landroid/content/ContentValues;
    :cond_6
    iget-object v5, p0, Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HiddenMenu DataBase save operation failed!!!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfIpVal2:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "next value"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfIpVal3:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public insertSingleItemToDB(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)I
    .locals 4
    .parameter "item"
    .parameter "value"
    .parameter "r1"

    .prologue
    const/4 v3, 0x0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .local v1, values:Landroid/content/ContentValues;
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/sec/android/internal/ims/external/MenuDetails$User;->DB_HIDDEN_MENU_TABLE_URI:Landroid/net/Uri;

    invoke-virtual {p3, v2, v1, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .local v0, result:I
    return v0
.end method
