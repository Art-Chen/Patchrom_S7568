.class public Lcom/android/server/enterprise/PhoneRestrictionPolicy;
.super Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;
.source "PhoneRestrictionPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "PhoneRestrictionPolicy"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataCheckboxPreviousState:Z

.field private mDataLimitEnabled:Z

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

.field private mTelMgr:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-boolean v1, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mDataLimitEnabled:Z

    iput-boolean v1, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mDataCheckboxPreviousState:Z

    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, " >>> PhoneRestrictionPolicy.PhoneRestrictionPolicy()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/enterprise/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    invoke-virtual {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getDataCallLimitEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mDataLimitEnabled:Z

    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getDataCheckboxState()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mDataCheckboxPreviousState:Z

    iget-object v0, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method private blockDataNetwork()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_0

    const-string v2, "PhoneRestrictionPolicy"

    const-string v3, "Failed to get Connectivity Manager"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    iput-boolean v2, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mDataCheckboxPreviousState:Z

    iget-boolean v3, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mDataCheckboxPreviousState:Z

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->putDataCheckboxState(Z)Z

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method private dataLimitCounter(Ljava/lang/String;J)V
    .locals 5
    .parameter "period"
    .parameter "totalBytes"

    .prologue
    const-wide/16 v1, 0x0

    .local v1, storageValue:J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    :goto_0
    add-long/2addr v1, p2

    iget-object v3, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NumberFormatException;
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method private enforcePhoneApp()V
    .locals 2

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Can only be called by internal phone"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private enforcePhoneAppOrAdmin()V
    .locals 2

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhonePermission()I

    :cond_0
    return-void
.end method

