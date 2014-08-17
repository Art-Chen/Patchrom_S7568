.class public Lcom/android/internal/policy/impl/LockscreenHelpOverlay;
.super Landroid/widget/RelativeLayout;
.source "LockscreenHelpOverlay.java"

# interfaces
.implements Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/LockscreenHelpOverlay$NotiMode;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final HELP_OVERLAY_CHECKED:Ljava/lang/String; = "help_overlay_checked"

.field private static final MISSED_EVENT_ARRIVED:Ljava/lang/String; = "com.android.server.NotificationManagerService.NotificationArrived"

.field private static final MISSED_EVENT_REMOVED:Ljava/lang/String; = "com.android.server.NotificationManagerService.NotificationRemoved"

.field private static final TAG:Ljava/lang/String; = "LockscreenHelpOverlay"


# instance fields
.field private final CALL_PKG:Ljava/lang/String;

.field private final EMAIL_PKG:Ljava/lang/String;

.field private final MISSED_EVENT_UPDATE:I

.field private final MSG_PKG:Ljava/lang/String;

.field private final REQ_INDEX_CALL_EMAIL:I

.field private final REQ_INDEX_MSG:I

.field private final SCREEN_UPDATE:I

.field deviceDpi:I

.field private gestureImageArray:[I

.field private isTickerOn:Z

.field private mBottomPadding:I

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mChecked:I

.field private mContext:Landroid/content/Context;

.field private mCreationOrientation:I

.field private mGestureImage:Landroid/widget/ImageView;

.field private mGestureLayout:Landroid/widget/RelativeLayout;

.field private mGestureText:Landroid/widget/TextView;

.field private final mHandler:Landroid/os/Handler;

.field private mHelpButton:Landroid/widget/Button;

.field private mHelpCallback:Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface$HelpOverlayCallback;

.field mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

.field private mLeftPadding:I

.field private mMissedCallCount:I

.field private mMissedCallNotiInfo:Landroid/app/NotificationInfo;

.field private mMissedMsgCount:I

.field private mShortcutItemNum:I

.field private mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

.field private mWhichTip:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface$HelpOverlayCallback;II)V
    .locals 6
    .parameter "context"
    .parameter "callback"
    .parameter "configuration"
    .parameter "helpCallback"
    .parameter "checked"
    .parameter "shortcutItemNum"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x12c2

    iput v2, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->MISSED_EVENT_UPDATE:I

    const/16 v2, 0x12c3

    iput v2, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->SCREEN_UPDATE:I

    iput v3, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->REQ_INDEX_CALL_EMAIL:I

    const/16 v2, 0x7b

    iput v2, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->REQ_INDEX_MSG:I

    iput v4, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mMissedCallCount:I

    iput v4, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mMissedMsgCount:I

    const-string v2, "com.android.phone"

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->CALL_PKG:Ljava/lang/String;

    const-string v2, "com.android.mms"

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->MSG_PKG:Ljava/lang/String;

    const-string v2, "com.android.email"

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->EMAIL_PKG:Ljava/lang/String;

    iput v4, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mBottomPadding:I

    iput v4, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mLeftPadding:I

    new-instance v2, Lcom/android/internal/policy/impl/LockscreenHelpOverlay$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/LockscreenHelpOverlay$1;-><init>(Lcom/android/internal/policy/impl/LockscreenHelpOverlay;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    iput-object p4, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mHelpCallback:Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface$HelpOverlayCallback;

    iput p5, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mChecked:I

    iput p6, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mShortcutItemNum:I

    iget v2, p3, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mCreationOrientation:I

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "information_ticker"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_5

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->isTickerOn:Z

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .local v1, inflater:Landroid/view/LayoutInflater;
    iget v2, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mCreationOrientation:I

    const/4 v5, 0x2

    if-eq v2, v5, :cond_6

    const v2, 0x1090071

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    :goto_1
    const-string v2, "ro.build.type"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "eng"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    sput-boolean v3, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->DEBUG:Z

    :goto_2
    iget v2, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mShortcutItemNum:I

    const/4 v3, 0x5

    if-lt v2, v3, :cond_0

    const/4 v2, 0x4

    iput v2, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mShortcutItemNum:I

    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->getDpi(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->deviceDpi:I

    iput v2, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->deviceDpi:I

    sget-boolean v2, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "LockscreenHelpOverlay"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deviceDpi = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->deviceDpi:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-boolean v2, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "LockscreenHelpOverlay"

    const-string v3, "LockscreenHelpOverlay"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const v2, 0x102035e

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mGestureText:Landroid/widget/TextView;

    const v2, 0x102035f

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mGestureImage:Landroid/widget/ImageView;

    const v2, 0x1020019

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mHelpButton:Landroid/widget/Button;

    const v2, 0x102035c

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mGestureLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mHelpButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->setGestureImageArray()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->updateMissedEvent()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "com.android.server.NotificationManagerService.NotificationArrived"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.android.server.NotificationManagerService.NotificationRemoved"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v2, Lcom/android/internal/policy/impl/LockscreenHelpOverlay$2;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/LockscreenHelpOverlay$2;-><init>(Lcom/android/internal/policy/impl/LockscreenHelpOverlay;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-boolean v2, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "LockscreenHelpOverlay"

    const-string v3, "Broadcast register"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-boolean v2, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "LockscreenHelpOverlay"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checked : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {p0, p5, p6}, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->setWhichHelpInfo(II)V

    return-void

    .end local v0           #filter:Landroid/content/IntentFilter;
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    :cond_5
    move v2, v4

    goto/16 :goto_0

    .restart local v1       #inflater:Landroid/view/LayoutInflater;
    :cond_6
    const v2, 0x1090072

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_1

    :cond_7
    sput-boolean v4, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->DEBUG:Z

    goto/16 :goto_2
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/LockscreenHelpOverlay;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->handleMissedEventUpdate()V

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->DEBUG:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/LockscreenHelpOverlay;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getNumMissedEvent(Lcom/android/internal/policy/impl/LockscreenHelpOverlay$NotiMode;)I
    .locals 5
    .parameter "mode"

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .local v0, mNM:Landroid/app/NotificationManager;
    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    sget-object v2, Lcom/android/internal/policy/impl/LockscreenHelpOverlay$NotiMode;->MissedCall:Lcom/android/internal/policy/impl/LockscreenHelpOverlay$NotiMode;

    if-ne p1, v2, :cond_4

    const-string v2, "com.android.phone"

    invoke-virtual {v0, v2, v4}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    :cond_2
    :goto_1
    sget-object v2, Lcom/android/internal/policy/impl/LockscreenHelpOverlay$NotiMode;->MissedCall:Lcom/android/internal/policy/impl/LockscreenHelpOverlay$NotiMode;

    if-ne p1, v2, :cond_6

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    if-eqz v2, :cond_6

    sget-boolean v1, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "LockscreenHelpOverlay"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNumMissedEvent(missed Call Count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    iget v3, v3, Landroid/app/NotificationInfo;->missedCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    iget v1, v1, Landroid/app/NotificationInfo;->missedCount:I

    goto :goto_0

    :cond_4
    sget-object v2, Lcom/android/internal/policy/impl/LockscreenHelpOverlay$NotiMode;->MissedMsg:Lcom/android/internal/policy/impl/LockscreenHelpOverlay$NotiMode;

    if-ne p1, v2, :cond_5

    const-string v2, "com.android.mms"

    const/16 v3, 0x7b

    invoke-virtual {v0, v2, v3}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    goto :goto_1

    :cond_5
    sget-object v2, Lcom/android/internal/policy/impl/LockscreenHelpOverlay$NotiMode;->MissedEMail:Lcom/android/internal/policy/impl/LockscreenHelpOverlay$NotiMode;

    if-ne p1, v2, :cond_2

    const-string v2, "com.android.email"

    invoke-virtual {v0, v2, v4}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    goto :goto_1

    :cond_6
    sget-object v2, Lcom/android/internal/policy/impl/LockscreenHelpOverlay$NotiMode;->MissedMsg:Lcom/android/internal/policy/impl/LockscreenHelpOverlay$NotiMode;

    if-eq p1, v2, :cond_7

    sget-object v2, Lcom/android/internal/policy/impl/LockscreenHelpOverlay$NotiMode;->MissedEMail:Lcom/android/internal/policy/impl/LockscreenHelpOverlay$NotiMode;

    if-ne p1, v2, :cond_0

    :cond_7
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    if-eqz v2, :cond_0

    sget-boolean v1, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->DEBUG:Z

    if-eqz v1, :cond_8

    const-string v1, "LockscreenHelpOverlay"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNumMissedEvent(Unread Msg Count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    iget v3, v3, Landroid/app/NotificationInfo;->missedCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    iget v1, v1, Landroid/app/NotificationInfo;->missedCount:I

    goto/16 :goto_0
.end method

.method private handleMissedEventUpdate()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->updateMissedEvent()V

    return-void
.end method

.method private setGestureImageArray()V
    .locals 7

    .prologue
    const v6, 0x108061b

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->gestureImageArray:[I

    iget v0, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mCreationOrientation:I

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->gestureImageArray:[I

    const v1, 0x108060e

    aput v1, v0, v5

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->gestureImageArray:[I

    const v1, 0x1080611

    aput v1, v0, v4

    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isDivideMissedEventEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->gestureImageArray:[I

    const v1, 0x1080615

    aput v1, v0, v2

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->gestureImageArray:[I

    const v1, 0x1080618

    aput v1, v0, v3

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->gestureImageArray:[I

    aput v6, v0, v2

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->gestureImageArray:[I

    aput v6, v0, v3

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->gestureImageArray:[I

    const v1, 0x108060f

    aput v1, v0, v5

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->isTickerOn:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->gestureImageArray:[I

    const v1, 0x1080613

    aput v1, v0, v4

    :goto_1
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isDivideMissedEventEnable()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->gestureImageArray:[I

    const v1, 0x1080616

    aput v1, v0, v2

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->gestureImageArray:[I

    const v1, 0x1080619

    aput v1, v0, v3

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->gestureImageArray:[I

    const v1, 0x1080612

    aput v1, v0, v4

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->gestureImageArray:[I

    const v1, 0x108061c

    aput v1, v0, v2

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->gestureImageArray:[I

    const v1, 0x108061c

    aput v1, v0, v3

    goto :goto_0
.end method

.method private updateMissedEvent()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .local v0, nCallCount:I
    const/4 v1, 0x0

    .local v1, nMsgCount:I
    sget-object v2, Lcom/android/internal/policy/impl/LockscreenHelpOverlay$NotiMode;->MissedCall:Lcom/android/internal/policy/impl/LockscreenHelpOverlay$NotiMode;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->getNumMissedEvent(Lcom/android/internal/policy/impl/LockscreenHelpOverlay$NotiMode;)I

    move-result v0

    sget-object v2, Lcom/android/internal/policy/impl/LockscreenHelpOverlay$NotiMode;->MissedMsg:Lcom/android/internal/policy/impl/LockscreenHelpOverlay$NotiMode;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->getNumMissedEvent(Lcom/android/internal/policy/impl/LockscreenHelpOverlay$NotiMode;)I

    move-result v1

    iget v2, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mMissedCallCount:I

    if-eq v0, v2, :cond_0

    if-ltz v0, :cond_0

    iput v0, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mMissedCallCount:I

    :cond_0
    sget-boolean v2, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "LockscreenHelpOverlay"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateMissedEvent(missed Call Count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mMissedCallCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget v2, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mMissedMsgCount:I

    if-eq v1, v2, :cond_2

    if-ltz v1, :cond_2

    iput v1, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mMissedMsgCount:I

    :cond_2
    sget-boolean v2, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "LockscreenHelpOverlay"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateMissedEvent(Unread Msg Count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mMissedMsgCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    sget-boolean v0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LockscreenHelpOverlay"

    const-string v1, "onCleanUp() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "LockscreenHelpOverlay"

    const-string v1, "onCleanUp() Broadcast unregister"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mHelpCallback:Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface$HelpOverlayCallback;

    return-void
.end method

.method public getWhichTip()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mWhichTip:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->setHelpLayoutFlag()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mHelpCallback:Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface$HelpOverlayCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mHelpCallback:Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface$HelpOverlayCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface$HelpOverlayCallback;->dismissed()V

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->setVisibility(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1020019
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    sget-boolean v0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LockscreenHelpOverlay"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mHelpCallback:Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface$HelpOverlayCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mHelpCallback:Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface$HelpOverlayCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface$HelpOverlayCallback;->dismissed()V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    sget-boolean v0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LockscreenHelpOverlay"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->setWhichHelpInfo()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v1, 0x2710

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    const/4 v0, 0x1

    return v0
.end method

.method public setHelpLayoutFlag()V
    .locals 5

    .prologue
    iget v0, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mChecked:I

    const-wide/high16 v1, 0x4024

    iget v3, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mWhichTip:I

    add-int/lit8 v3, v3, -0x1

    int-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mChecked:I

    sget-boolean v0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LockscreenHelpOverlay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setChekced() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mChecked:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "help_overlay_checked"

    iget v2, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mChecked:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setPaddingForShorcutGesture()V
    .locals 4

    .prologue
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050054

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    .local v0, shortcutPadding:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050055

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v1, v2

    .local v1, shortcutWidth:I
    iget v2, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mCreationOrientation:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->isTickerOn:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->deviceDpi:I

    mul-int/lit8 v2, v2, 0x40

    div-int/lit16 v2, v2, 0xa0

    iput v2, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mBottomPadding:I

    :cond_0
    iget v2, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mShortcutItemNum:I

    if-lez v2, :cond_1

    iget v2, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mShortcutItemNum:I

    rsub-int/lit8 v2, v2, 0x4

    div-int/lit8 v3, v1, 0x2

    add-int/2addr v3, v0

    mul-int/2addr v2, v3

    iput v2, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mLeftPadding:I

    :cond_1
    return-void
.end method

.method public setWhichHelpInfo()V
    .locals 2

    .prologue
    iget v0, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mChecked:I

    iget v1, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mShortcutItemNum:I

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->setWhichHelpInfo(II)V

    return-void
.end method

.method public setWhichHelpInfo(II)V
    .locals 9
    .parameter "checked"
    .parameter "shortcutItemNum"

    .prologue
    const v8, 0x10406a9

    const/4 v7, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isUSAFeature()Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    .local v0, mShowingNumber:I
    :goto_0
    sget-boolean v3, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "LockscreenHelpOverlay"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checked = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    rem-int/lit8 v3, p1, 0xa

    if-ge v3, v0, :cond_3

    iput v2, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mWhichTip:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mGestureText:Landroid/widget/TextView;

    const v2, 0x10406a7

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mGestureImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->gestureImageArray:[I

    iget v3, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mWhichTip:I

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->setVisibility(I)V

    :cond_1
    :goto_1
    return-void

    .end local v0           #mShowingNumber:I
    :cond_2
    move v0, v2

    goto :goto_0

    .restart local v0       #mShowingNumber:I
    :cond_3
    div-int/lit8 p1, p1, 0xa

    rem-int/lit8 v2, p1, 0xa

    if-ge v2, v0, :cond_4

    if-lez p2, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->setPaddingForShorcutGesture()V

    iput v1, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mWhichTip:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mGestureText:Landroid/widget/TextView;

    const v2, 0x10406a8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mGestureImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->gestureImageArray:[I

    iget v3, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mWhichTip:I

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mGestureImage:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mLeftPadding:I

    iget v3, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mBottomPadding:I

    invoke-virtual {v1, v2, v6, v6, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->setVisibility(I)V

    goto :goto_1

    :cond_4
    div-int/lit8 p1, p1, 0xa

    iget v1, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mMissedCallCount:I

    if-lez v1, :cond_5

    rem-int/lit8 v1, p1, 0xa

    if-ge v1, v0, :cond_5

    iput v7, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mWhichTip:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mGestureText:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mGestureImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->gestureImageArray:[I

    iget v3, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mWhichTip:I

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mGestureImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/widget/ImageView;->setPadding(IIII)V

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->setVisibility(I)V

    goto :goto_1

    :cond_5
    iget v1, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mMissedMsgCount:I

    if-lez v1, :cond_6

    rem-int/lit8 v1, p1, 0xa

    if-ge v1, v0, :cond_6

    iput v7, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mWhichTip:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mGestureText:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mGestureImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->gestureImageArray:[I

    iget v3, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mWhichTip:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mGestureImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/widget/ImageView;->setPadding(IIII)V

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->setVisibility(I)V

    goto :goto_1

    :cond_6
    iput v6, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mWhichTip:I

    sget-boolean v1, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "LockscreenHelpOverlay"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mWhichTip = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mWhichTip:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method
