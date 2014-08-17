.class public Lcom/android/internal/policy/impl/DualModeUtils;
.super Ljava/lang/Object;
.source "DualModeUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/DualModeUtils$SimCardInfo;
    }
.end annotation


# static fields
.field static CONTENT_URI_NEWCARD:Ljava/lang/String; = null

.field private static final DEBUG:Z = true

.field private static DSContext:Landroid/content/Context;

.field static SIM01:Lcom/android/internal/policy/impl/DualModeUtils$SimCardInfo;

.field static SIM02:Lcom/android/internal/policy/impl/DualModeUtils$SimCardInfo;

.field private static TAG:Ljava/lang/String;

.field private static mDisableSystemKey:Z

.field private static mPINPUKRequest:Z

.field private static mPINPUKSlot:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    const-string v0, "DualModeUtils"

    sput-object v0, Lcom/android/internal/policy/impl/DualModeUtils;->TAG:Ljava/lang/String;

    .line 33
    sput-boolean v1, Lcom/android/internal/policy/impl/DualModeUtils;->mPINPUKRequest:Z

    .line 37
    sput v1, Lcom/android/internal/policy/impl/DualModeUtils;->mPINPUKSlot:I

    .line 42
    const-string v0, "content://com.sec.provider.simcardmanagement/cardCheck"

    sput-object v0, Lcom/android/internal/policy/impl/DualModeUtils;->CONTENT_URI_NEWCARD:Ljava/lang/String;

    .line 43
    sput-boolean v1, Lcom/android/internal/policy/impl/DualModeUtils;->mDisableSystemKey:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 750
    return-void
.end method

