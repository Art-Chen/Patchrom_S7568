.class public Lcom/android/internal/policy/impl/SamsungLockScreenProperties;
.super Ljava/lang/Object;
.source "SamsungLockScreenProperties.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static mChecked:Z

.field private static mDivideMissedEventChecked:Z

.field private static mIsDirectCallToECC:Z

.field private static mIsPLMNEnabledByCSC:Z

.field private static mIsSIMToastEnabled:Z

.field private static mIsSinaDaemonEnable:Z

.field private static mIsSinaDaemonEnableChecked:Z

.field private static mIsTablet:Z

.field private static mPINPUKRequest:Z

.field private static mPINPUKSlot:I

.field private static mSecureLockOnlyAfterTimerExpires:Z

.field private static mSecureLockOnlyAfterTimerExpiresChecked:Z

.field private static mShouldbeDisplaySalesCode:Z

.field private static mSwipeLockBeforeTimeout:Z

.field private static mSwipeLockBeforeTimeoutChecked:Z

.field private static mUseCtcPlmnConcept:Z

.field private static mUseCtcPlmnConceptChecked:Z

.field private static mWipeOutIntExtMemoryDueToUnlockFail:Z

.field private static mWipeOutIntExtMemoryDueToUnlockFailChecked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    sput-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mShouldbeDisplaySalesCode:Z

    .line 37
    sput-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mChecked:Z

    .line 38
    sput-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mIsPLMNEnabledByCSC:Z

    .line 39
    sput-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mIsDirectCallToECC:Z

    .line 40
    sput-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mSecureLockOnlyAfterTimerExpires:Z

    .line 41
    sput-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mSecureLockOnlyAfterTimerExpiresChecked:Z

    .line 43
    sput-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mWipeOutIntExtMemoryDueToUnlockFail:Z

    .line 44
    sput-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mWipeOutIntExtMemoryDueToUnlockFailChecked:Z

    .line 46
    sput-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mUseCtcPlmnConcept:Z

    .line 47
    sput-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mUseCtcPlmnConceptChecked:Z

    .line 48
    sput-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mIsSinaDaemonEnable:Z

    .line 49
    sput-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mIsSinaDaemonEnableChecked:Z

    .line 50
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mDivideMissedEventChecked:Z

    .line 51
    sput-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mIsTablet:Z

    .line 52
    sput-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mIsSIMToastEnabled:Z

    .line 55
    sput-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mSwipeLockBeforeTimeout:Z

    .line 56
    sput-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mSwipeLockBeforeTimeoutChecked:Z

    .line 58
    const-string v0, "SamsungLockScreenProperties"

    sput-object v0, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->TAG:Ljava/lang/String;

    .line 60
    sput-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mPINPUKRequest:Z

    .line 64
    sput v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mPINPUKSlot:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method

