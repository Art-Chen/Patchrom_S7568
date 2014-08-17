.class public Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;
.super Landroid/widget/RelativeLayout;
.source "LockscreenHelpOverlayUsa.java"

# interfaces
.implements Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa$NotiMode;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final HELP_OVERLAY_CHECKED:Ljava/lang/String; = "help_overlay_checked"

.field private static final INTENT_ACTION_HELPHUB:Ljava/lang/String; = "com.samsung.helphub.HELP"

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

.field mAudioManager:Landroid/media/AudioManager;

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

.field mHelpCheckBox:Landroid/widget/CheckBox;

.field private mIsHelpHubInstalled:Z

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
    .line 57
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface$HelpOverlayCallback;II)V
    .locals 9
    .parameter "context"
    .parameter "callback"
    .parameter "configuration"
    .parameter "helpCallback"
    .parameter "checked"
    .parameter "shortcutItemNum"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 126
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 73
    const/16 v5, 0x12c2

    iput v5, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->MISSED_EVENT_UPDATE:I

    .line 74
    const/16 v5, 0x12c3

    iput v5, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->SCREEN_UPDATE:I

    .line 75
    iput v7, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->REQ_INDEX_CALL_EMAIL:I

    .line 76
    const/16 v5, 0x7b

    iput v5, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->REQ_INDEX_MSG:I

    .line 78
    iput v8, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->mMissedCallCount:I

    .line 79
    iput v8, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->mMissedMsgCount:I

    .line 84
    const-string v5, "com.android.phone"

    iput-object v5, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->CALL_PKG:Ljava/lang/String;

    .line 85
    const-string v5, "com.android.mms"

    iput-object v5, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->MSG_PKG:Ljava/lang/String;

    .line 86
    const-string v5, "com.android.email"

    iput-object v5, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->EMAIL_PKG:Ljava/lang/String;

    .line 101
    iput v8, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->mBottomPadding:I

    .line 102
    iput v8, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->mLeftPadding:I

    .line 112
    new-instance v5, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa$1;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa$1;-><init>(Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->mHandler:Landroid/os/Handler;

    .line 127
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->mContext:Landroid/content/Context;

    .line 128
    iput-object p2, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 129
    iput-object p4, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->mHelpCallback:Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface$HelpOverlayCallback;

    .line 130
    iput p5, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->mChecked:I

    .line 131
    iput p6, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->mShortcutItemNum:I

    .line 132
    iget v5, p3, Landroid/content/res/Configuration;->orientation:I

    iput v5, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->mCreationOrientation:I

    .line 134
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 135
    .local v3, inflater:Landroid/view/LayoutInflater;
    iget v5, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->mCreationOrientation:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_4

    .line 137
    const v5, 0x1090073

    invoke-virtual {v3, v5, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 143
    :goto_0
    const-string v5, "ro.build.type"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "eng"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 144
    sput-boolean v7, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->DEBUG:Z

    .line 149
    :goto_1
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 150
    .local v1, displayMetrics:Landroid/util/DisplayMetrics;
    iget-object v5, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->mContext:Landroid/content/Context;

    const-string v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    .line 151
    .local v4, mWindowManager:Landroid/view/WindowManager;
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 152
    iget-object v5, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->getDpi(Landroid/content/Context;)I

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->deviceDpi:I

    .line 153
    sget-boolean v5, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "LockscreenHelpOverlay"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deviceDpi = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->deviceDpi:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_0
    sget-boolean v5, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string v5, "LockscreenHelpOverlay"

    const-string v6, "LockscreenHelpOverlay"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_1
    const v5, 0x102035e

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->mGestureText:Landroid/widget/TextView;

    .line 157
    const v5, 0x102035f

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->mGestureImage:Landroid/widget/ImageView;

    .line 158
    const v5, 0x1020019

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->mHelpButton:Landroid/widget/Button;

    .line 159
    const v5, 0x102035c

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->mGestureLayout:Landroid/widget/RelativeLayout;

    .line 160
    const v5, 0x1020362

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->mHelpCheckBox:Landroid/widget/CheckBox;

    .line 162
    iget-object v5, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->mHelpButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->setGestureImageArray()V

    .line 165
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->updateMissedEvent()V

    .line 167
    const-string v5, "audio"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    iput-object v5, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->mAudioManager:Landroid/media/AudioManager;

    .line 168
    iget-object v5, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->mHelpCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v5, v8}, Landroid/widget/CheckBox;->setSoundEffectsEnabled(Z)V

    .line 170
    new-instance v0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa$2;-><init>(Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;)V

    .line 175
    .local v0, checkListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;
    iget-object v5, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->mHelpCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v5, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 176
    iget-object v5, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->mHelpCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v5, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 179
    .local v2, filter:Landroid/content/IntentFilter;
    const-string v5, "com.android.server.NotificationManagerService.NotificationArrived"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 180
    const-string v5, "com.android.server.NotificationManagerService.NotificationRemoved"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 181
    const-string v5, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 183
    new-instance v5, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa$3;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa$3;-><init>(Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 198
    sget-boolean v5, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string v5, "LockscreenHelpOverlay"

    const-string v6, "Broadcast register"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_2
    iget-object v5, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v5, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 200
    sget-boolean v5, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->DEBUG:Z

    if-eqz v5, :cond_3

    const-string v5, "LockscreenHelpOverlay"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checked : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->isHelpHubInstalled()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->mIsHelpHubInstalled:Z

    .line 202
    invoke-virtual {p0, p5, p6}, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->setWhichHelpInfo(II)V

    .line 203
    return-void

    .line 140
    .end local v0           #checkListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .end local v1           #displayMetrics:Landroid/util/DisplayMetrics;
    .end local v2           #filter:Landroid/content/IntentFilter;
    .end local v4           #mWindowManager:Landroid/view/WindowManager;
    :cond_4
    const v5, 0x1090074

    invoke-virtual {v3, v5, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_0

    .line 146
    :cond_5
    sput-boolean v8, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->DEBUG:Z

    goto/16 :goto_1
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->handleMissedEventUpdate()V

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 54
    sget-boolean v0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->DEBUG:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getNumMissedEvent(Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa$NotiMode;)I
    .locals 5
    .parameter "mode"

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 353
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 355
    .local v0, mNM:Landroid/app/NotificationManager;
    if-nez v0, :cond_1

    .line 373
    :cond_0
    :goto_0
    return v1

    .line 358
    :cond_1
    sget-object v2, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa$NotiMode;->MissedCall:Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa$NotiMode;

    if-ne p1, v2, :cond_4

    .line 359
    const-string v2, "com.android.phone"

    invoke-virtual {v0, v2, v4}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    .line 366
    :cond_2
    :goto_1
    sget-object v2, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa$NotiMode;->MissedCall:Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa$NotiMode;

    if-ne p1, v2, :cond_6

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    if-eqz v2, :cond_6

    .line 367
    sget-boolean v1, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "LockscreenHelpOverlay"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNumMissedEvent(missed Call Count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    iget v3, v3, Landroid/app/NotificationInfo;->missedCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    iget v1, v1, Landroid/app/NotificationInfo;->missedCount:I

    goto :goto_0

    .line 360
    :cond_4
    sget-object v2, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa$NotiMode;->MissedMsg:Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa$NotiMode;

    if-ne p1, v2, :cond_5

    .line 361
    const-string v2, "com.android.mms"

    const/16 v3, 0x7b

    invoke-virtual {v0, v2, v3}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    goto :goto_1

    .line 362
    :cond_5
    sget-object v2, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa$NotiMode;->MissedEMail:Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa$NotiMode;

    if-ne p1, v2, :cond_2

    .line 363
    const-string v2, "com.android.email"

    invoke-virtual {v0, v2, v4}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    goto :goto_1

    .line 369
    :cond_6
    sget-object v2, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa$NotiMode;->MissedMsg:Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa$NotiMode;

    if-eq p1, v2, :cond_7

    sget-object v2, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa$NotiMode;->MissedEMail:Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa$NotiMode;

    if-ne p1, v2, :cond_0

    :cond_7
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    if-eqz v2, :cond_0

    .line 370
    sget-boolean v1, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->DEBUG:Z

    if-eqz v1, :cond_8

    const-string v1, "LockscreenHelpOverlay"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNumMissedEvent(Unread Msg Count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    iget v3, v3, Landroid/app/NotificationInfo;->missedCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_8
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    iget v1, v1, Landroid/app/NotificationInfo;->missedCount:I

    goto/16 :goto_0
.end method

.method private handleMissedEventUpdate()V
    .locals 0

    .prologue
    .line 328
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->updateMissedEvent()V

    .line 329
    return-void
.end method

.method private isHelpHubInstalled()Z
    .locals 4

    .prologue
    .line 415
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 416
    .local v2, packageManager:Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.samsung.helphub.HELP"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 417
    .local v0, intent:Landroid/content/Intent;
    const/high16 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 419
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 420
    const/4 v3, 0x1

    .line 421
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private setGestureImageArray()V
    .locals 7

    .prologue
    const v6, 0x108061b

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x3

    const/4 v2, 0x2

    .line 206
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->gestureImageArray:[I

    .line 207
    iget v0, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->mCreationOrientation:I

    if-eq v0, v2, :cond_1

    .line 208
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->gestureImageArray:[I

    const v1, 0x108060e

    aput v1, v0, v4

    .line 209
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->gestureImageArray:[I

    const v1, 0x1080611

    aput v1, v0, v5

    .line 210
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isDivideMissedEventEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->gestureImageArray:[I

    const v1, 0x1080615

    aput v1, v0, v2

    .line 212
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->gestureImageArray:[I

    const v1, 0x1080618

    aput v1, v0, v3

    .line 225
    :goto_0
    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->gestureImageArray:[I

    aput v6, v0, v2

    .line 215
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->gestureImageArray:[I

    aput v6, v0, v3

    goto :goto_0

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->gestureImageArray:[I

    const v1, 0x108060f

    aput v1, v0, v4

    .line 219
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->gestureImageArray:[I

    const v1, 0x1080612

    aput v1, v0, v5

    .line 220
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->gestureImageArray:[I

    const v1, 0x1080616

    aput v1, v0, v2

    .line 221
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->gestureImageArray:[I

    const v1, 0x1080619

    aput v1, v0, v3

    goto :goto_0
.end method

.method private updateMissedEvent()V
    .locals 5

    .prologue
    .line 332
    const/4 v0, 0x0

    .line 333
    .local v0, nCallCount:I
    const/4 v1, 0x0

    .line 335
    .local v1, nMsgCount:I
    sget-object v2, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa$NotiMode;->MissedCall:Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa$NotiMode;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->getNumMissedEvent(Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa$NotiMode;)I

    move-result v0

    .line 336
    sget-object v2, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa$NotiMode;->MissedMsg:Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa$NotiMode;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->getNumMissedEvent(Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa$NotiMode;)I

    move-result v1

    .line 338
    iget v2, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->mMissedCallCount:I

    if-eq v0, v2, :cond_0

    if-ltz v0, :cond_0

    .line 339
    iput v0, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->mMissedCallCount:I

    .line 342
    :cond_0
    sget-boolean v2, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "LockscreenHelpOverlay"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateMissedEvent(missed Call Count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->mMissedCallCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_1
    iget v2, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->mMissedMsgCount:I

    if-eq v1, v2, :cond_2

    if-ltz v1, :cond_2

    .line 345
    iput v1, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->mMissedMsgCount:I

    .line 348
    :cond_2
    sget-boolean v2, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "LockscreenHelpOverlay"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateMissedEvent(Unread Msg Count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->mMissedMsgCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_3
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 387
    sget-boolean v0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LockscreenHelpOverlay"

    const-string v1, "onCleanUp() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 389
    sget-boolean v0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "LockscreenHelpOverlay"

    const-string v1, "onCleanUp() Broadcast unregister"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 392
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->mHelpCallback:Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface$HelpOverlayCallback;

    .line 393
    return-void
.end method

.method public getWhichTip()I
    .locals 1

    .prologue
    .line 396
    iget v0, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->mWhichTip:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 401
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 413
    :goto_0
    return-void

    .line 403
    :sswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->mHelpCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->setHelpLayoutFlag()V

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->mHelpCallback:Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface$HelpOverlayCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->mHelpCallback:Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface$HelpOverlayCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface$HelpOverlayCallback;->dismissed()V

    .line 407
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->setVisibility(I)V

    goto :goto_0

    .line 410
    :sswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v1, 0x2710

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    goto :goto_0

    .line 401
    :sswitch_data_0
    .sparse-switch
        0x1020019 -> :sswitch_0
        0x1020362 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 382
    sget-boolean v0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LockscreenHelpOverlay"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->mHelpCallback:Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface$HelpOverlayCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->mHelpCallback:Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface$HelpOverlayCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface$HelpOverlayCallback;->dismissed()V

    .line 384
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 377
    sget-boolean v0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LockscreenHelpOverlay"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->setWhichHelpInfo()V

    .line 379
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v1, 0x2710

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 324
    const/4 v0, 0x1

    return v0
.end method

.method public setHelpLayoutFlag()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 303
    iget v2, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->mChecked:I

    const-wide/high16 v3, 0x4024

    iget v5, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->mWhichTip:I

    add-int/lit8 v5, v5, -0x1

    int-to-double v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-int v3, v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->mChecked:I

    .line 304
    sget-boolean v2, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "LockscreenHelpOverlay"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setChekced() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->mChecked:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_0
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->mIsHelpHubInstalled:Z

    if-eqz v2, :cond_1

    .line 307
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v8}, Landroid/content/ContentValues;-><init>(I)V

    .line 308
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "displayed"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 310
    const/4 v2, 0x2

    new-array v0, v2, [Landroid/net/Uri;

    .line 311
    .local v0, uri:[Landroid/net/Uri;
    const-string v2, "content://com.samsung.helphub.provider/help_page_status/unlock_device"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v0, v7

    .line 312
    const-string v2, "content://com.samsung.helphub.provider/help_page_status/unlock_shortcuts"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v0, v8

    .line 314
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->mWhichTip:I

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v0, v3

    invoke-virtual {v2, v3, v1, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 318
    .end local v0           #uri:[Landroid/net/Uri;
    .end local v1           #values:Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 316
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "help_overlay_checked"

    iget v4, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->mChecked:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public setPaddingForShorcutGesture()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 228
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "information_ticker"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v0, :cond_2

    .line 230
    .local v0, isTickerOn:Z
    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050054

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    .line 231
    .local v1, shortcutPadding:I
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050055

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v2, v3

    .line 233
    .local v2, shortcutWidth:I
    iget v3, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->mCreationOrientation:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    .line 234
    if-eqz v0, :cond_0

    .line 235
    iget v3, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->deviceDpi:I

    mul-int/lit8 v3, v3, 0x40

    div-int/lit16 v3, v3, 0xa0

    iput v3, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->mBottomPadding:I

    .line 237
    :cond_0
    iget v3, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->mShortcutItemNum:I

    if-lez v3, :cond_1

    .line 238
    iget v3, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->mShortcutItemNum:I

    rsub-int/lit8 v3, v3, 0x4

    div-int/lit8 v4, v2, 0x2

    add-int/2addr v4, v1

    mul-int/2addr v3, v4

    iput v3, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->mLeftPadding:I

    .line 240
    :cond_1
    return-void

    .end local v0           #isTickerOn:Z
    .end local v1           #shortcutPadding:I
    .end local v2           #shortcutWidth:I
    :cond_2
    move v0, v3

    .line 228
    goto :goto_0
.end method

.method public setWhichHelpInfo()V
    .locals 2

    .prologue
    .line 244
    iget v0, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->mChecked:I

    iget v1, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->mShortcutItemNum:I

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->setWhichHelpInfo(II)V

    .line 245
    return-void
.end method

.method public setWhichHelpInfo(II)V
    .locals 6
    .parameter "checked"
    .parameter "shortcutItemNum"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 248
    const/4 v0, 0x1

    .line 250
    .local v0, mShowingNumber:I
    sget-boolean v1, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "LockscreenHelpOverlay"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checked = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_0
    rem-int/lit8 v1, p1, 0xa

    if-ge v1, v0, :cond_2

    .line 253
    iput v5, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->mWhichTip:I

    .line 254
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->mGestureText:Landroid/widget/TextView;

    const v2, 0x10406a7

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 255
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->mGestureImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->gestureImageArray:[I

    iget v3, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->mWhichTip:I

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 256
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->setVisibility(I)V

    .line 257
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->mHelpCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 300
    :cond_1
    :goto_0
    return-void

    .line 261
    :cond_2
    div-int/lit8 p1, p1, 0xa

    .line 264
    rem-int/lit8 v1, p1, 0xa

    if-ge v1, v0, :cond_3

    if-lez p2, :cond_3

    .line 265
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->setPaddingForShorcutGesture()V

    .line 266
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->mWhichTip:I

    .line 267
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->mGestureText:Landroid/widget/TextView;

    const v2, 0x10406a8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 268
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->mGestureImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->gestureImageArray:[I

    iget v3, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->mWhichTip:I

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 269
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->mGestureImage:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->mLeftPadding:I

    iget v3, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->mBottomPadding:I

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 270
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->setVisibility(I)V

    .line 271
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->mHelpCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 275
    :cond_3
    div-int/lit8 p1, p1, 0xa

    .line 298
    iput v4, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->mWhichTip:I

    .line 299
    sget-boolean v1, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "LockscreenHelpOverlay"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mWhichTip = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;->mWhichTip:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