.method public static SimRefreshCheck(Landroid/content/Context;)Z
    .locals 9
    .parameter "mContext"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "SIM_MANAGE_DONE"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "SIM_REFRESH"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_3

    .line 52
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 53
    .local v0, i:Landroid/content/Intent;
    const-string v5, "Booting"

    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 54
    const-string v5, "settings.SIM_CARD_NETWORK"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    const/high16 v5, 0x1000

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 56
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 57
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "SIM_REFRESH"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 59
    const-string v5, "gsm.ruim.state"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, mCDMAstate:Ljava/lang/String;
    const-string v5, "gsm.sim.state"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 65
    .local v2, mGSMstate:Ljava/lang/String;
    sget-object v5, Lcom/android/internal/policy/impl/DualModeUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Current network : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "CURRENT_NETWORK"

    invoke-static {v7, v8, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    sget-object v5, Lcom/android/internal/policy/impl/DualModeUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SIM state mCDMAstate : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mGSMstate : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 69
    const-string v5, "READY"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 70
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "CURRENT_NETWORK"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 74
    :cond_0
    :goto_0
    sget-object v5, Lcom/android/internal/policy/impl/DualModeUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Current network : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "CURRENT_NETWORK"

    invoke-static {v7, v8, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    new-instance v0, Landroid/content/Intent;

    .end local v0           #i:Landroid/content/Intent;
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 77
    .restart local v0       #i:Landroid/content/Intent;
    const-string v5, "ACTION_CURRENT_NETWORK"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    const-string v5, "state"

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "CURRENT_NETWORK"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 79
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 80
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 87
    .end local v0           #i:Landroid/content/Intent;
    .end local v1           #mCDMAstate:Ljava/lang/String;
    .end local v2           #mGSMstate:Ljava/lang/String;
    :cond_1
    :goto_1
    return v3

    .line 71
    .restart local v0       #i:Landroid/content/Intent;
    .restart local v1       #mCDMAstate:Ljava/lang/String;
    .restart local v2       #mGSMstate:Ljava/lang/String;
    :cond_2
    const-string v5, "READY"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 72
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "CURRENT_NETWORK"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 86
    .end local v0           #i:Landroid/content/Intent;
    .end local v1           #mCDMAstate:Ljava/lang/String;
    .end local v2           #mGSMstate:Ljava/lang/String;
    :cond_3
    sget-object v3, Lcom/android/internal/policy/impl/DualModeUtils;->TAG:Ljava/lang/String;

    const-string v5, "SimRefreshCheck() return false"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 87
    goto :goto_1
.end method

.method private static activateSimSlot(IZ)V
    .locals 5
    .parameter "slot"
    .parameter "activate"

    .prologue
    .line 568
    if-nez p0, :cond_1

    .line 569
    :try_start_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 573
    .local v1, phone:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    if-eqz v1, :cond_0

    .line 577
    :cond_0
    sget-object v2, Lcom/android/internal/policy/impl/DualModeUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "activateSimSlot() - slot(0:RiL1, 1:RiL2) : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "   activate : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    .end local v1           #phone:Lcom/android/internal/telephony/ITelephony;
    :goto_1
    return-void

    .line 571
    :cond_1
    const-string v2, "phone2"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .restart local v1       #phone:Lcom/android/internal/telephony/ITelephony;
    goto :goto_0

    .line 578
    .end local v1           #phone:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 579
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/android/internal/policy/impl/DualModeUtils;->TAG:Ljava/lang/String;

    const-string v3, "activateSimSlot failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static getOldCardID(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .parameter "card_id"
    .parameter "slotNumber"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 624
    const-string v9, "0"

    .line 625
    .local v9, slot_number:Ljava/lang/String;
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 627
    .local v6, cardCheck:Ljava/lang/Boolean;
    const/4 v7, 0x0

    .line 628
    .local v7, cursor:Landroid/database/Cursor;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "( CARD_ID=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\') "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 631
    .local v3, where:Ljava/lang/String;
    :try_start_0
    sget-object v0, Lcom/android/internal/policy/impl/DualModeUtils;->DSContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/internal/policy/impl/DualModeUtils;->CONTENT_URI_NEWCARD:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "SLOT_NUMBER"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 633
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 634
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 636
    :cond_0
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 637
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    .line 646
    :cond_1
    :goto_0
    if-eqz v7, :cond_2

    .line 647
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 650
    :cond_2
    :goto_1
    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 651
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 655
    :goto_2
    sget-object v0, Lcom/android/internal/policy/impl/DualModeUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "slot_number : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "cardCheck : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 640
    :cond_3
    :try_start_1
    sget-object v0, Lcom/android/internal/policy/impl/DualModeUtils;->TAG:Ljava/lang/String;

    const-string v1, "noCount"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    goto :goto_0

    .line 643
    :catch_0
    move-exception v8

    .line 644
    .local v8, e:Landroid/database/SQLException;
    :try_start_2
    const-string v0, "SQLException"

    invoke-virtual {v8}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 646
    if-eqz v7, :cond_2

    .line 647
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 646
    .end local v8           #e:Landroid/database/SQLException;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    .line 647
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 653
    :cond_5
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto :goto_2
.end method

.method public static getPINPUKRequest()Z
    .locals 3

    .prologue
    .line 103
    const-string v2, "gsm.ruim.state"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, mCDMAstate:Ljava/lang/String;
    const-string v2, "gsm.sim.state"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, mGSMstate:Ljava/lang/String;
    sget-boolean v2, Lcom/android/internal/policy/impl/DualModeUtils;->mPINPUKRequest:Z

    if-eqz v2, :cond_0

    .line 121
    const/4 v2, 0x1

    .line 123
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getPINPUKSlot()I
    .locals 5

    .prologue
    .line 129
    const-string v2, "ril.ICC_TYPE"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, mCDMAtype:Ljava/lang/String;
    const-string v2, "ril.ICC2_TYPE"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, mGSMtype:Ljava/lang/String;
    sget-object v2, Lcom/android/internal/policy/impl/DualModeUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPINPUKSlot : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/internal/policy/impl/DualModeUtils;->mPINPUKSlot:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    sget v2, Lcom/android/internal/policy/impl/DualModeUtils;->mPINPUKSlot:I

    return v2
.end method

.method private static getSimCardName(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/policy/impl/DualModeUtils$SimCardInfo;Ljava/lang/String;)V
    .locals 7
    .parameter "nNum"
    .parameter "iccId"
    .parameter "SCInfo"
    .parameter "cardType"

    .prologue
    .line 685
    const/4 v6, 0x0

    .line 686
    .local v6, c:Landroid/database/Cursor;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(CARD_ID  = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'or CARD_ICCID = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\') AND CARD_TYPE = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 689
    .local v3, where:Ljava/lang/String;
    if-nez p0, :cond_1

    .line 708
    :cond_0
    :goto_0
    return-void

    .line 693
    :cond_1
    :try_start_0
    sget-object v0, Lcom/android/internal/policy/impl/DualModeUtils;->DSContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.sec.provider.simcardmanagement/registerinfo"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 696
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 698
    :cond_2
    const-string v0, "card_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/internal/policy/impl/DualModeUtils$SimCardInfo;->SIMName:Ljava/lang/String;

    .line 699
    const-string v0, "icon_index"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/internal/policy/impl/DualModeUtils$SimCardInfo;->nIconIndex:Ljava/lang/String;

    .line 702
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 705
    :cond_3
    if-eqz v6, :cond_0

    .line 706
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 705
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 706
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method private static getSlot1State()Ljava/lang/String;
    .locals 1

    .prologue
    .line 785
    const-string v0, "gsm.ruim.state"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSlot2State()Ljava/lang/String;
    .locals 1

    .prologue
    .line 794
    const-string v0, "gsm.sim.state"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static handleSimCardManagement(Landroid/content/Context;)V
    .locals 34
    .parameter "mContext"

    .prologue
    .line 158
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isDualSlotDevice()Z

    move-result v29

    if-eqz v29, :cond_2c

    .line 165
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "SIM_MANAGE_DONE"

    const/16 v31, 0x0

    invoke-static/range {v29 .. v31}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    .line 166
    .local v21, mSIMManage:I
    sget-object v29, Lcom/android/internal/policy/impl/DualModeUtils;->TAG:Ljava/lang/String;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "mSIMManage : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    sput-object p0, Lcom/android/internal/policy/impl/DualModeUtils;->DSContext:Landroid/content/Context;

    .line 170
    const-string v29, "gsm.ruim.state"

    invoke-static/range {v29 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 171
    .local v13, mCDMAstate:Ljava/lang/String;
    const-string v29, "gsm.sim.state"

    invoke-static/range {v29 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 179
    .local v18, mGSMstate:Ljava/lang/String;
    const/16 v29, 0x1

    move/from16 v0, v21

    move/from16 v1, v29

    if-eq v0, v1, :cond_0

    if-eqz v13, :cond_0

    if-nez v18, :cond_1

    .line 562
    .end local v13           #mCDMAstate:Ljava/lang/String;
    .end local v18           #mGSMstate:Ljava/lang/String;
    .end local v21           #mSIMManage:I
    :cond_0
    :goto_0
    return-void

    .line 181
    .restart local v13       #mCDMAstate:Ljava/lang/String;
    .restart local v18       #mGSMstate:Ljava/lang/String;
    .restart local v21       #mSIMManage:I
    :cond_1
    const-string v29, "ril.noti_ruim_iccid"

    invoke-static/range {v29 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 182
    .local v12, mCDMAid:Ljava/lang/String;
    const-string v29, "ril.noti_sim_iccid"

    invoke-static/range {v29 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 187
    .local v17, mGSMid:Ljava/lang/String;
    const-string v29, "ril.ICC_TYPE"

    invoke-static/range {v29 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 188
    .local v14, mCDMAtype:Ljava/lang/String;
    const-string v29, "ril.ICC2_TYPE"

    invoke-static/range {v29 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 189
    .local v19, mGSMtype:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "CURRENT_NETWORK"

    const/16 v31, 0x0

    invoke-static/range {v29 .. v31}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    .line 190
    .local v16, mCurrent:I
    const-string v29, "gsm.ruim.cardnoti"

    invoke-static/range {v29 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 191
    .local v15, mCdmaNoti:Ljava/lang/String;
    const-string v29, "gsm.gsm.cardnoti"

    invoke-static/range {v29 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 193
    .local v20, mGsmNoti:Ljava/lang/String;
    sget-object v29, Lcom/android/internal/policy/impl/DualModeUtils;->TAG:Ljava/lang/String;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "mCDMAid : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "ril.noti_ruim_iccid"

    invoke-static/range {v31 .. v31}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    sget-object v29, Lcom/android/internal/policy/impl/DualModeUtils;->TAG:Ljava/lang/String;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "mGSMid : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "ril.noti_sim_iccid"

    invoke-static/range {v31 .. v31}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    sget-object v29, Lcom/android/internal/policy/impl/DualModeUtils;->TAG:Ljava/lang/String;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "mCDMAtype : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "ril.ICC_TYPE"

    invoke-static/range {v31 .. v31}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    sget-object v29, Lcom/android/internal/policy/impl/DualModeUtils;->TAG:Ljava/lang/String;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "mGSMtype : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "ril.ICC2_TYPE"

    invoke-static/range {v31 .. v31}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    sget-object v29, Lcom/android/internal/policy/impl/DualModeUtils;->TAG:Ljava/lang/String;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "mCDMAstate : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    sget-object v29, Lcom/android/internal/policy/impl/DualModeUtils;->TAG:Ljava/lang/String;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "mGSMstate : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    sget-object v29, Lcom/android/internal/policy/impl/DualModeUtils;->TAG:Ljava/lang/String;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "mCurrent : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    sget-object v29, Lcom/android/internal/policy/impl/DualModeUtils;->TAG:Ljava/lang/String;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "mCdmaNoti : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    sget-object v29, Lcom/android/internal/policy/impl/DualModeUtils;->TAG:Ljava/lang/String;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "mGsmNoti : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const-string v29, "NOT_READY"

    move-object/from16 v0, v29

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_3

    const-string v29, "NOT_READY"

    move-object/from16 v0, v29

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_3

    const-string v29, "UNKNOWN"

    move-object/from16 v0, v29

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_2

    const-string v29, "0"

    move-object/from16 v0, v29

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_3

    :cond_2
    const-string v29, "UNKNOWN"

    move-object/from16 v0, v29

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_4

    const-string v29, "0"

    move-object/from16 v0, v29

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_4

    .line 213
    :cond_3
    sget-object v29, Lcom/android/internal/policy/impl/DualModeUtils;->TAG:Ljava/lang/String;

    const-string v30, "handleSimCardManagement: mCDMAstate or mGSMstate is UNKNOWN"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 218
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "airplane_mode_on"

    const/16 v31, 0x0

    invoke-static/range {v29 .. v31}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_5

    .line 219
    sget-object v29, Lcom/android/internal/policy/impl/DualModeUtils;->TAG:Ljava/lang/String;

    const-string v30, "AIRPLANE_MODE_ON******************"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 224
    :cond_5
    const-string v29, "PIN_REQUIRED"

    move-object/from16 v0, v29

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_6

    const-string v29, "PUK_REQUIRED"

    move-object/from16 v0, v29

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_22

    .line 225
    :cond_6
    const/16 v21, 0x2

    .line 230
    :cond_7
    :goto_1
    const-string v29, "3"

    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_8

    const-string v29, "4"

    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_24

    :cond_8
    const-string v29, "3"

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_9

    const-string v29, "4"

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_24

    .line 231
    :cond_9
    const/16 v29, 0x1

    const/16 v30, 0x0

    invoke-static/range {v29 .. v30}, Lcom/android/internal/policy/impl/DualModeUtils;->activateSimSlot(IZ)V

    .line 236
    :cond_a
    :goto_2
    const-string v29, "1"

    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_b

    const-string v29, "2"

    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_26

    :cond_b
    const-string v29, "1"

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_26

    const-string v29, "2"

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_26

    .line 237
    const/16 v21, 0x2

    .line 242
    :cond_c
    :goto_3
    const-string v29, "4"

    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_d

    const/16 v21, 0x2

    .line 244
    :cond_d
    const-string v29, "3"

    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_e

    const-string v29, "4"

    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_f

    :cond_e
    if-eqz v12, :cond_f

    const-string v29, ""

    move-object/from16 v0, v29

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_f

    const-string v29, "PIN_REQUIRED"

    move-object/from16 v0, v29

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_f

    const-string v29, "PUK_REQUIRED"

    move-object/from16 v0, v29

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_f

    .line 247
    const-string v29, "1"

    move-object/from16 v0, v29

    invoke-static {v12, v0}, Lcom/android/internal/policy/impl/DualModeUtils;->isNewSimCard(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_f

    .line 248
    const/16 v21, 0x3

    .line 277
    :cond_f
    const-string v29, "1"

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_10

    const-string v29, "2"

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_11

    :cond_10
    if-eqz v17, :cond_11

    const-string v29, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_11

    const-string v29, "PIN_REQUIRED"

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_11

    const-string v29, "PUK_REQUIRED"

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_11

    .line 280
    const-string v29, "2"

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/DualModeUtils;->isNewSimCard(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_11

    .line 281
    const/16 v21, 0x3

    .line 285
    :cond_11
    const/16 v29, 0x3

    move/from16 v0, v21

    move/from16 v1, v29

    if-eq v0, v1, :cond_12

    .line 286
    sget-object v29, Lcom/android/internal/policy/impl/DualModeUtils;->TAG:Ljava/lang/String;

    const-string v30, "********************sendBroadcast INFORMATION********************"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const-string v29, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/telephony/TelephonyManager;

    .line 288
    .local v27, tm:Landroid/telephony/TelephonyManager;
    const-string v29, "phone2"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/telephony/TelephonyManager;

    .line 289
    .local v28, tm2:Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v27 .. v27}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    .line 290
    .local v3, CDMASbuid:Ljava/lang/String;
    invoke-virtual/range {v28 .. v28}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v4

    .line 292
    .local v4, GSMSbuid:Ljava/lang/String;
    new-instance v29, Lcom/android/internal/policy/impl/DualModeUtils$SimCardInfo;

    const-string v30, ""

    const-string v31, "0"

    invoke-direct/range {v29 .. v31}, Lcom/android/internal/policy/impl/DualModeUtils$SimCardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v29, Lcom/android/internal/policy/impl/DualModeUtils;->SIM01:Lcom/android/internal/policy/impl/DualModeUtils$SimCardInfo;

    .line 293
    new-instance v29, Lcom/android/internal/policy/impl/DualModeUtils$SimCardInfo;

    const-string v30, ""

    const-string v31, "0"

    invoke-direct/range {v29 .. v31}, Lcom/android/internal/policy/impl/DualModeUtils$SimCardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v29, Lcom/android/internal/policy/impl/DualModeUtils;->SIM02:Lcom/android/internal/policy/impl/DualModeUtils$SimCardInfo;

    .line 295
    sget-object v29, Lcom/android/internal/policy/impl/DualModeUtils;->TAG:Ljava/lang/String;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "CDMASbuid : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    sget-object v29, Lcom/android/internal/policy/impl/DualModeUtils;->TAG:Ljava/lang/String;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "GSMSbuid: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    sget-object v29, Lcom/android/internal/policy/impl/DualModeUtils;->SIM01:Lcom/android/internal/policy/impl/DualModeUtils$SimCardInfo;

    const-string v30, "CDMA"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-static {v3, v12, v0, v1}, Lcom/android/internal/policy/impl/DualModeUtils;->getSimCardName(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/policy/impl/DualModeUtils$SimCardInfo;Ljava/lang/String;)V

    .line 302
    sget-object v29, Lcom/android/internal/policy/impl/DualModeUtils;->SIM02:Lcom/android/internal/policy/impl/DualModeUtils$SimCardInfo;

    const-string v30, "GSM"

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-static {v4, v0, v1, v2}, Lcom/android/internal/policy/impl/DualModeUtils;->getSimCardName(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/policy/impl/DualModeUtils$SimCardInfo;Ljava/lang/String;)V

    .line 306
    sget-object v29, Lcom/android/internal/policy/impl/DualModeUtils;->TAG:Ljava/lang/String;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "SIM01.SIMName : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    sget-object v31, Lcom/android/internal/policy/impl/DualModeUtils;->SIM01:Lcom/android/internal/policy/impl/DualModeUtils$SimCardInfo;

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/internal/policy/impl/DualModeUtils$SimCardInfo;->SIMName:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    sget-object v29, Lcom/android/internal/policy/impl/DualModeUtils;->TAG:Ljava/lang/String;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "SIM02.SIMName: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    sget-object v31, Lcom/android/internal/policy/impl/DualModeUtils;->SIM02:Lcom/android/internal/policy/impl/DualModeUtils$SimCardInfo;

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/internal/policy/impl/DualModeUtils$SimCardInfo;->SIMName:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    sget-object v29, Lcom/android/internal/policy/impl/DualModeUtils;->TAG:Ljava/lang/String;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "SIM01.nIconIndex : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    sget-object v31, Lcom/android/internal/policy/impl/DualModeUtils;->SIM01:Lcom/android/internal/policy/impl/DualModeUtils$SimCardInfo;

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/internal/policy/impl/DualModeUtils$SimCardInfo;->nIconIndex:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    sget-object v29, Lcom/android/internal/policy/impl/DualModeUtils;->TAG:Ljava/lang/String;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "SIM02.nIconIndex: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    sget-object v31, Lcom/android/internal/policy/impl/DualModeUtils;->SIM02:Lcom/android/internal/policy/impl/DualModeUtils$SimCardInfo;

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/internal/policy/impl/DualModeUtils$SimCardInfo;->nIconIndex:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    new-instance v6, Landroid/content/Intent;

    const-string v29, "ACTION_REGCARD_ICON_CHANGED"

    move-object/from16 v0, v29

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 328
    .local v6, PLMNIconIntent:Landroid/content/Intent;
    const-string v29, "CDMA01_ICON_INDEX"

    sget-object v30, Lcom/android/internal/policy/impl/DualModeUtils;->SIM01:Lcom/android/internal/policy/impl/DualModeUtils$SimCardInfo;

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/internal/policy/impl/DualModeUtils$SimCardInfo;->nIconIndex:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 329
    const-string v29, "GSM_ICON_INDEX"

    sget-object v30, Lcom/android/internal/policy/impl/DualModeUtils;->SIM02:Lcom/android/internal/policy/impl/DualModeUtils$SimCardInfo;

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/internal/policy/impl/DualModeUtils$SimCardInfo;->nIconIndex:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 330
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 332
    new-instance v5, Landroid/content/Intent;

    const-string v29, "ACTION_REGCARD_CARDNAME_CHANGED"

    move-object/from16 v0, v29

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 333
    .local v5, PLMNCardnameIntent:Landroid/content/Intent;
    const-string v29, "CDMA01_CARDNAME"

    sget-object v30, Lcom/android/internal/policy/impl/DualModeUtils;->SIM01:Lcom/android/internal/policy/impl/DualModeUtils$SimCardInfo;

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/internal/policy/impl/DualModeUtils$SimCardInfo;->SIMName:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 334
    const-string v29, "GSM_CARDNAME"

    sget-object v30, Lcom/android/internal/policy/impl/DualModeUtils;->SIM02:Lcom/android/internal/policy/impl/DualModeUtils$SimCardInfo;

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/internal/policy/impl/DualModeUtils$SimCardInfo;->SIMName:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 335
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 378
    .end local v3           #CDMASbuid:Ljava/lang/String;
    .end local v4           #GSMSbuid:Ljava/lang/String;
    .end local v5           #PLMNCardnameIntent:Landroid/content/Intent;
    .end local v6           #PLMNIconIntent:Landroid/content/Intent;
    .end local v27           #tm:Landroid/telephony/TelephonyManager;
    .end local v28           #tm2:Landroid/telephony/TelephonyManager;
    :cond_12
    const/4 v10, 0x0

    .line 379
    .local v10, imsi:Ljava/lang/String;
    const-string v29, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/telephony/TelephonyManager;

    .line 380
    .restart local v27       #tm:Landroid/telephony/TelephonyManager;
    if-eqz v27, :cond_13

    .line 381
    invoke-virtual/range {v27 .. v27}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v10

    .line 383
    :cond_13
    const-string v29, "gsm.default.esn"

    const-string v30, "Unknown"

    invoke-static/range {v29 .. v30}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 384
    .local v8, esnnumber:Ljava/lang/String;
    sget-object v29, Lcom/android/internal/policy/impl/DualModeUtils;->TAG:Ljava/lang/String;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "imsi : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " esnnumber = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    if-eqz v10, :cond_14

    const-string v29, "99999"

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_15

    :cond_14
    const-string v29, "TRUE"

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_16

    .line 386
    :cond_15
    const/16 v21, 0x0

    .line 390
    :cond_16
    const/16 v29, 0x0

    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    .line 391
    .local v23, slot1CheckCard:Ljava/lang/Boolean;
    const/16 v29, 0x0

    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    .line 392
    .local v24, slot2CheckCard:Ljava/lang/Boolean;
    const/16 v26, 0x0

    .line 394
    .local v26, slotTarget:I
    const-string v29, "ABSENT"

    move-object/from16 v0, v29

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_17

    .line 395
    sget-object v29, Lcom/android/internal/policy/impl/DualModeUtils;->TAG:Ljava/lang/String;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "mCDMAstate : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    const-string v29, "1"

    move-object/from16 v0, v29

    invoke-static {v12, v0}, Lcom/android/internal/policy/impl/DualModeUtils;->getOldCardID(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    .line 398
    :cond_17
    const-string v29, "ABSENT"

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_18

    .line 399
    sget-object v29, Lcom/android/internal/policy/impl/DualModeUtils;->TAG:Ljava/lang/String;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "mGSMstate : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    const-string v29, "2"

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/DualModeUtils;->getOldCardID(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    .line 402
    :cond_18
    const/16 v25, 0x0

    .line 403
    .local v25, slotCount:I
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-eqz v29, :cond_19

    .line 404
    add-int/lit8 v25, v25, 0x1

    .line 405
    const/16 v26, 0x1

    .line 407
    :cond_19
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-eqz v29, :cond_1a

    .line 408
    add-int/lit8 v25, v25, 0x1

    .line 409
    const/16 v26, 0x2

    .line 411
    :cond_1a
    const/16 v29, 0x2

    move/from16 v0, v25

    move/from16 v1, v29

    if-ne v0, v1, :cond_1b

    const/16 v26, 0x3

    .line 413
    :cond_1b
    sget-object v29, Lcom/android/internal/policy/impl/DualModeUtils;->TAG:Ljava/lang/String;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "slotTarget : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    move-object/from16 v0, v17

    invoke-static {v12, v0}, Lcom/android/internal/policy/impl/DualModeUtils;->setNewCardID(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    new-instance v22, Landroid/content/Intent;

    const-string v29, "NEW_CARD_CHECK"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 418
    .local v22, newcardIntent:Landroid/content/Intent;
    const-string v29, "slotWitch"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 419
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 423
    const/16 v29, 0x2

    move/from16 v0, v21

    move/from16 v1, v29

    if-ne v0, v1, :cond_1c

    .line 425
    const/16 v29, 0x1

    sput-boolean v29, Lcom/android/internal/policy/impl/DualModeUtils;->mDisableSystemKey:Z

    .line 426
    new-instance v9, Landroid/content/Intent;

    const-string v29, "android.intent.action.MAIN"

    move-object/from16 v0, v29

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 427
    .local v9, i:Landroid/content/Intent;
    const-string v29, "Booting"

    const/16 v30, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 428
    const-string v29, "settings.SIM_CARD_NETWORK"

    move-object/from16 v0, v29

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 429
    const/high16 v29, 0x1000

    move/from16 v0, v29

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 430
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 432
    .end local v9           #i:Landroid/content/Intent;
    :cond_1c
    const/16 v29, 0x3

    move/from16 v0, v21

    move/from16 v1, v29

    if-ne v0, v1, :cond_1d

    .line 434
    const/16 v29, 0x1

    sput-boolean v29, Lcom/android/internal/policy/impl/DualModeUtils;->mDisableSystemKey:Z

    .line 435
    new-instance v9, Landroid/content/Intent;

    const-string v29, "android.intent.action.MAIN"

    move-object/from16 v0, v29

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 436
    .restart local v9       #i:Landroid/content/Intent;
    const-string v29, "Booting"

    const/16 v30, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 437
    const-string v29, "settings.REGISTER_CARD"

    move-object/from16 v0, v29

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 438
    const/high16 v29, 0x1000

    move/from16 v0, v29

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 439
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 442
    .end local v9           #i:Landroid/content/Intent;
    :cond_1d
    if-eqz v16, :cond_1e

    const/16 v29, 0x2

    move/from16 v0, v21

    move/from16 v1, v29

    if-eq v0, v1, :cond_1e

    const/16 v29, 0x3

    move/from16 v0, v21

    move/from16 v1, v29

    if-ne v0, v1, :cond_1f

    .line 443
    :cond_1e
    const-string v29, "READY"

    move-object/from16 v0, v29

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_28

    .line 444
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "CURRENT_NETWORK"

    const/16 v31, 0x0

    invoke-static/range {v29 .. v31}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 449
    :cond_1f
    :goto_4
    const-string v29, "READY"

    move-object/from16 v0, v29

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_29

    const-string v29, "READY"

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_29

    .line 450
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "CURRENT_NETWORK"

    const/16 v31, 0x0

    invoke-static/range {v29 .. v31}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 458
    :cond_20
    :goto_5
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 459
    .restart local v9       #i:Landroid/content/Intent;
    const-string v29, "ACTION_CURRENT_NETWORK"

    move-object/from16 v0, v29

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 460
    const-string v29, "state"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v30

    const-string v31, "CURRENT_NETWORK"

    const/16 v32, 0x0

    invoke-static/range {v30 .. v32}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v30

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 461
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v29

    if-eqz v29, :cond_21

    .line 462
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 464
    :cond_21
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "SIM_MANAGE_DONE"

    const/16 v31, 0x1

    invoke-static/range {v29 .. v31}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 466
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "DSNETWORK"

    const/16 v31, 0x0

    invoke-static/range {v29 .. v31}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 467
    sget-object v29, Lcom/android/internal/policy/impl/DualModeUtils;->TAG:Ljava/lang/String;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "DSNETWORK: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v31

    const-string v32, "DSNETWORK"

    const/16 v33, 0x0

    invoke-static/range {v31 .. v33}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 470
    .local v11, intent:Landroid/content/Intent;
    const-string v29, "ACTION_CARDSETTING_COMPLETED"

    move-object/from16 v0, v29

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 471
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 226
    .end local v8           #esnnumber:Ljava/lang/String;
    .end local v9           #i:Landroid/content/Intent;
    .end local v10           #imsi:Ljava/lang/String;
    .end local v11           #intent:Landroid/content/Intent;
    .end local v22           #newcardIntent:Landroid/content/Intent;
    .end local v23           #slot1CheckCard:Ljava/lang/Boolean;
    .end local v24           #slot2CheckCard:Ljava/lang/Boolean;
    .end local v25           #slotCount:I
    .end local v26           #slotTarget:I
    .end local v27           #tm:Landroid/telephony/TelephonyManager;
    :cond_22
    const-string v29, "PIN_REQUIRED"

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_23

    const-string v29, "PUK_REQUIRED"

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_7

    .line 227
    :cond_23
    const/16 v21, 0x2

    goto/16 :goto_1

    .line 232
    :cond_24
    const-string v29, "1"

    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_25

    const-string v29, "2"

    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_a

    const-string v29, "1"

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_25

    const-string v29, "2"

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_a

    .line 233
    :cond_25
    const/16 v29, 0x0

    const/16 v30, 0x0

    invoke-static/range {v29 .. v30}, Lcom/android/internal/policy/impl/DualModeUtils;->activateSimSlot(IZ)V

    goto/16 :goto_2

    .line 238
    :cond_26
    const-string v29, "3"

    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_c

    const-string v29, "3"

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_27

    const-string v29, "4"

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_c

    .line 239
    :cond_27
    const/16 v21, 0x2

    goto/16 :goto_3

    .line 445
    .restart local v8       #esnnumber:Ljava/lang/String;
    .restart local v10       #imsi:Ljava/lang/String;
    .restart local v22       #newcardIntent:Landroid/content/Intent;
    .restart local v23       #slot1CheckCard:Ljava/lang/Boolean;
    .restart local v24       #slot2CheckCard:Ljava/lang/Boolean;
    .restart local v25       #slotCount:I
    .restart local v26       #slotTarget:I
    .restart local v27       #tm:Landroid/telephony/TelephonyManager;
    :cond_28
    const-string v29, "READY"

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_1f

    .line 446
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "CURRENT_NETWORK"

    const/16 v31, 0x1

    invoke-static/range {v29 .. v31}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_4

    .line 451
    :cond_29
    const/16 v29, 0x1

    move/from16 v0, v16

    move/from16 v1, v29

    if-eq v0, v1, :cond_2a

    if-nez v16, :cond_20

    .line 452
    :cond_2a
    if-nez v16, :cond_2b

    const-string v29, "READY"

    move-object/from16 v0, v29

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_2b

    .line 453
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "CURRENT_NETWORK"

    const/16 v31, 0x1

    invoke-static/range {v29 .. v31}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_5

    .line 454
    :cond_2b
    const/16 v29, 0x1

    move/from16 v0, v16

    move/from16 v1, v29

    if-ne v0, v1, :cond_20

    const-string v29, "READY"

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_20

    .line 455
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "CURRENT_NETWORK"

    const/16 v31, 0x0

    invoke-static/range {v29 .. v31}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_5

    .line 479
    .end local v8           #esnnumber:Ljava/lang/String;
    .end local v10           #imsi:Ljava/lang/String;
    .end local v12           #mCDMAid:Ljava/lang/String;
    .end local v13           #mCDMAstate:Ljava/lang/String;
    .end local v14           #mCDMAtype:Ljava/lang/String;
    .end local v15           #mCdmaNoti:Ljava/lang/String;
    .end local v16           #mCurrent:I
    .end local v17           #mGSMid:Ljava/lang/String;
    .end local v18           #mGSMstate:Ljava/lang/String;
    .end local v19           #mGSMtype:Ljava/lang/String;
    .end local v20           #mGsmNoti:Ljava/lang/String;
    .end local v21           #mSIMManage:I
    .end local v22           #newcardIntent:Landroid/content/Intent;
    .end local v23           #slot1CheckCard:Ljava/lang/Boolean;
    .end local v24           #slot2CheckCard:Ljava/lang/Boolean;
    .end local v25           #slotCount:I
    .end local v26           #slotTarget:I
    .end local v27           #tm:Landroid/telephony/TelephonyManager;
    :cond_2c
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isDualDevice()Z

    move-result v29

    if-eqz v29, :cond_0

    .line 480
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "SIM_MANAGE_DONE"

    const/16 v31, 0x0

    invoke-static/range {v29 .. v31}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    .line 481
    .restart local v21       #mSIMManage:I
    sget-object v29, Lcom/android/internal/policy/impl/DualModeUtils;->TAG:Ljava/lang/String;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "mSIMManage : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    const-string v29, "gsm.ruim.state"

    invoke-static/range {v29 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 484
    .restart local v13       #mCDMAstate:Ljava/lang/String;
    const-string v29, "gsm.sim.state"

    invoke-static/range {v29 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 490
    .restart local v18       #mGSMstate:Ljava/lang/String;
    const/16 v29, 0x1

    move/from16 v0, v21

    move/from16 v1, v29

    if-ne v0, v1, :cond_2e

    .line 491
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 492
    .local v7, currentChangei:Landroid/content/Intent;
    const-string v29, "ACTION_CURRENT_NETWORK"

    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 493
    const-string v29, "READY"

    move-object/from16 v0, v29

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_2f

    .line 494
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "CURRENT_NETWORK"

    const/16 v31, 0x0

    invoke-static/range {v29 .. v31}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 495
    const-string v29, "state"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v30

    const-string v31, "CURRENT_NETWORK"

    const/16 v32, 0x0

    invoke-static/range {v30 .. v32}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v30

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 496
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 502
    :cond_2d
    :goto_6
    sget-object v29, Lcom/android/internal/policy/impl/DualModeUtils;->TAG:Ljava/lang/String;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "CURRENT_NETWORK : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v31

    const-string v32, "CURRENT_NETWORK"

    const/16 v33, 0x0

    invoke-static/range {v31 .. v33}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    .end local v7           #currentChangei:Landroid/content/Intent;
    :cond_2e
    const/16 v29, 0x1

    move/from16 v0, v21

    move/from16 v1, v29

    if-eq v0, v1, :cond_0

    if-eqz v13, :cond_0

    if-eqz v18, :cond_0

    .line 507
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "CURRENT_NETWORK"

    const/16 v31, 0x0

    invoke-static/range {v29 .. v31}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    .line 508
    .restart local v16       #mCurrent:I
    sget-object v29, Lcom/android/internal/policy/impl/DualModeUtils;->TAG:Ljava/lang/String;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "mCDMAstate : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    sget-object v29, Lcom/android/internal/policy/impl/DualModeUtils;->TAG:Ljava/lang/String;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "mGSMstate : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    sget-object v29, Lcom/android/internal/policy/impl/DualModeUtils;->TAG:Ljava/lang/String;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "mCurrent : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "airplane_mode_on"

    const/16 v31, 0x0

    invoke-static/range {v29 .. v31}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_30

    .line 513
    sget-object v29, Lcom/android/internal/policy/impl/DualModeUtils;->TAG:Ljava/lang/String;

    const-string v30, "AIRPLANE_MODE_ON******************"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 497
    .end local v16           #mCurrent:I
    .restart local v7       #currentChangei:Landroid/content/Intent;
    :cond_2f
    const-string v29, "READY"

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_2d

    .line 498
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "CURRENT_NETWORK"

    const/16 v31, 0x1

    invoke-static/range {v29 .. v31}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 499
    const-string v29, "state"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v30

    const-string v31, "CURRENT_NETWORK"

    const/16 v32, 0x0

    invoke-static/range {v30 .. v32}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v30

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 500
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 517
    .end local v7           #currentChangei:Landroid/content/Intent;
    .restart local v16       #mCurrent:I
    :cond_30
    const-string v29, "READY"

    move-object/from16 v0, v29

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_31

    const-string v29, "READY"

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_0

    .line 518
    :cond_31
    if-nez v16, :cond_32

    .line 519
    const-string v29, "READY"

    move-object/from16 v0, v29

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_35

    .line 520
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "CURRENT_NETWORK"

    const/16 v31, 0x0

    invoke-static/range {v29 .. v31}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 525
    :cond_32
    :goto_7
    const-string v29, "READY"

    move-object/from16 v0, v29

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_36

    const-string v29, "READY"

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_36

    .line 526
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "CURRENT_NETWORK"

    const/16 v31, 0x0

    invoke-static/range {v29 .. v31}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 534
    :cond_33
    :goto_8
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 535
    .restart local v9       #i:Landroid/content/Intent;
    const-string v29, "ACTION_CURRENT_NETWORK"

    move-object/from16 v0, v29

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 536
    const-string v29, "state"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v30

    const-string v31, "CURRENT_NETWORK"

    const/16 v32, 0x0

    invoke-static/range {v30 .. v32}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v30

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 537
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v29

    if-eqz v29, :cond_34

    .line 538
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 540
    :cond_34
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "SIM_MANAGE_DONE"

    const/16 v31, 0x1

    invoke-static/range {v29 .. v31}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 542
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "DSNETWORK"

    const/16 v31, 0x0

    invoke-static/range {v29 .. v31}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 543
    sget-object v29, Lcom/android/internal/policy/impl/DualModeUtils;->TAG:Ljava/lang/String;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "DSNETWORK: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v31

    const-string v32, "DSNETWORK"

    const/16 v33, 0x0

    invoke-static/range {v31 .. v33}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 521
    .end local v9           #i:Landroid/content/Intent;
    :cond_35
    const-string v29, "READY"

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_32

    .line 522
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "CURRENT_NETWORK"

    const/16 v31, 0x1

    invoke-static/range {v29 .. v31}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_7

    .line 527
    :cond_36
    if-eqz v16, :cond_37

    const/16 v29, 0x1

    move/from16 v0, v16

    move/from16 v1, v29

    if-ne v0, v1, :cond_33

    .line 528
    :cond_37
    if-nez v16, :cond_38

    const-string v29, "READY"

    move-object/from16 v0, v29

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_38

    .line 529
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "CURRENT_NETWORK"

    const/16 v31, 0x1

    invoke-static/range {v29 .. v31}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_8

    .line 530
    :cond_38
    const/16 v29, 0x1

    move/from16 v0, v16

    move/from16 v1, v29

    if-ne v0, v1, :cond_33

    const-string v29, "READY"

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_33

    .line 531
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "CURRENT_NETWORK"

    const/16 v31, 0x0

    invoke-static/range {v29 .. v31}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_8
.end method

.method private static insertCardId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "card_id"
    .parameter "sn"

    .prologue
    .line 727
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 728
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v2, "CARD_ID"

    invoke-virtual {v0, v2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    const-string v2, "SLOT_NUMBER"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    sget-object v2, Lcom/android/internal/policy/impl/DualModeUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insertCardId CARD_ID : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " SLOT_NUMBER: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    :try_start_0
    sget-object v2, Lcom/android/internal/policy/impl/DualModeUtils;->DSContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/internal/policy/impl/DualModeUtils;->CONTENT_URI_NEWCARD:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 738
    :goto_0
    return-void

    .line 735
    :catch_0
    move-exception v1

    .line 736
    .local v1, e:Landroid/database/SQLException;
    const-string v2, "SQLException"

    invoke-virtual {v1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static isNewSimCard(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .parameter "mCardID"
    .parameter "mSlot"

    .prologue
    const/4 v4, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "card_iccid = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 588
    .local v3, where:Ljava/lang/String;
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v10

    const-string v0, "card_id"

    aput-object v0, v2, v9

    const/4 v0, 0x2

    const-string v1, "card_iccid"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "slot_number"

    aput-object v1, v2, v0

    .line 593
    .local v2, projection:[Ljava/lang/String;
    const-string v0, "Content Providers"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCardID : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    sget-object v0, Lcom/android/internal/policy/impl/DualModeUtils;->DSContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.sec.provider.simcardmanagement/registerinfo"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 598
    .local v8, c:Landroid/database/Cursor;
    if-nez v8, :cond_0

    .line 599
    const-string v0, "Content Providers"

    const-string v1, "DB didn\'t exist"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v9

    .line 620
    :goto_0
    return v0

    .line 602
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 604
    :cond_1
    const-string v0, "card_iccid"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 605
    .local v6, IMSIinDB:Ljava/lang/String;
    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 606
    const-string v0, "slot_number"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 607
    .local v7, SLOTinDB:Ljava/lang/String;
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 608
    const-string v0, "Content Providers"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isNewSimCard returns false, "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 609
    goto :goto_0

    .line 612
    :cond_2
    const-string v0, "Content Providers"

    const-string v1, "Registed slot is different!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    .end local v7           #SLOTinDB:Ljava/lang/String;
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 616
    .end local v6           #IMSIinDB:Ljava/lang/String;
    :cond_4
    if-eqz v8, :cond_5

    .line 617
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 619
    :cond_5
    const-string v0, "Content Providers"

    const-string v1, "isNewSimCard returns true"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v9

    .line 620
    goto :goto_0
.end method

.method private static removeCardId()V
    .locals 5

    .prologue
    .line 742
    sget-object v1, Lcom/android/internal/policy/impl/DualModeUtils;->TAG:Ljava/lang/String;

    const-string v2, "removeCardId"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    :try_start_0
    sget-object v1, Lcom/android/internal/policy/impl/DualModeUtils;->DSContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/internal/policy/impl/DualModeUtils;->CONTENT_URI_NEWCARD:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 748
    .local v0, e:Landroid/database/SQLException;
    :goto_0
    return-void

    .line 745
    .end local v0           #e:Landroid/database/SQLException;
    :catch_0
    move-exception v0

    .line 746
    .restart local v0       #e:Landroid/database/SQLException;
    const-string v1, "SQLException"

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static setDataNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "card_iccId"
    .parameter "cardType"
    .parameter "value"

    .prologue
    .line 765
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CARD_ICCID=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' AND CARD_TYPE = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 767
    .local v2, where:Ljava/lang/String;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 768
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v3, "DATA_SERVICE"

    invoke-virtual {v0, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    sget-object v3, Lcom/android/internal/policy/impl/DualModeUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateCardId DATA_SERVICE : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    :try_start_0
    sget-object v3, Lcom/android/internal/policy/impl/DualModeUtils;->DSContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "content://com.sec.provider.simcardmanagement/registerinfo"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v0, v2, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 778
    :goto_0
    return-void

    .line 774
    :catch_0
    move-exception v1

    .line 776
    .local v1, e:Landroid/database/SQLException;
    const-string v3, "SQLException"

    invoke-virtual {v1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static setNewCardID(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "card_id1"
    .parameter "card_id2"

    .prologue
    .line 661
    sget-object v0, Lcom/android/internal/policy/impl/DualModeUtils;->TAG:Ljava/lang/String;

    const-string v1, "setNewCardID"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    const/4 v6, 0x0

    .line 664
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Lcom/android/internal/policy/impl/DualModeUtils;->DSContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/internal/policy/impl/DualModeUtils;->CONTENT_URI_NEWCARD:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 665
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 666
    sget-object v0, Lcom/android/internal/policy/impl/DualModeUtils;->TAG:Ljava/lang/String;

    const-string v1, "setNewCardID getCount < 2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    invoke-static {}, Lcom/android/internal/policy/impl/DualModeUtils;->removeCardId()V

    .line 668
    const-string v0, "1"

    invoke-static {p0, v0}, Lcom/android/internal/policy/impl/DualModeUtils;->insertCardId(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    const-string v0, "2"

    invoke-static {p1, v0}, Lcom/android/internal/policy/impl/DualModeUtils;->insertCardId(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 679
    :goto_0
    if-eqz v6, :cond_0

    .line 680
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 682
    :cond_0
    :goto_1
    return-void

    .line 671
    :cond_1
    :try_start_1
    sget-object v0, Lcom/android/internal/policy/impl/DualModeUtils;->TAG:Ljava/lang/String;

    const-string v1, "setNewCardID getCount = 2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    const-string v0, "1"

    invoke-static {p0, v0}, Lcom/android/internal/policy/impl/DualModeUtils;->updateCardId(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    const-string v0, "2"

    invoke-static {p1, v0}, Lcom/android/internal/policy/impl/DualModeUtils;->updateCardId(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 675
    :catch_0
    move-exception v7

    .line 677
    .local v7, e:Landroid/database/SQLException;
    :try_start_2
    const-string v0, "SQLException"

    invoke-virtual {v7}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 679
    if-eqz v6, :cond_0

    .line 680
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 679
    .end local v7           #e:Landroid/database/SQLException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 680
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static setPINPUKRequest(Z)V
    .locals 3
    .parameter "state"

    .prologue
    .line 92
    sput-boolean p0, Lcom/android/internal/policy/impl/DualModeUtils;->mPINPUKRequest:Z

    .line 93
    sget-object v0, Lcom/android/internal/policy/impl/DualModeUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPINPUKRequest : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/internal/policy/impl/DualModeUtils;->mPINPUKRequest:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-void
.end method

.method public static setPINPUKSlot(I)V
    .locals 3
    .parameter "slot"

    .prologue
    .line 97
    sget-object v0, Lcom/android/internal/policy/impl/DualModeUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPINPUKSlot : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    sput p0, Lcom/android/internal/policy/impl/DualModeUtils;->mPINPUKSlot:I

    .line 99
    return-void
.end method

.method private static updateCardId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "card_id"
    .parameter "sn"

    .prologue
    .line 711
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "( SLOT_NUMBER=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\')"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 713
    .local v2, where:Ljava/lang/String;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 714
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v3, "CARD_ID"

    invoke-virtual {v0, v3, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    const-string v3, "SLOT_NUMBER"

    invoke-virtual {v0, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    sget-object v3, Lcom/android/internal/policy/impl/DualModeUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateCardId CARD_ID : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " SLOT_NUMBER: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    :try_start_0
    sget-object v3, Lcom/android/internal/policy/impl/DualModeUtils;->DSContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/internal/policy/impl/DualModeUtils;->CONTENT_URI_NEWCARD:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v0, v2, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 724
    :goto_0
    return-void

    .line 721
    :catch_0
    move-exception v1

    .line 722
    .local v1, e:Landroid/database/SQLException;
    const-string v3, "SQLException"

    invoke-virtual {v1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