.method public static enhancedLockScreen()Z
    .locals 1

    .prologue
    .line 479
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isKoreaFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->has2GbMemory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 480
    const/4 v0, 0x1

    .line 482
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static freezeforPermBlockedSim()Z
    .locals 2

    .prologue
    .line 210
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, SalesCode:Ljava/lang/String;
    const-string v1, "SKT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "KTT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "LGT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 212
    :cond_0
    const/4 v1, 0x1

    .line 214
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getDpi(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 462
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 463
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    const-string v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 464
    .local v1, mWindowManager:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 465
    iget v2, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    return v2
.end method

.method public static getDualImsiString(Landroid/content/Context;)Ljava/lang/String;
    .locals 14
    .parameter "context"

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v8, 0x1

    const/4 v11, 0x5

    const/4 v7, 0x0

    .line 164
    const/4 v1, 0x0

    .line 165
    .local v1, rilIMSI:Ljava/lang/String;
    new-array v3, v13, [Ljava/lang/String;

    .line 166
    .local v3, sponIMSI:[Ljava/lang/String;
    const-string v9, "phone"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 167
    .local v6, telephonyManager:Landroid/telephony/TelephonyManager;
    if-eqz v6, :cond_0

    .line 168
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 169
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSponImsi()[Ljava/lang/String;

    move-result-object v3

    .line 172
    :cond_0
    const-string v9, "ril.simtype"

    const-string v10, ""

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 173
    .local v2, simType:Ljava/lang/String;
    const-string v4, "[]"

    .line 175
    .local v4, srtingIMSI:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 176
    const-string v1, ""

    .line 179
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "airplane_mode_on"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_2

    move v0, v7

    .line 180
    .local v0, isAirplaneModeOn:Z
    :goto_0
    if-eqz v0, :cond_3

    .line 181
    const-string v4, ""

    .line 182
    sget-object v7, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->TAG:Ljava/lang/String;

    const-string v8, "getDualImsiString(), isAirplaneModeOn is true, return"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v4

    .line 206
    .end local v4           #srtingIMSI:Ljava/lang/String;
    .local v5, srtingIMSI:Ljava/lang/String;
    :goto_1
    return-object v5

    .end local v0           #isAirplaneModeOn:Z
    .end local v5           #srtingIMSI:Ljava/lang/String;
    .restart local v4       #srtingIMSI:Ljava/lang/String;
    :cond_2
    move v0, v8

    .line 179
    goto :goto_0

    .line 186
    .restart local v0       #isAirplaneModeOn:Z
    :cond_3
    const-string v9, "3"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 187
    const-string v4, ""

    .line 188
    sget-object v7, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getDualImsiString(), SIM Type is not 3, simType = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", srtingIMSI = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v4

    .line 189
    .end local v4           #srtingIMSI:Ljava/lang/String;
    .restart local v5       #srtingIMSI:Ljava/lang/String;
    goto :goto_1

    .line 192
    .end local v5           #srtingIMSI:Ljava/lang/String;
    .restart local v4       #srtingIMSI:Ljava/lang/String;
    :cond_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 193
    invoke-virtual {v1, v7, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const-string v10, "450"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 194
    const-string v4, "[H]"

    .line 205
    :cond_5
    :goto_2
    sget-object v7, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getDualImsiString(), srtingIMSI = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v4

    .line 206
    .end local v4           #srtingIMSI:Ljava/lang/String;
    .restart local v5       #srtingIMSI:Ljava/lang/String;
    goto :goto_1

    .line 195
    .end local v5           #srtingIMSI:Ljava/lang/String;
    .restart local v4       #srtingIMSI:Ljava/lang/String;
    :cond_6
    aget-object v9, v3, v7

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7

    invoke-virtual {v1, v7, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    aget-object v10, v3, v7

    invoke-virtual {v10, v7, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 196
    const-string v4, "[S1]"

    goto :goto_2

    .line 197
    :cond_7
    aget-object v9, v3, v8

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    invoke-virtual {v1, v7, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    aget-object v8, v3, v8

    invoke-virtual {v8, v7, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 198
    const-string v4, "[S2]"

    goto :goto_2

    .line 199
    :cond_8
    aget-object v8, v3, v12

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9

    invoke-virtual {v1, v7, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    aget-object v9, v3, v12

    invoke-virtual {v9, v7, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 200
    const-string v4, "[S3]"

    goto :goto_2

    .line 202
    :cond_9
    const-string v4, "[]"

    goto :goto_2
.end method

.method public static getalternatePackageForMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return-object v0
.end method

.method public static has2GbMemory()Z
    .locals 7

    .prologue
    .line 471
    new-instance v2, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v2}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 472
    .local v2, reader:Lcom/android/internal/util/MemInfoReader;
    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 473
    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v3

    const-wide/32 v5, 0x100000

    div-long v0, v3, v5

    .line 475
    .local v0, TOTAL_DEVICE_MEMORY:J
    const-wide/16 v3, 0x400

    cmp-long v3, v0, v3

    if-ltz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isAUSFeature()Z
    .locals 2

    .prologue
    .line 513
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 515
    .local v0, salesCode:Ljava/lang/String;
    const-string v1, "TEL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "VAU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "HUT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "BST"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "OPS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "OPP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TLP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "XSA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 523
    :cond_0
    const/4 v1, 0x1

    .line 526
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isCTCFeature()Z
    .locals 2

    .prologue
    .line 453
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 454
    .local v0, SalesCode:Ljava/lang/String;
    const-string v1, "CTC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 455
    const/4 v1, 0x1

    .line 457
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isCaMobile()Z
    .locals 2

    .prologue
    .line 218
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, SalesCode:Ljava/lang/String;
    const-string v1, "DCM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    const/4 v1, 0x1

    .line 223
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isCanadaFeature()Z
    .locals 2

    .prologue
    .line 360
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 361
    .local v0, SalesCode:Ljava/lang/String;
    const-string v1, "CHR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "FMC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "RWC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "RCS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CLN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "KDO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TLS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "BMC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "BWA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "PCM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SOL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "VMC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "YVL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "GLW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MCT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 366
    :cond_0
    const/4 v1, 0x1

    .line 368
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isChinaFeature()Z
    .locals 2

    .prologue
    .line 342
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 343
    .local v0, SalesCode:Ljava/lang/String;
    const-string v1, "CHN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 344
    :cond_0
    const/4 v1, 0x1

    .line 346
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isDataNetworkModeEnable()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 491
    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 492
    .local v0, SalesCode:Ljava/lang/String;
    const-string v3, "ro.product.model"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 494
    .local v1, product_model:Ljava/lang/String;
    const-string v3, "SKT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 495
    const-string v3, ""

    const-string v4, "SHV_E170S"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 501
    :cond_0
    :goto_0
    return v2

    .line 498
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isDirectCallToEcc()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 385
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_LockScreen_DirectCallToEcc"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mIsDirectCallToECC:Z

    .line 387
    sget-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mIsDirectCallToECC:Z

    if-eqz v1, :cond_1

    .line 393
    :cond_0
    :goto_0
    return v0

    .line 390
    :cond_1
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isAUSFeature()Z

    move-result v1

    if-nez v1, :cond_0

    .line 393
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDisplayDualImsi(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 153
    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, SalesCode:Ljava/lang/String;
    const-string v2, "LGT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 155
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 156
    .local v1, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 157
    const/4 v2, 0x1

    .line 160
    .end local v1           #telephonyManager:Landroid/telephony/TelephonyManager;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isDisplayUsimWidget()Z
    .locals 2

    .prologue
    .line 137
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, SalesCode:Ljava/lang/String;
    const-string v1, "SKT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "KTT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "LGT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 139
    :cond_0
    const/4 v1, 0x1

    .line 141
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isDivideMissedEventEnable()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 300
    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 301
    .local v1, SalesCode:Ljava/lang/String;
    const-string v2, "ro.csc.country_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, CountryCode:Ljava/lang/String;
    const-string v2, "Germany"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "DBT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 304
    :cond_0
    sput-boolean v3, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mDivideMissedEventChecked:Z

    .line 307
    :cond_1
    const-string v2, "SKT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "KTT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "LGT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 308
    :cond_2
    sput-boolean v3, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mDivideMissedEventChecked:Z

    .line 311
    :cond_3
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isAUSFeature()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 312
    sput-boolean v3, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mDivideMissedEventChecked:Z

    .line 314
    :cond_4
    sget-boolean v2, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mDivideMissedEventChecked:Z

    return v2
.end method

.method public static isDualClockSecurityLock()Z
    .locals 2

    .prologue
    .line 145
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, SalesCode:Ljava/lang/String;
    const-string v1, "LGT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    const/4 v1, 0x1

    .line 149
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isDualDevice()Z
    .locals 1

    .prologue
    .line 433
    const/4 v0, 0x0

    return v0
.end method

.method public static isDualLCDDevice(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    .line 444
    const/4 v0, 0x0

    .line 445
    .local v0, mDualLcd:Z
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 446
    .local v1, packageManager:Landroid/content/pm/PackageManager;
    const-string v2, "android.hardware.dual_lcd"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 447
    sget-object v2, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isDualLCDDevice mDualLcd : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    return v0
.end method

.method public static isDualSlotDevice()Z
    .locals 1

    .prologue
    .line 440
    const/4 v0, 0x0

    return v0
.end method

.method public static isJapanFeature()Z
    .locals 2

    .prologue
    .line 541
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 543
    .local v0, SalesCode:Ljava/lang/String;
    const-string v1, "KDI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "DCM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 544
    :cond_0
    const/4 v1, 0x1

    .line 546
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isKoreaFeature()Z
    .locals 2

    .prologue
    .line 227
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, SalesCode:Ljava/lang/String;
    const-string v1, "SKT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "KTT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "LGT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ANY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 229
    :cond_0
    const/4 v1, 0x1

    .line 231
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isKweatherEnable()Z
    .locals 4

    .prologue
    .line 288
    const-string v0, "kweather"

    .line 289
    .local v0, DAEMON_KWEATHER:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_LiveWallpaper_WeatherWallCPName"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 291
    .local v1, mCPName:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isKoreaFeature()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "kweather"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 292
    const/4 v2, 0x1

    .line 295
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isMIDWRFeature()Z
    .locals 2

    .prologue
    .line 531
    const-string v1, "ro.product.model"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 533
    .local v0, product_model:Ljava/lang/String;
    const-string v1, "YP-GP1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "YP-GH1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 534
    :cond_0
    const/4 v1, 0x1

    .line 536
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isNoServiceDisplayWhenNoSIM()Z
    .locals 1

    .prologue
    .line 506
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isAUSFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 507
    const/4 v0, 0x1

    .line 509
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPLMNEnable()Z
    .locals 1

    .prologue
    .line 90
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isShouldbeDisplayForSalesCode()Z

    move-result v0

    return v0
.end method

.method public static isSIMToastEnabled()Z
    .locals 2

    .prologue
    .line 397
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 399
    .local v0, SalesCode:Ljava/lang/String;
    const-string v1, "ATT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 400
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mIsSIMToastEnabled:Z

    .line 402
    :cond_0
    sget-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mIsSIMToastEnabled:Z

    return v1
.end method

.method private static isShouldbeDisplayForSalesCode()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 95
    sget-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mChecked:Z

    if-nez v1, :cond_2

    .line 96
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, SalesCode:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_LockScreen_DisplayPlmn"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mIsPLMNEnabledByCSC:Z

    .line 99
    sget-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mIsPLMNEnabledByCSC:Z

    if-nez v1, :cond_0

    const-string v1, "TMH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "PAN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "HBM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "EPL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SKT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "KTT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "LGT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CTC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ATT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TMB"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "RCS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "RWC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "FMC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CLN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "KDO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "BMC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "BWA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "PCM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SOL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "VMC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "VTR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "GLW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MCT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TLS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "VZW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 129
    :cond_0
    sput-boolean v3, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mShouldbeDisplaySalesCode:Z

    .line 131
    :cond_1
    sput-boolean v3, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mChecked:Z

    .line 133
    :cond_2
    sget-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mShouldbeDisplaySalesCode:Z

    return v1
.end method

.method public static isSinaEnable()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 272
    sget-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mIsSinaDaemonEnableChecked:Z

    if-nez v1, :cond_2

    .line 273
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, SalesCode:Ljava/lang/String;
    const-string v1, "CHN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CTC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 280
    :cond_0
    sput-boolean v2, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mIsSinaDaemonEnable:Z

    .line 282
    :cond_1
    sput-boolean v2, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mIsSinaDaemonEnableChecked:Z

    .line 284
    :cond_2
    sget-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mIsSinaDaemonEnable:Z

    return v1
.end method

.method public static isSprintDevice()Z
    .locals 2

    .prologue
    .line 414
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 415
    .local v0, SalesCode:Ljava/lang/String;
    const-string v1, "SPR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 416
    const/4 v1, 0x1

    .line 418
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isTMODevice()Z
    .locals 2

    .prologue
    .line 334
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 335
    .local v0, SalesCode:Ljava/lang/String;
    const-string v1, "TMB"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 336
    const/4 v1, 0x1

    .line 338
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isTabletDevice()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 319
    :try_start_0
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 320
    .local v1, wm:Landroid/view/IWindowManager;
    invoke-interface {v1}, Landroid/view/IWindowManager;->canStatusBarHide()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 321
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mIsTablet:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    :goto_0
    sget-boolean v2, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mIsTablet:Z

    return v2

    .line 323
    :cond_0
    const/4 v2, 0x1

    :try_start_1
    sput-boolean v2, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mIsTablet:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 326
    :catch_0
    move-exception v0

    .line 327
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->TAG:Ljava/lang/String;

    const-string v3, "Failing check whether status bar can hide"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    sput-boolean v4, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mIsTablet:Z

    goto :goto_0
.end method

.method public static isUSAFeature()Z
    .locals 2

    .prologue
    .line 350
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 351
    .local v0, SalesCode:Ljava/lang/String;
    const-string v1, "VZW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ATT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TMB"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SPR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "VMU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MTR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "USC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 353
    :cond_0
    const/4 v1, 0x1

    .line 355
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isVZWDevice()Z
    .locals 2

    .prologue
    .line 406
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 407
    .local v0, SalesCode:Ljava/lang/String;
    const-string v1, "VZW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 408
    const/4 v1, 0x1

    .line 410
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isVirginMobileDevice()Z
    .locals 2

    .prologue
    .line 422
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 423
    .local v0, SalesCode:Ljava/lang/String;
    const-string v1, "VMU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 424
    const/4 v1, 0x1

    .line 426
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isWIFIOnly()Z
    .locals 1

    .prologue
    .line 487
    const/4 v0, 0x0

    return v0
.end method

.method public static lockOnlyAfterTimerExpires()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 234
    sget-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mSecureLockOnlyAfterTimerExpiresChecked:Z

    if-nez v1, :cond_1

    .line 235
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, SalesCode:Ljava/lang/String;
    const-string v1, "ATT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    sput-boolean v2, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mSecureLockOnlyAfterTimerExpires:Z

    .line 241
    :cond_0
    sput-boolean v2, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mSecureLockOnlyAfterTimerExpiresChecked:Z

    .line 243
    :cond_1
    sget-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mSecureLockOnlyAfterTimerExpires:Z

    return v1
.end method

.method public static swipeLockBeforeTimeout()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 372
    sget-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mSwipeLockBeforeTimeoutChecked:Z

    if-nez v1, :cond_1

    .line 373
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 375
    .local v0, SalesCode:Ljava/lang/String;
    const-string v1, "ATT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 376
    sput-boolean v2, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mSwipeLockBeforeTimeout:Z

    .line 379
    :cond_0
    sput-boolean v2, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mSwipeLockBeforeTimeoutChecked:Z

    .line 381
    :cond_1
    sget-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mSwipeLockBeforeTimeout:Z

    return v1
.end method

.method public static useCtcPlmnConcept()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 260
    sget-boolean v0, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mUseCtcPlmnConceptChecked:Z

    if-nez v0, :cond_1

    .line 261
    const-string v0, "CTC"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    sput-boolean v2, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mUseCtcPlmnConcept:Z

    .line 264
    :cond_0
    sput-boolean v2, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mUseCtcPlmnConceptChecked:Z

    .line 267
    :cond_1
    sget-boolean v0, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mUseCtcPlmnConcept:Z

    return v0
.end method

.method public static wipeInternalExternalSd()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 247
    sget-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mWipeOutIntExtMemoryDueToUnlockFailChecked:Z

    if-nez v1, :cond_2

    .line 248
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, SalesCode:Ljava/lang/String;
    const-string v1, "ATT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "DCM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 251
    :cond_0
    sput-boolean v2, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mWipeOutIntExtMemoryDueToUnlockFail:Z

    .line 254
    :cond_1
    sput-boolean v2, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mWipeOutIntExtMemoryDueToUnlockFailChecked:Z

    .line 256
    :cond_2
    sget-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mWipeOutIntExtMemoryDueToUnlockFail:Z

    return v1
.end method