.method private enforcePhonePermission()I
    .locals 2

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_PHONE_RESTRICTION"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private enforceSms()V
    .locals 2

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Can only receive SMS by internal phone"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private enforceSystemUser()V
    .locals 2

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Can only be called by system user"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private getDataCheckboxState()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v1, "dataCallPacketDataCheckBox"

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getRestrictionPattern(ZLjava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "allAdmins"
    .parameter "patternType"

    .prologue
    const/4 v5, 0x0

    .local v5, result:Ljava/lang/String;
    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhonePermission()I

    move-result v0

    .local v0, adminUid:I
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "PHONERESTRICTION"

    invoke-virtual {v6, v0, v7, p2}, Lcom/android/server/enterprise/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .end local v0           #adminUid:I
    :cond_0
    :goto_0
    return-object v5

    :cond_1
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "PHONERESTRICTION"

    invoke-virtual {v6, v7, p2}, Lcom/android/server/enterprise/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .local v4, restrictionList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, ""

    .local v1, allRestriction:Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .local v3, regex:Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .end local v3           #regex:Ljava/lang/String;
    :cond_2
    const-string v6, "|"

    invoke-virtual {v1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private getSmsMmsAllowed(Ljava/lang/String;)Z
    .locals 6
    .parameter "field"

    .prologue
    const/4 v1, 0x1

    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    invoke-virtual {v4, v5, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .local v2, value:Z
    if-nez v2, :cond_0

    move v1, v2

    .end local v2           #value:Z
    :cond_1
    return v1
.end method

.method private isNumberAllowed(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "phoneNumber"
    .parameter "policy"

    .prologue
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "PHONERESTRICTION"

    invoke-virtual {v6, v7, p2}, Lcom/android/server/enterprise/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .local v4, patternList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    if-eqz p1, :cond_1

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .local v5, regex:Ljava/lang/String;
    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .local v3, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .local v2, match:Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #match:Ljava/util/regex/Matcher;
    .end local v3           #pattern:Ljava/util/regex/Pattern;
    .end local v4           #patternList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v5           #regex:Ljava/lang/String;
    :goto_0
    return v6

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v6, "PhoneRestrictionPolicy"

    const-string v7, ">>> PhoneRestrictionPolicy.isNumberAllowed() - exception"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v6, 0x1

    goto :goto_0
.end method

.method private putDataCheckboxState(Z)Z
    .locals 3
    .parameter "state"

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v1, "dataCallPacketDataCheckBox"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private restorePacketDataNetworkSetting()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v3, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mDataCheckboxPreviousState:Z

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/enterprise/RestrictionPolicy;->isCellularDataAllowed()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_0

    const-string v2, "PhoneRestrictionPolicy"

    const-string v3, "Failed to get Connectivity Manager"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #connectivityManager:Landroid/net/ConnectivityManager;
    :goto_0
    return v1

    .restart local v0       #connectivityManager:Landroid/net/ConnectivityManager;
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    :cond_1
    iput-boolean v1, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mDataCheckboxPreviousState:Z

    iget-boolean v1, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mDataCheckboxPreviousState:Z

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->putDataCheckboxState(Z)Z

    .end local v0           #connectivityManager:Landroid/net/ConnectivityManager;
    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method private updateDateAndCounters()V
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v6, "PhoneRestrictionPolicy"

    const-string v7, ">>> PhoneRestrictionPolicy.updateDateAndCounters()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .local v0, calendarCurrent:Ljava/util/Calendar;
    const/16 v6, 0xb

    invoke-virtual {v0, v6, v9}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xc

    invoke-virtual {v0, v6, v9}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xd

    invoke-virtual {v0, v6, v9}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xe

    invoke-virtual {v0, v6, v9}, Ljava/util/Calendar;->set(II)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .local v1, calendarDay:Ljava/util/Calendar;
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "dateDay"

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .local v3, calendarWeek:Ljava/util/Calendar;
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "dateWeek"

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .local v2, calendarMonth:Ljava/util/Calendar;
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "dateMonth"

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .local v4, time:J
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "dateDay"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "incomingCallCountDay"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "outgoingCallCountDay"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {v3, v12}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v6, v7, :cond_0

    invoke-virtual {v3, v12}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v6, v7, :cond_1

    invoke-virtual {v3, v10}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-eq v6, v7, :cond_1

    :cond_0
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "dateWeek"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "incomingCallCountWeek"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "outgoingCallCountWeek"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    invoke-virtual {v2, v11}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v6, v7, :cond_2

    invoke-virtual {v3, v11}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v6, v7, :cond_3

    invoke-virtual {v3, v10}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-eq v6, v7, :cond_3

    :cond_2
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "dateMonth"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "incomingCallCountMonth"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "outgoingCallCountMonth"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_3
    const-string v6, "PhoneRestrictionPolicy"

    const-string v7, "PhoneRestrictionPolicy.updateDateAndCounters() >>>"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateDateAndCountersSms()V
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v6, "PhoneRestrictionPolicy"

    const-string v7, ">>> SmsRestrictionPolicy.updateDateAndCountersSms()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .local v0, calendarCurrent:Ljava/util/Calendar;
    const/16 v6, 0xb

    invoke-virtual {v0, v6, v9}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xc

    invoke-virtual {v0, v6, v9}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xd

    invoke-virtual {v0, v6, v9}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xe

    invoke-virtual {v0, v6, v9}, Ljava/util/Calendar;->set(II)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .local v1, calendarDay:Ljava/util/Calendar;
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "smsDateDay"

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .local v3, calendarWeek:Ljava/util/Calendar;
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "smsDateWeek"

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .local v2, calendarMonth:Ljava/util/Calendar;
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "smsDateMonth"

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .local v4, time:J
    const-string v6, "PhoneRestrictionPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "current time "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "smsDateDay"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "incomingSmsCountDay"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "outgoingSmsCountDay"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {v3, v12}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v6, v7, :cond_0

    invoke-virtual {v3, v12}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v6, v7, :cond_1

    invoke-virtual {v3, v10}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-eq v6, v7, :cond_1

    :cond_0
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "smsDateWeek"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "incomingSmsCountWeek"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "outgoingSmsCountWeek"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    invoke-virtual {v2, v11}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v6, v7, :cond_2

    invoke-virtual {v3, v11}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v6, v7, :cond_3

    invoke-virtual {v3, v10}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-eq v6, v7, :cond_3

    :cond_2
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "smsDateMonth"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "incomingSmsCountMonth"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "outgoingSmsCountMonth"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_3
    const-string v6, "PhoneRestrictionPolicy"

    const-string v7, "SmsRestrictionPolicy.updateDateAndCountersSms() >>>"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public addIncomingCallRestriction(Ljava/lang/String;)Z
    .locals 3
    .parameter "pattern"

    .prologue
    const-string v1, "PhoneRestrictionPolicy"

    const-string v2, ">>> PhoneRestrictionPolicy.addIncomingCallRestriction()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getIncomingCallRestriction(Z)Ljava/lang/String;

    move-result-object v0

    .local v0, regex:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->setIncomingCallRestriction(Ljava/lang/String;)Z

    move-result v1

    :goto_0
    return v1

    :cond_1
    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->setIncomingCallRestriction(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public addIncomingSmsRestriction(Ljava/lang/String;)Z
    .locals 3
    .parameter "pattern"

    .prologue
    const/4 v1, 0x0

    const-string v2, "smsRestrictionIncomingPattern"

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getRestrictionPattern(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, regex:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->setIncomingSmsRestriction(Ljava/lang/String;)Z

    move-result v1

    :goto_0
    return v1

    :cond_1
    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->setIncomingSmsRestriction(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public addNumberOfIncomingCalls()Z
    .locals 11

    .prologue
    const-string v8, "PhoneRestrictionPolicy"

    const-string v9, ">>> PhoneRestrictionPolicy.addNumberOfIncomingCalls()"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhoneApp()V

    iget-object v8, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v8

    if-nez v8, :cond_1

    const/4 v4, 0x0

    :cond_0
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    .local v4, ret:Z
    const/4 v0, 0x0

    .local v0, countDay:I
    const/4 v2, 0x0

    .local v2, countWeek:I
    const/4 v1, 0x0

    .local v1, countMonth:I
    invoke-virtual {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->isLimitNumberOfCallsEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v9, "incomingCallCountDay"

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, strCountDay:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v9, "incomingCallCountWeek"

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, strCountWeek:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v9, "incomingCallCountMonth"

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, strCountMonth:Ljava/lang/String;
    if-eqz v5, :cond_2

    if-eqz v7, :cond_2

    if-eqz v6, :cond_2

    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    iget-object v8, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v9, "incomingCallCountDay"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    add-int/lit8 v2, v2, 0x1

    iget-object v8, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v9, "incomingCallCountWeek"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    and-int/2addr v4, v8

    add-int/lit8 v1, v1, 0x1

    iget-object v8, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v9, "incomingCallCountMonth"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    and-int/2addr v4, v8

    const-string v8, "PhoneRestrictionPolicy"

    const-string v9, "PhoneRestrictionPolicy.addNumberOfIncomingCalls() >>>"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v3

    .local v3, e:Ljava/lang/NumberFormatException;
    const-string v8, "PhoneRestrictionPolicy"

    const-string v9, "addNumberOfIncomingCalls - exception"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public addNumberOfIncomingSms()Z
    .locals 8

    .prologue
    const-string v5, "PhoneRestrictionPolicy"

    const-string v6, ">>> SMSRestrictionPolicy.addNumberOfIncomingSMS()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforceSms()V

    const/4 v3, 0x0

    .local v3, ret:Z
    invoke-virtual {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->isLimitNumberOfSmsEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    move v4, v3

    .end local v3           #ret:Z
    .local v4, ret:I
    :goto_0
    return v4

    .end local v4           #ret:I
    .restart local v3       #ret:Z
    :cond_0
    iget-object v5, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "incomingSmsCountDay"

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .local v0, countDay:I
    add-int/lit8 v0, v0, 0x1

    iget-object v5, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "incomingSmsCountDay"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    iget-object v5, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "incomingSmsCountWeek"

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .local v2, countWeek:I
    add-int/lit8 v2, v2, 0x1

    iget-object v5, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "incomingSmsCountWeek"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v3, v5

    iget-object v5, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "incomingSmsCountMonth"

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .local v1, countMonth:I
    add-int/lit8 v1, v1, 0x1

    iget-object v5, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "incomingSmsCountMonth"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v3, v5

    const-string v5, "PhoneRestrictionPolicy"

    const-string v6, "SMSRestrictionPolicy.addNumberOfIncomingSMS() >>>"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    .restart local v4       #ret:I
    goto :goto_0
.end method

.method public addNumberOfOutgoingCalls()Z
    .locals 11

    .prologue
    const-string v8, "PhoneRestrictionPolicy"

    const-string v9, ">>> PhoneRestrictionPolicy.addNumberOfOutgoingCalls()"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhoneApp()V

    iget-object v8, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v8

    if-nez v8, :cond_1

    const/4 v4, 0x0

    :cond_0
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    .local v4, ret:Z
    const/4 v0, 0x0

    .local v0, countDay:I
    const/4 v2, 0x0

    .local v2, countWeek:I
    const/4 v1, 0x0

    .local v1, countMonth:I
    invoke-virtual {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->isLimitNumberOfCallsEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v9, "outgoingCallCountDay"

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, strCountDay:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v9, "outgoingCallCountWeek"

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, strCountWeek:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v9, "outgoingCallCountMonth"

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, strCountMonth:Ljava/lang/String;
    if-eqz v5, :cond_2

    if-eqz v7, :cond_2

    if-eqz v6, :cond_2

    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    iget-object v8, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v9, "outgoingCallCountDay"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    add-int/lit8 v2, v2, 0x1

    iget-object v8, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v9, "outgoingCallCountWeek"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    and-int/2addr v4, v8

    add-int/lit8 v1, v1, 0x1

    iget-object v8, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v9, "outgoingCallCountMonth"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    and-int/2addr v4, v8

    const-string v8, "PhoneRestrictionPolicy"

    const-string v9, "PhoneRestrictionPolicy.addNumberOfOutgoingCalls >>>"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v3

    .local v3, e:Ljava/lang/NumberFormatException;
    const-string v8, "PhoneRestrictionPolicy"

    const-string v9, "addNumberOfOutgoingCalls - exception"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public addNumberOfOutgoingSms()Z
    .locals 8

    .prologue
    const-string v5, "PhoneRestrictionPolicy"

    const-string v6, ">>> SmsRestrictionPolicy.addNumberOfOutgoingSms()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforceSms()V

    const/4 v3, 0x0

    .local v3, ret:Z
    invoke-virtual {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->isLimitNumberOfSmsEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    move v4, v3

    .end local v3           #ret:Z
    .local v4, ret:I
    :goto_0
    return v4

    .end local v4           #ret:I
    .restart local v3       #ret:Z
    :cond_0
    iget-object v5, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "outgoingSmsCountDay"

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .local v0, countDay:I
    add-int/lit8 v0, v0, 0x1

    iget-object v5, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "outgoingSmsCountDay"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    iget-object v5, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "outgoingSmsCountWeek"

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .local v2, countWeek:I
    add-int/lit8 v2, v2, 0x1

    iget-object v5, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "outgoingSmsCountWeek"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v3, v5

    iget-object v5, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "outgoingSmsCountMonth"

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .local v1, countMonth:I
    add-int/lit8 v1, v1, 0x1

    iget-object v5, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "outgoingSmsCountMonth"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v3, v5

    const-string v5, "PhoneRestrictionPolicy"

    const-string v6, "SmsRestrictionPolicy.addNumberOfOutgoingSms >>>"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    .restart local v4       #ret:I
    goto :goto_0
.end method

.method public addOutgoingCallRestriction(Ljava/lang/String;)Z
    .locals 3
    .parameter "pattern"

    .prologue
    const-string v1, "PhoneRestrictionPolicy"

    const-string v2, ">>> PhoneRestrictionPolicy.addOutgoingCallRestriction()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getOutgoingCallRestriction(Z)Ljava/lang/String;

    move-result-object v0

    .local v0, regex:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->setOutgoingCallRestriction(Ljava/lang/String;)Z

    move-result v1

    :goto_0
    return v1

    :cond_1
    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->setOutgoingCallRestriction(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public addOutgoingSmsRestriction(Ljava/lang/String;)Z
    .locals 3
    .parameter "pattern"

    .prologue
    const/4 v1, 0x0

    const-string v2, "smsRestrictionOutgoingPattern"

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getRestrictionPattern(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, regex:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->setOutgoingSmsRestriction(Ljava/lang/String;)Z

    move-result v1

    :goto_0
    return v1

    :cond_1
    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->setOutgoingSmsRestriction(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public allowIncomingMms(Z)Z
    .locals 4
    .parameter "allow"

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhonePermission()I

    move-result v0

    .local v0, callingUid:I
    iget-object v1, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "PHONERESTRICTION"

    const-string v3, "allowIncomingMms"

    invoke-virtual {v1, v0, v2, v3, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public allowIncomingSms(Z)Z
    .locals 4
    .parameter "allow"

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhonePermission()I

    move-result v0

    .local v0, callingUid:I
    iget-object v1, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "PHONERESTRICTION"

    const-string v3, "allowIncomingSms"

    invoke-virtual {v1, v0, v2, v3, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public allowOutgoingMms(Z)Z
    .locals 4
    .parameter "allow"

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhonePermission()I

    move-result v0

    .local v0, callingUid:I
    iget-object v1, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "PHONERESTRICTION"

    const-string v3, "allowOutgoingMms"

    invoke-virtual {v1, v0, v2, v3, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public allowOutgoingSms(Z)Z
    .locals 4
    .parameter "allow"

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhonePermission()I

    move-result v0

    .local v0, callingUid:I
    iget-object v1, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "PHONERESTRICTION"

    const-string v3, "allowOutgoingSms"

    invoke-virtual {v1, v0, v2, v3, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public canIncomingCall(Ljava/lang/String;)Z
    .locals 12
    .parameter "phoneNumber"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhoneAppOrAdmin()V

    iget-object v10, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v10

    if-nez v10, :cond_1

    :cond_0
    :goto_0
    return v8

    :cond_1
    iget-object v10, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRoamingPolicy()Landroid/app/enterprise/RoamingPolicy;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/enterprise/RoamingPolicy;->isRoamingVoiceCallsEnabled()Z

    move-result v10

    if-nez v10, :cond_2

    move v8, v9

    goto :goto_0

    :cond_2
    const-string v10, "incomingPattern"

    invoke-direct {p0, p1, v10}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->isNumberAllowed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .local v0, canCall:Z
    const/4 v7, 0x0

    .local v7, underLimit:Z
    invoke-virtual {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->isLimitNumberOfCallsEnabled()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->updateDateAndCounters()V

    invoke-virtual {p0, v9}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getLimitOfIncomingCalls(I)I

    move-result v4

    .local v4, limitDay:I
    iget-object v10, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v11, "incomingCallCountDay"

    invoke-virtual {v10, v11}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .local v1, countDay:I
    if-lt v1, v4, :cond_3

    if-ge v4, v8, :cond_6

    :cond_3
    invoke-virtual {p0, v8}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getLimitOfIncomingCalls(I)I

    move-result v6

    .local v6, limitWeek:I
    iget-object v10, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v11, "incomingCallCountWeek"

    invoke-virtual {v10, v11}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .local v3, countWeek:I
    if-lt v3, v6, :cond_4

    if-ge v6, v8, :cond_6

    :cond_4
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getLimitOfIncomingCalls(I)I

    move-result v5

    .local v5, limitMonth:I
    iget-object v10, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v11, "incomingCallCountMonth"

    invoke-virtual {v10, v11}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .local v2, countMonth:I
    if-lt v2, v5, :cond_5

    if-ge v5, v8, :cond_6

    :cond_5
    const/4 v7, 0x1

    .end local v1           #countDay:I
    .end local v2           #countMonth:I
    .end local v3           #countWeek:I
    .end local v4           #limitDay:I
    .end local v5           #limitMonth:I
    .end local v6           #limitWeek:I
    :cond_6
    :goto_1
    const-string v10, "PhoneRestrictionPolicy"

    const-string v11, "PhoneRestrictionPolicy.canIncomingCall >>>>"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_7

    if-nez v7, :cond_0

    :cond_7
    move v8, v9

    goto :goto_0

    :cond_8
    const/4 v7, 0x1

    goto :goto_1
.end method

.method public canIncomingSms(Ljava/lang/String;)Z
    .locals 13
    .parameter "phoneNumber"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhoneAppOrAdmin()V

    const-string v10, "smsRestrictionIncomingPattern"

    invoke-direct {p0, p1, v10}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->isNumberAllowed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .local v0, canReceive:Z
    const/4 v7, 0x0

    .local v7, underLimit:Z
    invoke-virtual {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->isLimitNumberOfSmsEnabled()Z

    move-result v10

    if-eqz v10, :cond_4

    const-string v10, "PhoneRestrictionPolicy"

    const-string v11, "Limit of sms is enabled!!!"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->updateDateAndCountersSms()V

    invoke-virtual {p0, v9}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getLimitOfIncomingSms(I)I

    move-result v4

    .local v4, limitDay:I
    const-string v10, "PhoneRestrictionPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "canIncomingSms - limitDay = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v11, "incomingSmsCountDay"

    invoke-virtual {v10, v11}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .local v1, countDay:I
    const-string v10, "PhoneRestrictionPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "canIncomingSms - countDay = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lt v1, v4, :cond_0

    if-ge v4, v8, :cond_3

    :cond_0
    invoke-virtual {p0, v8}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getLimitOfIncomingSms(I)I

    move-result v6

    .local v6, limitWeek:I
    iget-object v10, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v11, "incomingSmsCountWeek"

    invoke-virtual {v10, v11}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .local v3, countWeek:I
    if-lt v3, v6, :cond_1

    if-ge v6, v8, :cond_3

    :cond_1
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getLimitOfIncomingSms(I)I

    move-result v5

    .local v5, limitMonth:I
    iget-object v10, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v11, "incomingSmsCountMonth"

    invoke-virtual {v10, v11}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .local v2, countMonth:I
    if-lt v2, v5, :cond_2

    if-ge v5, v8, :cond_3

    :cond_2
    const/4 v7, 0x1

    const-string v10, "PhoneRestrictionPolicy"

    const-string v11, "canIncomingSms - limit = true"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1           #countDay:I
    .end local v2           #countMonth:I
    .end local v3           #countWeek:I
    .end local v4           #limitDay:I
    .end local v5           #limitMonth:I
    .end local v6           #limitWeek:I
    :cond_3
    :goto_0
    if-eqz v0, :cond_5

    if-eqz v7, :cond_5

    :goto_1
    return v8

    :cond_4
    const/4 v7, 0x1

    goto :goto_0

    :cond_5
    move v8, v9

    goto :goto_1
.end method

.method public canOutgoingCall(Ljava/lang/String;)Z
    .locals 12
    .parameter "phoneNumber"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhoneAppOrAdmin()V

    iget-object v10, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v10

    if-nez v10, :cond_1

    :cond_0
    :goto_0
    return v8

    :cond_1
    iget-object v10, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRoamingPolicy()Landroid/app/enterprise/RoamingPolicy;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/enterprise/RoamingPolicy;->isRoamingVoiceCallsEnabled()Z

    move-result v10

    if-nez v10, :cond_2

    move v8, v9

    goto :goto_0

    :cond_2
    const-string v10, "outgoingPattern"

    invoke-direct {p0, p1, v10}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->isNumberAllowed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .local v0, canCall:Z
    const/4 v7, 0x0

    .local v7, underLimit:Z
    invoke-virtual {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->isLimitNumberOfCallsEnabled()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->updateDateAndCounters()V

    invoke-virtual {p0, v9}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getLimitOfOutgoingCalls(I)I

    move-result v4

    .local v4, limitDay:I
    iget-object v10, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v11, "outgoingCallCountDay"

    invoke-virtual {v10, v11}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .local v1, countDay:I
    if-lt v1, v4, :cond_3

    if-ge v4, v8, :cond_6

    :cond_3
    invoke-virtual {p0, v8}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getLimitOfOutgoingCalls(I)I

    move-result v6

    .local v6, limitWeek:I
    iget-object v10, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v11, "outgoingCallCountWeek"

    invoke-virtual {v10, v11}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .local v3, countWeek:I
    if-lt v3, v6, :cond_4

    if-ge v6, v8, :cond_6

    :cond_4
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getLimitOfOutgoingCalls(I)I

    move-result v5

    .local v5, limitMonth:I
    iget-object v10, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v11, "outgoingCallCountMonth"

    invoke-virtual {v10, v11}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .local v2, countMonth:I
    if-lt v2, v5, :cond_5

    if-ge v5, v8, :cond_6

    :cond_5
    const/4 v7, 0x1

    .end local v1           #countDay:I
    .end local v2           #countMonth:I
    .end local v3           #countWeek:I
    .end local v4           #limitDay:I
    .end local v5           #limitMonth:I
    .end local v6           #limitWeek:I
    :cond_6
    :goto_1
    const-string v10, "PhoneRestrictionPolicy"

    const-string v11, "PhoneRestrictionPolicy.canOutgoingCall >>>>"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_7

    if-nez v7, :cond_0

    :cond_7
    move v8, v9

    goto :goto_0

    :cond_8
    const/4 v7, 0x1

    goto :goto_1
.end method

.method public canOutgoingSms(Ljava/lang/String;)Z
    .locals 13
    .parameter "phoneNumber"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhoneAppOrAdmin()V

    const-string v10, "smsRestrictionOutgoingPattern"

    invoke-direct {p0, p1, v10}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->isNumberAllowed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .local v0, canSend:Z
    const/4 v7, 0x0

    .local v7, underLimit:Z
    invoke-virtual {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->isLimitNumberOfSmsEnabled()Z

    move-result v10

    if-eqz v10, :cond_4

    const-string v10, "PhoneRestrictionPolicy"

    const-string v11, "Limit of sms is enabled!!!"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->updateDateAndCountersSms()V

    invoke-virtual {p0, v9}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getLimitOfOutgoingSms(I)I

    move-result v4

    .local v4, limitDay:I
    const-string v10, "PhoneRestrictionPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "canOutgoingSms - limitDay = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v11, "outgoingSmsCountDay"

    invoke-virtual {v10, v11}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .local v1, countDay:I
    const-string v10, "PhoneRestrictionPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "canOutgoingSms - countDay = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lt v1, v4, :cond_0

    if-ge v4, v8, :cond_3

    :cond_0
    invoke-virtual {p0, v8}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getLimitOfOutgoingSms(I)I

    move-result v6

    .local v6, limitWeek:I
    iget-object v10, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v11, "outgoingSmsCountWeek"

    invoke-virtual {v10, v11}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .local v3, countWeek:I
    if-lt v3, v6, :cond_1

    if-ge v6, v8, :cond_3

    :cond_1
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getLimitOfOutgoingSms(I)I

    move-result v5

    .local v5, limitMonth:I
    iget-object v10, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v11, "outgoingSmsCountMonth"

    invoke-virtual {v10, v11}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .local v2, countMonth:I
    if-lt v2, v5, :cond_2

    if-ge v5, v8, :cond_3

    :cond_2
    const/4 v7, 0x1

    const-string v10, "PhoneRestrictionPolicy"

    const-string v11, "canOutgoingSms - limit = true"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1           #countDay:I
    .end local v2           #countMonth:I
    .end local v3           #countWeek:I
    .end local v4           #limitDay:I
    .end local v5           #limitMonth:I
    .end local v6           #limitWeek:I
    :cond_3
    :goto_0
    const-string v10, "PhoneRestrictionPolicy"

    const-string v11, "SmsRestrictionPolicy.canOutgoingSms >>>>"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_5

    if-eqz v7, :cond_5

    :goto_1
    return v8

    :cond_4
    const/4 v7, 0x1

    goto :goto_0

    :cond_5
    move v8, v9

    goto :goto_1
.end method

.method public checkDataCallLimit()Z
    .locals 15

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforceSystemUser()V

    iget-boolean v13, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mDataLimitEnabled:Z

    if-nez v13, :cond_0

    const/4 v13, 0x0

    :goto_0
    return v13

    :cond_0
    const/4 v13, 0x0

    invoke-virtual {p0, v13}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getLimitOfDataCalls(I)J

    move-result-wide v2

    .local v2, dayLimit:J
    const/4 v13, 0x1

    invoke-virtual {p0, v13}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getLimitOfDataCalls(I)J

    move-result-wide v11

    .local v11, weekLimit:J
    const/4 v13, 0x2

    invoke-virtual {p0, v13}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getLimitOfDataCalls(I)J

    move-result-wide v7

    .local v7, monthLimit:J
    const-wide/16 v0, 0x0

    .local v0, dayCurrent:J
    const-wide/16 v9, 0x0

    .local v9, weekCurrent:J
    const-wide/16 v5, 0x0

    .local v5, monthCurrent:J
    :try_start_0
    iget-object v13, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v14, "dataCallBytesCountByDay"

    invoke-virtual {v13, v14}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_1
    :try_start_1
    iget-object v13, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v14, "dataCallBytesCountByWeek"

    invoke-virtual {v13, v14}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v9

    :goto_2
    :try_start_2
    iget-object v13, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v14, "dataCallByteCountByMonth"

    invoke-virtual {v13, v14}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-wide v5

    :goto_3
    const-wide/16 v13, 0x0

    cmp-long v13, v13, v2

    if-gez v13, :cond_1

    cmp-long v13, v0, v2

    if-gtz v13, :cond_3

    :cond_1
    const-wide/16 v13, 0x0

    cmp-long v13, v13, v11

    if-gez v13, :cond_2

    cmp-long v13, v9, v11

    if-gtz v13, :cond_3

    :cond_2
    const-wide/16 v13, 0x0

    cmp-long v13, v13, v7

    if-gez v13, :cond_4

    cmp-long v13, v5, v7

    if-lez v13, :cond_4

    :cond_3
    const/4 v13, 0x1

    goto :goto_0

    :catch_0
    move-exception v4

    .local v4, e:Ljava/lang/NumberFormatException;
    const-string v13, "PhoneRestrictionPolicy"

    const-string v14, "Could not read from Storage"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v4           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v4

    .restart local v4       #e:Ljava/lang/NumberFormatException;
    const-string v13, "PhoneRestrictionPolicy"

    const-string v14, "Could not read from Storage"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v4           #e:Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v4

    .restart local v4       #e:Ljava/lang/NumberFormatException;
    const-string v13, "PhoneRestrictionPolicy"

    const-string v14, "Could not read from Storage"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .end local v4           #e:Ljava/lang/NumberFormatException;
    :cond_4
    const/4 v13, 0x0

    goto :goto_0
.end method

.method public checkEnableUseOfPacketData(Z)Z
    .locals 7
    .parameter "showMsg"

    .prologue
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, token:J
    const/4 v1, 0x0

    .local v1, ret:Z
    const-wide/16 v4, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->updateDateAndDataCallCounters(J)V

    invoke-virtual {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->checkDataCallLimit()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/enterprise/RestrictionPolicy;->isCellularDataAllowed()Z

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, i:Landroid/content/Intent;
    const-string v4, "message"

    iget-object v5, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    const v6, 0x10401c4

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .end local v0           #i:Landroid/content/Intent;
    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public decreaseNumberOfOutgoingSms()Z
    .locals 8

    .prologue
    const-string v5, "PhoneRestrictionPolicy"

    const-string v6, ">>> SmsRestrictionPolicy.decreaseNumberOfOutgoingSms()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforceSms()V

    const/4 v3, 0x0

    .local v3, ret:Z
    invoke-virtual {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->isLimitNumberOfSmsEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    move v4, v3

    .end local v3           #ret:Z
    .local v4, ret:I
    :goto_0
    return v4

    .end local v4           #ret:I
    .restart local v3       #ret:Z
    :cond_0
    iget-object v5, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "outgoingSmsCountDay"

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .local v0, countDay:I
    add-int/lit8 v0, v0, -0x1

    iget-object v5, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "outgoingSmsCountDay"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    iget-object v5, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "outgoingSmsCountWeek"

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .local v2, countWeek:I
    add-int/lit8 v2, v2, -0x1

    iget-object v5, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "outgoingSmsCountWeek"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v3, v5

    iget-object v5, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "outgoingSmsCountMonth"

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .local v1, countMonth:I
    add-int/lit8 v1, v1, -0x1

    iget-object v5, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "outgoingSmsCountMonth"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v3, v5

    const-string v5, "PhoneRestrictionPolicy"

    const-string v6, "SmsRestrictionPolicy.addNumberOfOutgoingSms >>>"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    .restart local v4       #ret:I
    goto :goto_0
.end method

.method public enableLimitNumberOfCalls(Z)Z
    .locals 10
    .parameter "status"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v7, "PhoneRestrictionPolicy"

    const-string v8, " >>>> enableLimitNumberOfCalls "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhonePermission()I

    move-result v1

    .local v1, callingUid:I
    iget-object v7, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v7

    if-nez v7, :cond_0

    :goto_0
    return v6

    :cond_0
    const/4 v2, 0x1

    .local v2, ret:Z
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->isLimitNumberOfCallsEnabled()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->resetCallsCount()Z

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .local v0, calendar:Ljava/util/Calendar;
    const/16 v7, 0xb

    invoke-virtual {v0, v7, v6}, Ljava/util/Calendar;->set(II)V

    const/16 v7, 0xc

    invoke-virtual {v0, v7, v6}, Ljava/util/Calendar;->set(II)V

    const/16 v7, 0xd

    invoke-virtual {v0, v7, v6}, Ljava/util/Calendar;->set(II)V

    const/16 v7, 0xe

    invoke-virtual {v0, v7, v6}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    .local v3, time:J
    iget-object v7, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v8, "dateDay"

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v7, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v8, "dateWeek"

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v2, v5

    :goto_1
    if-eqz v2, :cond_3

    iget-object v7, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v8, "dateMonth"

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v2, v5

    .end local v0           #calendar:Ljava/util/Calendar;
    .end local v3           #time:J
    :cond_1
    :goto_2
    const-string v7, "PhoneRestrictionPolicy"

    const-string v8, "enableLimitNumberOfCalls  >>>>>"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_4

    iget-object v7, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v8, "PHONERESTRICTION"

    const-string v9, "limitCallEnable"

    invoke-virtual {v7, v1, v8, v9, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_4

    :goto_3
    move v6, v5

    goto :goto_0

    .restart local v0       #calendar:Ljava/util/Calendar;
    .restart local v3       #time:J
    :cond_2
    move v2, v6

    goto :goto_1

    :cond_3
    move v2, v6

    goto :goto_2

    .end local v0           #calendar:Ljava/util/Calendar;
    .end local v3           #time:J
    :cond_4
    move v5, v6

    goto :goto_3
.end method

.method public enableLimitNumberOfSms(Z)Z
    .locals 10
    .parameter "status"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v7, "PhoneRestrictionPolicy"

    const-string v8, " >>>> enableLimitNumberOfSMS "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhonePermission()I

    move-result v1

    .local v1, callingUid:I
    const/4 v2, 0x1

    .local v2, ret:Z
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->isLimitNumberOfSmsEnabled()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->resetSmsCount()Z

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .local v0, calendar:Ljava/util/Calendar;
    const/16 v7, 0xb

    invoke-virtual {v0, v7, v6}, Ljava/util/Calendar;->set(II)V

    const/16 v7, 0xc

    invoke-virtual {v0, v7, v6}, Ljava/util/Calendar;->set(II)V

    const/16 v7, 0xd

    invoke-virtual {v0, v7, v6}, Ljava/util/Calendar;->set(II)V

    const/16 v7, 0xe

    invoke-virtual {v0, v7, v6}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    .local v3, time:J
    iget-object v7, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v8, "smsDateDay"

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v7, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v8, "smsDateWeek"

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v2, v5

    :goto_0
    if-eqz v2, :cond_2

    iget-object v7, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v8, "smsDateMonth"

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v2, v5

    .end local v0           #calendar:Ljava/util/Calendar;
    .end local v3           #time:J
    :cond_0
    :goto_1
    const-string v7, "PhoneRestrictionPolicy"

    const-string v8, "enableLimitNumberOfSMS  >>>>>"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_3

    iget-object v7, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v8, "PHONERESTRICTION"

    const-string v9, "limitSmsEnable"

    invoke-virtual {v7, v1, v8, v9, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_3

    :goto_2
    return v5

    .restart local v0       #calendar:Ljava/util/Calendar;
    .restart local v3       #time:J
    :cond_1
    move v2, v6

    goto :goto_0

    :cond_2
    move v2, v6

    goto :goto_1

    .end local v0           #calendar:Ljava/util/Calendar;
    .end local v3           #time:J
    :cond_3
    move v5, v6

    goto :goto_2
.end method

.method public getDataCallLimitEnabled()Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "enableLimitDataCall"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .local v3, values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .local v2, value:Z
    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    move v1, v2

    .end local v2           #value:Z
    :cond_1
    return v1
.end method

.method public getEmergencyCallOnly(Z)Z
    .locals 9
    .parameter "allAdmins"

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhoneAppOrAdmin()V

    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v6

    if-nez v6, :cond_1

    const/4 v5, 0x0

    :cond_0
    :goto_0
    return v5

    :cond_1
    const/4 v5, 0x0

    .local v5, result:Z
    if-nez p1, :cond_2

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhonePermission()I

    move-result v0

    .local v0, adminUid:I
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "PHONERESTRICTION"

    const-string v8, "emergencyCallOnly"

    invoke-virtual {v6, v0, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    goto :goto_0

    .end local v0           #adminUid:I
    :cond_2
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "PHONERESTRICTION"

    const-string v8, "emergencyCallOnly"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .local v4, restrictionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .local v1, block:Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_3

    const/4 v5, 0x1

    goto :goto_0

    .end local v1           #block:Ljava/lang/Boolean;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #restrictionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    :catch_0
    move-exception v2

    .local v2, e:Ljava/lang/Exception;
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public getIncomingCallRestriction(Z)Ljava/lang/String;
    .locals 2
    .parameter "allAdmins"

    .prologue
    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, ">>> PhoneRestrictionPolicy.getIncomingCallRestriction()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhonePermission()I

    iget-object v0, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "incomingPattern"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getRestrictionPattern(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getIncomingSmsRestriction(Z)Ljava/lang/String;
    .locals 1
    .parameter "allAdmins"

    .prologue
    const-string v0, "smsRestrictionIncomingPattern"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getRestrictionPattern(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLimitOfDataCalls(I)J
    .locals 11
    .parameter "type"

    .prologue
    const-wide/16 v9, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhonePermission()I

    const/4 v1, 0x0

    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    packed-switch p1, :pswitch_data_0

    const-wide/16 v2, -0x1

    :cond_0
    return-wide v2

    :pswitch_0
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "PHONERESTRICTION"

    const-string v8, "dataCallByDay"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->getLongList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const-wide/16 v2, 0x0

    .local v2, res:J
    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .local v4, value:J
    cmp-long v6, v4, v9

    if-eqz v6, :cond_1

    cmp-long v6, v4, v2

    if-ltz v6, :cond_2

    cmp-long v6, v2, v9

    if-nez v6, :cond_1

    :cond_2
    move-wide v2, v4

    goto :goto_1

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #res:J
    .end local v4           #value:J
    :pswitch_1
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "PHONERESTRICTION"

    const-string v8, "dataCallByWeek"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->getLongList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const-wide/16 v2, 0x0

    .restart local v2       #res:J
    goto :goto_0

    .end local v2           #res:J
    :pswitch_2
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "PHONERESTRICTION"

    const-string v8, "dataCallByMonth"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->getLongList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const-wide/16 v2, 0x0

    .restart local v2       #res:J
    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getLimitOfIncomingCalls(I)I
    .locals 7
    .parameter "type"

    .prologue
    const/4 v2, -0x1

    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhoneAppOrAdmin()V

    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v1, 0x0

    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "incomingCallByDay"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    .local v2, res:I
    :goto_1
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .local v3, value:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lt v4, v2, :cond_3

    if-nez v2, :cond_2

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_2

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #res:I
    .end local v3           #value:Ljava/lang/Integer;
    :pswitch_1
    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "incomingCallByWeek"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    .restart local v2       #res:I
    goto :goto_1

    .end local v2           #res:I
    :pswitch_2
    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "incomingCallByMonth"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    .restart local v2       #res:I
    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getLimitOfIncomingSms(I)I
    .locals 7
    .parameter "type"

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhoneAppOrAdmin()V

    const/4 v1, 0x0

    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    packed-switch p1, :pswitch_data_0

    const/4 v2, -0x1

    :cond_0
    return v2

    :pswitch_0
    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "incomingSmsByDay"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    .local v2, res:I
    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .local v3, value:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lt v4, v2, :cond_2

    if-nez v2, :cond_1

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #res:I
    .end local v3           #value:Ljava/lang/Integer;
    :pswitch_1
    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "incomingSmsByWeek"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    .restart local v2       #res:I
    goto :goto_0

    .end local v2           #res:I
    :pswitch_2
    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "incomingSmsByMonth"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    .restart local v2       #res:I
    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getLimitOfOutgoingCalls(I)I
    .locals 7
    .parameter "type"

    .prologue
    const/4 v2, -0x1

    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhoneAppOrAdmin()V

    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v1, 0x0

    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "outgoingCallByDay"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    .local v2, res:I
    :goto_1
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .local v3, value:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lt v4, v2, :cond_3

    if-nez v2, :cond_2

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_2

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #res:I
    .end local v3           #value:Ljava/lang/Integer;
    :pswitch_1
    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "outgoingCallByWeek"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    .restart local v2       #res:I
    goto :goto_1

    .end local v2           #res:I
    :pswitch_2
    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "outgoingCallByMonth"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    .restart local v2       #res:I
    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getLimitOfOutgoingSms(I)I
    .locals 7
    .parameter "type"

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhoneAppOrAdmin()V

    const/4 v1, 0x0

    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    packed-switch p1, :pswitch_data_0

    const/4 v2, -0x1

    :cond_0
    return v2

    :pswitch_0
    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "outgoingSmsByDay"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    .local v2, res:I
    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .local v3, value:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lt v4, v2, :cond_2

    if-nez v2, :cond_1

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #res:I
    .end local v3           #value:Ljava/lang/Integer;
    :pswitch_1
    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "outgoingSmsByWeek"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    .restart local v2       #res:I
    goto :goto_0

    .end local v2           #res:I
    :pswitch_2
    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "outgoingSmsByMonth"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    .restart local v2       #res:I
    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getOutgoingCallRestriction(Z)Ljava/lang/String;
    .locals 2
    .parameter "allAdmins"

    .prologue
    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, ">>> PhoneRestrictionPolicy.getOutgoingCallRestriction()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhonePermission()I

    iget-object v0, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "outgoingPattern"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getRestrictionPattern(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getOutgoingSmsRestriction(Z)Ljava/lang/String;
    .locals 1
    .parameter "allAdmins"

    .prologue
    const-string v0, "smsRestrictionOutgoingPattern"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getRestrictionPattern(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isIncomingMmsAllowed()Z
    .locals 1

    .prologue
    const-string v0, "allowIncomingMms"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getSmsMmsAllowed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isIncomingSmsAllowed()Z
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhoneAppOrAdmin()V

    const-string v0, "allowIncomingSms"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getSmsMmsAllowed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isLimitNumberOfCallsEnabled()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhoneAppOrAdmin()V

    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "limitCallEnable"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .local v2, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .local v0, enable:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public isLimitNumberOfSmsEnabled()Z
    .locals 6

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhoneAppOrAdmin()V

    iget-object v3, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v4, "PHONERESTRICTION"

    const-string v5, "limitSmsEnable"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .local v2, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .local v0, enable:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .end local v0           #enable:Ljava/lang/Boolean;
    .end local v1           #i$:Ljava/util/Iterator;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isOutgoingMmsAllowed()Z
    .locals 1

    .prologue
    const-string v0, "allowOutgoingMms"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getSmsMmsAllowed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isOutgoingSmsAllowed()Z
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhoneAppOrAdmin()V

    const-string v0, "allowOutgoingSms"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getSmsMmsAllowed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onAdminAdded(I)V
    .locals 0
    .parameter "uid"

    .prologue
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 0
    .parameter "uid"

    .prologue
    invoke-virtual {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->updateDataLimitState()V

    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0
    .parameter "uid"

    .prologue
    return-void
.end method

.method public removeIncomingCallRestriction()Z
    .locals 2

    .prologue
    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, ">>> PhoneRestrictionPolicy.removeIncomingCallRestriction()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->setIncomingCallRestriction(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeIncomingSmsRestriction()Z
    .locals 1

    .prologue
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->setIncomingSmsRestriction(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeOutgoingCallRestriction()Z
    .locals 2

    .prologue
    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, ">>> PhoneRestrictionPolicy.removeOutgoingCallRestriction()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->setOutgoingCallRestriction(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeOutgoingSmsRestriction()Z
    .locals 1

    .prologue
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->setOutgoingSmsRestriction(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public resetCallsCount()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhonePermission()I

    iget-object v2, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "incomingCallCountDay"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .local v0, ret:Z
    iget-object v2, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "outgoingCallCountDay"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    and-int/2addr v0, v2

    iget-object v2, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "incomingCallCountWeek"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    and-int/2addr v0, v2

    iget-object v2, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "outgoingCallCountWeek"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    and-int/2addr v0, v2

    iget-object v2, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "incomingCallCountMonth"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    and-int/2addr v0, v2

    iget-object v2, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "outgoingCallCountMonth"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    and-int/2addr v0, v1

    goto :goto_0
.end method

.method public resetDataCallLimitCounter()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhonePermission()I

    iget-object v1, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "dataCallBytesCountByDay"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .local v0, ret:Z
    iget-object v1, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "dataCallBytesCountByWeek"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    and-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "dataCallByteCountByMonth"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    and-int/2addr v0, v1

    return v0
.end method

.method public resetSmsCount()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhonePermission()I

    iget-object v1, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "incomingSmsCountDay"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .local v0, ret:Z
    iget-object v1, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "outgoingSmsCountDay"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    and-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "incomingSmsCountWeek"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    and-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "outgoingSmsCountWeek"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    and-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "incomingSmsCountMonth"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    and-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "outgoingSmsCountMonth"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    and-int/2addr v0, v1

    return v0
.end method

.method public setDataCallLimitEnabled(Z)Z
    .locals 10
    .parameter "status"

    .prologue
    const/4 v8, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhonePermission()I

    move-result v1

    .local v1, callingUid:I
    const/4 v2, 0x1

    .local v2, ret:Z
    if-eqz p1, :cond_0

    iget-boolean v7, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mDataLimitEnabled:Z

    if-nez v7, :cond_0

    invoke-virtual {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->resetDataCallLimitCounter()Z

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .local v0, calendar:Ljava/util/Calendar;
    const/16 v7, 0xb

    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->set(II)V

    const/16 v7, 0xc

    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->set(II)V

    const/16 v7, 0xd

    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->set(II)V

    const/16 v7, 0xe

    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    .local v3, time:J
    iget-object v7, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v8, "dataCallDateDay"

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    iget-object v7, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v8, "dataCallDateWeek"

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    iget-object v7, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v8, "dataCallDateMonth"

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    .end local v0           #calendar:Ljava/util/Calendar;
    .end local v3           #time:J
    :cond_0
    iget-object v7, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v8, "PHONERESTRICTION"

    const-string v9, "enableLimitDataCall"

    invoke-virtual {v7, v1, v8, v9, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    and-int/2addr v2, v7

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getDataCallLimitEnabled()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mDataLimitEnabled:Z

    iget-boolean v7, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mDataLimitEnabled:Z

    if-nez v7, :cond_1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .local v5, token:J
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->restorePacketDataNetworkSetting()Z

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v5           #token:J
    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/enterprise/EnterpriseDeviceManager;->getDeviceInventory()Landroid/app/enterprise/DeviceInventory;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/enterprise/DeviceInventory;->dataUsageTimerActivation()V

    :cond_2
    return v2
.end method

.method public setEmergencyCallOnly(Z)Z
    .locals 4
    .parameter "enable"

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhonePermission()I

    move-result v0

    .local v0, adminUid:I
    iget-object v1, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "PHONERESTRICTION"

    const-string v3, "emergencyCallOnly"

    invoke-virtual {v1, v0, v2, v3, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0
.end method

.method public setIncomingCallRestriction(Ljava/lang/String;)Z
    .locals 4
    .parameter "pattern"

    .prologue
    const-string v1, "PhoneRestrictionPolicy"

    const-string v2, ">>> PhoneRestrictionPolicy.setIncomingCallRestriction()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhonePermission()I

    move-result v0

    .local v0, adminUid:I
    iget-object v1, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "PHONERESTRICTION"

    const-string v3, "incomingPattern"

    invoke-virtual {v1, v0, v2, v3, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public setIncomingSmsRestriction(Ljava/lang/String;)Z
    .locals 4
    .parameter "pattern"

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhonePermission()I

    move-result v0

    .local v0, adminUid:I
    iget-object v1, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "PHONERESTRICTION"

    const-string v3, "smsRestrictionIncomingPattern"

    invoke-virtual {v1, v0, v2, v3, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public setLimitOfDataCalls(JJJ)Z
    .locals 7
    .parameter "limitByDay"
    .parameter "limitByWeek"
    .parameter "limitByMonth"

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhonePermission()I

    move-result v1

    .local v1, callingUid:I
    iget-object v0, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "PHONERESTRICTION"

    const-string v3, "dataCallByDay"

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/EdmStorageProvider;->putLong(ILjava/lang/String;Ljava/lang/String;J)Z

    move-result v6

    .local v6, ret:Z
    iget-object v0, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "PHONERESTRICTION"

    const-string v3, "dataCallByWeek"

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/EdmStorageProvider;->putLong(ILjava/lang/String;Ljava/lang/String;J)Z

    move-result v0

    and-int/2addr v6, v0

    iget-object v0, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "PHONERESTRICTION"

    const-string v3, "dataCallByMonth"

    move-wide v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/EdmStorageProvider;->putLong(ILjava/lang/String;Ljava/lang/String;J)Z

    move-result v0

    and-int/2addr v6, v0

    return v6
.end method

.method public setLimitOfIncomingCalls(III)Z
    .locals 7
    .parameter "limitByDay"
    .parameter "limitByWeek"
    .parameter "limitByMonth"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhonePermission()I

    move-result v0

    .local v0, callingUid:I
    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    return v3

    :cond_0
    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "incomingCallByDay"

    invoke-virtual {v4, v0, v5, v6, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    .local v1, ret:Z
    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "incomingCallByWeek"

    invoke-virtual {v4, v0, v5, v6, p2}, Lcom/android/server/enterprise/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v2

    :goto_1
    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "incomingCallByMonth"

    invoke-virtual {v4, v0, v5, v6, p3}, Lcom/android/server/enterprise/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_2
    move v3, v2

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2
.end method

.method public setLimitOfIncomingSms(III)Z
    .locals 7
    .parameter "limitByDay"
    .parameter "limitByWeek"
    .parameter "limitByMonth"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhonePermission()I

    move-result v0

    .local v0, callingUid:I
    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "incomingSmsByDay"

    invoke-virtual {v4, v0, v5, v6, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    .local v1, ret:Z
    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "incomingSmsByWeek"

    invoke-virtual {v4, v0, v5, v6, p2}, Lcom/android/server/enterprise/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "incomingSmsByMonth"

    invoke-virtual {v4, v0, v5, v6, p3}, Lcom/android/server/enterprise/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_1
    return v2

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method public setLimitOfOutgoingCalls(III)Z
    .locals 7
    .parameter "limitByDay"
    .parameter "limitByWeek"
    .parameter "limitByMonth"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhonePermission()I

    move-result v0

    .local v0, callingUid:I
    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    return v3

    :cond_0
    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "outgoingCallByDay"

    invoke-virtual {v4, v0, v5, v6, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    .local v1, ret:Z
    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "outgoingCallByWeek"

    invoke-virtual {v4, v0, v5, v6, p2}, Lcom/android/server/enterprise/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v2

    :goto_1
    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "outgoingCallByMonth"

    invoke-virtual {v4, v0, v5, v6, p3}, Lcom/android/server/enterprise/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_2
    move v3, v2

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2
.end method

.method public setLimitOfOutgoingSms(III)Z
    .locals 7
    .parameter "limitByDay"
    .parameter "limitByWeek"
    .parameter "limitByMonth"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhonePermission()I

    move-result v0

    .local v0, callingUid:I
    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "outgoingSmsByDay"

    invoke-virtual {v4, v0, v5, v6, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    .local v1, ret:Z
    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "outgoingSmsByWeek"

    invoke-virtual {v4, v0, v5, v6, p2}, Lcom/android/server/enterprise/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "outgoingSmsByMonth"

    invoke-virtual {v4, v0, v5, v6, p3}, Lcom/android/server/enterprise/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_1
    return v2

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method public setOutgoingCallRestriction(Ljava/lang/String;)Z
    .locals 4
    .parameter "pattern"

    .prologue
    const-string v1, "PhoneRestrictionPolicy"

    const-string v2, ">>> PhoneRestrictionPolicy.setOutgoingCallRestriction()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhonePermission()I

    move-result v0

    .local v0, adminUid:I
    iget-object v1, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "PHONERESTRICTION"

    const-string v3, "outgoingPattern"

    invoke-virtual {v1, v0, v2, v3, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public setOutgoingSmsRestriction(Ljava/lang/String;)Z
    .locals 4
    .parameter "pattern"

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforcePhonePermission()I

    move-result v0

    .local v0, adminUid:I
    iget-object v1, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "PHONERESTRICTION"

    const-string v3, "smsRestrictionOutgoingPattern"

    invoke-virtual {v1, v0, v2, v3, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public systemReady()V
    .locals 0

    .prologue
    return-void
.end method

.method public updateDataLimitState()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforceSystemUser()V

    invoke-virtual {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->getDataCallLimitEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mDataLimitEnabled:Z

    return-void
.end method

.method public updateDateAndDataCallCounters(J)V
    .locals 13
    .parameter "bytes"

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->enforceSystemUser()V

    iget-boolean v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mDataLimitEnabled:Z

    if-nez v6, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .local v0, calendarCurrent:Ljava/util/Calendar;
    const/16 v6, 0xb

    invoke-virtual {v0, v6, v9}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xc

    invoke-virtual {v0, v6, v9}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xd

    invoke-virtual {v0, v6, v9}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xe

    invoke-virtual {v0, v6, v9}, Ljava/util/Calendar;->set(II)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .local v1, calendarDay:Ljava/util/Calendar;
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "dataCallDateDay"

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .local v3, calendarWeek:Ljava/util/Calendar;
    :try_start_1
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "dataCallDateWeek"

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .local v2, calendarMonth:Ljava/util/Calendar;
    :try_start_2
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "dataCallDateMonth"

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .local v4, time:J
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "dataCallDateDay"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "dataCallBytesCountByDay"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {v3, v12}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v6, v7, :cond_1

    invoke-virtual {v3, v12}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v6, v7, :cond_2

    invoke-virtual {v3, v10}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-eq v6, v7, :cond_2

    :cond_1
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "dataCallDateWeek"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "dataCallBytesCountByWeek"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_2
    invoke-virtual {v2, v11}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v6, v7, :cond_3

    invoke-virtual {v3, v11}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v6, v7, :cond_4

    invoke-virtual {v3, v10}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-eq v6, v7, :cond_4

    :cond_3
    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "dataCallDateMonth"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v6, p0, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "dataCallByteCountByMonth"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_4
    const-wide/16 v6, 0x0

    cmp-long v6, v6, p1

    if-gez v6, :cond_5

    const-string v6, "dataCallBytesCountByDay"

    invoke-direct {p0, v6, p1, p2}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->dataLimitCounter(Ljava/lang/String;J)V

    const-string v6, "dataCallBytesCountByWeek"

    invoke-direct {p0, v6, p1, p2}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->dataLimitCounter(Ljava/lang/String;J)V

    const-string v6, "dataCallByteCountByMonth"

    invoke-direct {p0, v6, p1, p2}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->dataLimitCounter(Ljava/lang/String;J)V

    :cond_5
    invoke-virtual {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->checkDataCallLimit()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->blockDataNetwork()Z

    goto/16 :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/android/server/enterprise/PhoneRestrictionPolicy;->restorePacketDataNetworkSetting()Z

    goto/16 :goto_0

    .end local v4           #time:J
    :catch_0
    move-exception v6

    goto/16 :goto_3

    .end local v2           #calendarMonth:Ljava/util/Calendar;
    :catch_1
    move-exception v6

    goto/16 :goto_2

    .end local v3           #calendarWeek:Ljava/util/Calendar;
    :catch_2
    move-exception v6

    goto/16 :goto_1
.end method
