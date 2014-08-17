.class public Lcom/android/internal/policy/impl/CircleMissedEventWidget;
.super Landroid/widget/LinearLayout;
.source "CircleMissedEventWidget.java"

# interfaces
.implements Lcom/android/internal/policy/impl/CircleMissedEventWidgetInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/CircleMissedEventWidget$7;,
        Lcom/android/internal/policy/impl/CircleMissedEventWidget$UnlockMode;,
        Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;
    }
.end annotation


# static fields
.field private static final MISSED_EVENT_ARRIVED:Ljava/lang/String; = "com.android.server.NotificationManagerService.NotificationArrived"

.field private static final MISSED_EVENT_REMOVED:Ljava/lang/String; = "com.android.server.NotificationManagerService.NotificationRemoved"

.field private static final TAG:Ljava/lang/String; = "CircleMissedEventWidget"


# instance fields
.field private final CALL_PKG:Ljava/lang/String;

.field private final DEBUG:Z

.field private final EMAIL_PKG:Ljava/lang/String;

.field private final LGU_UMC_PKG:Ljava/lang/String;

.field private final MISSED_EVENT_UPDATE:I

.field private MSG_PKG:Ljava/lang/String;

.field private final REQ_INDEX_CALL_EMAIL:I

.field private final REQ_INDEX_MSG:I

.field private final REQ_INDEX_UMC_MSG:I

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCircleUnlockListener:Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleUnlockListener;

.field private mCircleUnlockView:Lcom/android/internal/policy/impl/CircleUnlockWidget;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mMissedCall:Landroid/widget/LinearLayout;

.field private mMissedCallCount:I

.field private mMissedCallIcon:Landroid/widget/ImageView;

.field private mMissedCallList:Landroid/view/View;

.field private mMissedCallMsg:Landroid/widget/LinearLayout;

.field private mMissedCallMsgBackground:Landroid/widget/LinearLayout;

.field private mMissedCallNotiInfo:Landroid/app/NotificationInfo;

.field private mMissedCallTextView:Landroid/widget/TextView;

.field private mMissedMsg:Landroid/widget/LinearLayout;

.field private mMissedMsgCount:I

.field private mMissedMsgIcon:Landroid/widget/ImageView;

.field private mMissedMsgTextView:Landroid/widget/TextView;

.field private mTouchListerner:Landroid/view/View$OnTouchListener;

.field private mUnlockMode:Lcom/android/internal/policy/impl/CircleMissedEventWidget$UnlockMode;

.field private mUnreadMsgList:Landroid/view/View;

.field private mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/CircleUnlockWidget;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 8
    .parameter "context"
    .parameter "circleUnlockView"
    .parameter "callback"

    .prologue
    const/4 v7, 0x0

    const v6, 0x1020305

    const/4 v5, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 112
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 47
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->DEBUG:Z

    .line 59
    const-string v2, "com.android.phone"

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->CALL_PKG:Ljava/lang/String;

    .line 60
    const-string v2, "com.android.mms"

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->MSG_PKG:Ljava/lang/String;

    .line 61
    const-string v2, "com.android.email"

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->EMAIL_PKG:Ljava/lang/String;

    .line 62
    const-string v2, "com.lguplus.umcgp5"

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->LGU_UMC_PKG:Ljava/lang/String;

    .line 68
    const/16 v2, 0x12c2

    iput v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->MISSED_EVENT_UPDATE:I

    .line 69
    iput v4, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->REQ_INDEX_CALL_EMAIL:I

    .line 70
    const/16 v2, 0x7b

    iput v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->REQ_INDEX_MSG:I

    .line 71
    const/16 v2, 0x64

    iput v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->REQ_INDEX_UMC_MSG:I

    .line 73
    iput v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallCount:I

    .line 74
    iput v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedMsgCount:I

    .line 93
    sget-object v2, Lcom/android/internal/policy/impl/CircleMissedEventWidget$UnlockMode;->MissedNone:Lcom/android/internal/policy/impl/CircleMissedEventWidget$UnlockMode;

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mUnlockMode:Lcom/android/internal/policy/impl/CircleMissedEventWidget$UnlockMode;

    .line 95
    iput-object v7, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallList:Landroid/view/View;

    .line 96
    iput-object v7, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mUnreadMsgList:Landroid/view/View;

    .line 100
    new-instance v2, Lcom/android/internal/policy/impl/CircleMissedEventWidget$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/CircleMissedEventWidget$1;-><init>(Lcom/android/internal/policy/impl/CircleMissedEventWidget;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mHandler:Landroid/os/Handler;

    .line 114
    iput-object p1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mContext:Landroid/content/Context;

    .line 115
    iput-object p3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 117
    iput-object p2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mCircleUnlockView:Lcom/android/internal/policy/impl/CircleUnlockWidget;

    .line 119
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 121
    .local v1, inflater:Landroid/view/LayoutInflater;
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.feature.hovering_ui"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v4, :cond_2

    .line 122
    const v2, 0x1090061

    invoke-virtual {v1, v2, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 130
    :goto_0
    const v2, 0x1020307

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallIcon:Landroid/widget/ImageView;

    .line 131
    const v2, 0x102030a

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedMsgIcon:Landroid/widget/ImageView;

    .line 135
    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallMsgBackground:Landroid/widget/LinearLayout;

    .line 138
    const v2, 0x1020306

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCall:Landroid/widget/LinearLayout;

    .line 139
    const v2, 0x1020309

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedMsg:Landroid/widget/LinearLayout;

    .line 140
    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallMsg:Landroid/widget/LinearLayout;

    .line 143
    const v2, 0x1020308

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallTextView:Landroid/widget/TextView;

    .line 144
    const v2, 0x102030b

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedMsgTextView:Landroid/widget/TextView;

    .line 150
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.feature.hovering_ui"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v4, :cond_0

    .line 151
    new-instance v2, Lcom/android/internal/policy/impl/CircleMissedCallList;

    invoke-direct {v2, p1}, Lcom/android/internal/policy/impl/CircleMissedCallList;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallList:Landroid/view/View;

    .line 152
    new-instance v2, Lcom/android/internal/policy/impl/CircleUnreadMsgList;

    invoke-direct {v2, p1}, Lcom/android/internal/policy/impl/CircleUnreadMsgList;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mUnreadMsgList:Landroid/view/View;

    .line 153
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallList:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 154
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mUnreadMsgList:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 157
    :cond_0
    new-instance v2, Lcom/android/internal/policy/impl/CircleMissedEventWidget$2;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/CircleMissedEventWidget$2;-><init>(Lcom/android/internal/policy/impl/CircleMissedEventWidget;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mTouchListerner:Landroid/view/View$OnTouchListener;

    .line 188
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallMsg:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mTouchListerner:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 191
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCall:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/android/internal/policy/impl/CircleMissedEventWidget$3;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/CircleMissedEventWidget$3;-><init>(Lcom/android/internal/policy/impl/CircleMissedEventWidget;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 214
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedMsg:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/android/internal/policy/impl/CircleMissedEventWidget$4;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/CircleMissedEventWidget$4;-><init>(Lcom/android/internal/policy/impl/CircleMissedEventWidget;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 237
    new-instance v2, Lcom/android/internal/policy/impl/CircleMissedEventWidget$5;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/CircleMissedEventWidget$5;-><init>(Lcom/android/internal/policy/impl/CircleMissedEventWidget;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mCircleUnlockListener:Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleUnlockListener;

    .line 274
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 275
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "com.android.server.NotificationManagerService.NotificationArrived"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 276
    const-string v2, "com.android.server.NotificationManagerService.NotificationRemoved"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 278
    new-instance v2, Lcom/android/internal/policy/impl/CircleMissedEventWidget$6;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/CircleMissedEventWidget$6;-><init>(Lcom/android/internal/policy/impl/CircleMissedEventWidget;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 289
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 291
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->updateMissedEvent()V

    .line 294
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->getalternatePackageForMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 295
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->getalternatePackageForMessage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->MSG_PKG:Ljava/lang/String;

    .line 297
    :cond_1
    return-void

    .line 124
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_2
    const v2, 0x109005c

    invoke-virtual {v1, v2, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 125
    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->setGravity(I)V

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/CircleMissedEventWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->handleMissedEventUpdate()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/CircleMissedEventWidget;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallMsgBackground:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/CircleMissedEventWidget;Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->sendIntent(Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/CircleMissedEventWidget;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/CircleMissedEventWidget;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/CircleMissedEventWidget;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/CircleMissedEventWidget;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedMsgIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/CircleMissedEventWidget;)Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleUnlockListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mCircleUnlockListener:Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleUnlockListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/CircleMissedEventWidget;)Lcom/android/internal/policy/impl/CircleUnlockWidget;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mCircleUnlockView:Lcom/android/internal/policy/impl/CircleUnlockWidget;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/CircleMissedEventWidget;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/CircleMissedEventWidget;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallList:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/CircleMissedEventWidget;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mUnreadMsgList:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/CircleMissedEventWidget;)Lcom/android/internal/policy/impl/CircleMissedEventWidget$UnlockMode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mUnlockMode:Lcom/android/internal/policy/impl/CircleMissedEventWidget$UnlockMode;

    return-object v0
.end method

.method private getNumMissedEvent(Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;)I
    .locals 5
    .parameter "mode"

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 405
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 407
    .local v0, mNM:Landroid/app/NotificationManager;
    if-nez v0, :cond_1

    .line 435
    :cond_0
    :goto_0
    return v1

    .line 410
    :cond_1
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isMIDWRFeature()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 411
    sget-object v2, Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;->MissedCall:Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;

    if-ne p1, v2, :cond_3

    .line 412
    const-string v2, "com.lguplus.umcgp5"

    invoke-virtual {v0, v2, v4}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    .line 428
    :cond_2
    :goto_1
    sget-object v2, Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;->MissedCall:Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;

    if-ne p1, v2, :cond_8

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    if-eqz v2, :cond_8

    .line 430
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    iget v1, v1, Landroid/app/NotificationInfo;->missedCount:I

    goto :goto_0

    .line 413
    :cond_3
    sget-object v2, Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;->MissedMsg:Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;

    if-ne p1, v2, :cond_4

    .line 414
    const-string v2, "com.lguplus.umcgp5"

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    goto :goto_1

    .line 415
    :cond_4
    sget-object v2, Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;->MissedEMail:Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;

    if-ne p1, v2, :cond_2

    .line 416
    const-string v2, "com.android.email"

    invoke-virtual {v0, v2, v4}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    goto :goto_1

    .line 419
    :cond_5
    sget-object v2, Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;->MissedCall:Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;

    if-ne p1, v2, :cond_6

    .line 420
    const-string v2, "com.android.phone"

    invoke-virtual {v0, v2, v4}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    goto :goto_1

    .line 421
    :cond_6
    sget-object v2, Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;->MissedMsg:Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;

    if-ne p1, v2, :cond_7

    .line 422
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->MSG_PKG:Ljava/lang/String;

    const/16 v3, 0x7b

    invoke-virtual {v0, v2, v3}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    goto :goto_1

    .line 423
    :cond_7
    sget-object v2, Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;->MissedEMail:Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;

    if-ne p1, v2, :cond_2

    .line 424
    const-string v2, "com.android.email"

    invoke-virtual {v0, v2, v4}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    goto :goto_1

    .line 431
    :cond_8
    sget-object v2, Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;->MissedMsg:Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;

    if-eq p1, v2, :cond_9

    sget-object v2, Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;->MissedEMail:Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;

    if-ne p1, v2, :cond_0

    :cond_9
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    if-eqz v2, :cond_0

    .line 433
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    iget v1, v1, Landroid/app/NotificationInfo;->missedCount:I

    goto :goto_0
.end method

.method private handleMissedEventUpdate()V
    .locals 0

    .prologue
    .line 329
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->updateMissedEvent()V

    .line 330
    return-void
.end method

.method private sendIntent(Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;)V
    .locals 4
    .parameter "notiMode"

    .prologue
    .line 439
    const/4 v0, 0x0

    .line 440
    .local v0, intent:Landroid/app/PendingIntent;
    sget-object v1, Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;->MissedCall:Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;

    if-ne p1, v1, :cond_2

    .line 441
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    iget-object v1, v1, Landroid/app/NotificationInfo;->contentIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 442
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    iget-object v0, v1, Landroid/app/NotificationInfo;->contentIntent:Landroid/app/PendingIntent;

    .line 450
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 452
    :try_start_0
    const-string v1, "CircleMissedEventWidget"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendintent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 458
    :cond_1
    :goto_1
    return-void

    .line 444
    :cond_2
    sget-object v1, Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;->MissedMsg:Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;

    if-eq p1, v1, :cond_3

    sget-object v1, Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;->MissedEMail:Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;

    if-ne p1, v1, :cond_0

    .line 445
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    iget-object v1, v1, Landroid/app/NotificationInfo;->contentIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 446
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    iget-object v0, v1, Landroid/app/NotificationInfo;->contentIntent:Landroid/app/PendingIntent;

    goto :goto_0

    .line 454
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private updateMissedEvent()V
    .locals 6

    .prologue
    const/16 v5, 0x3e7

    .line 354
    const/4 v2, 0x0

    .line 355
    .local v2, nCallCount:I
    const/4 v3, 0x0

    .line 356
    .local v3, nMsgCount:I
    const/4 v0, 0x0

    .line 357
    .local v0, bUpdatedCallCount:Z
    const/4 v1, 0x0

    .line 359
    .local v1, bUpdatedMsgCount:Z
    sget-object v4, Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;->MissedCall:Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->getNumMissedEvent(Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;)I

    move-result v2

    .line 360
    sget-object v4, Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;->MissedMsg:Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->getNumMissedEvent(Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;)I

    move-result v3

    .line 362
    iget v4, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallCount:I

    if-eq v2, v4, :cond_5

    if-ltz v2, :cond_5

    .line 363
    const/4 v0, 0x1

    .line 364
    if-le v2, v5, :cond_4

    .line 365
    iput v5, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallCount:I

    .line 374
    :goto_0
    iget v4, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedMsgCount:I

    if-eq v3, v4, :cond_7

    if-ltz v2, :cond_7

    .line 375
    const/4 v1, 0x1

    .line 376
    if-le v3, v5, :cond_6

    .line 377
    iput v5, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedMsgCount:I

    .line 386
    :goto_1
    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    .line 387
    :cond_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallTextView:Landroid/widget/TextView;

    iget v5, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallCount:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedMsgTextView:Landroid/widget/TextView;

    iget v5, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedMsgCount:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 390
    :cond_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallMsg:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->getTTSMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 391
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->updateMissedIcons()V

    .line 393
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.sec.feature.hovering_ui"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 394
    if-eqz v0, :cond_2

    .line 395
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallList:Landroid/view/View;

    check-cast v4, Lcom/android/internal/policy/impl/CircleMissedCallList;

    iget v5, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallCount:I

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/impl/CircleMissedCallList;->updateMissedCall(I)V

    .line 397
    :cond_2
    if-eqz v1, :cond_3

    .line 398
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mUnreadMsgList:Landroid/view/View;

    check-cast v4, Lcom/android/internal/policy/impl/CircleUnreadMsgList;

    iget v5, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedMsgCount:I

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->updateUnreadMsg(I)V

    .line 401
    :cond_3
    return-void

    .line 367
    :cond_4
    iput v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallCount:I

    goto :goto_0

    .line 369
    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    .line 379
    :cond_6
    iput v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedMsgCount:I

    goto :goto_1

    .line 381
    :cond_7
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private updateMissedIcons()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 301
    iget v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedMsgCount:I

    if-lez v0, :cond_0

    .line 302
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->setVisibility(I)V

    .line 303
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCall:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 304
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedMsg:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 305
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallMsg:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 306
    sget-object v0, Lcom/android/internal/policy/impl/CircleMissedEventWidget$UnlockMode;->MissedCallAndMsg:Lcom/android/internal/policy/impl/CircleMissedEventWidget$UnlockMode;

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mUnlockMode:Lcom/android/internal/policy/impl/CircleMissedEventWidget$UnlockMode;

    .line 325
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->invalidate()V

    .line 326
    return-void

    .line 308
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallCount:I

    if-lez v0, :cond_1

    .line 309
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->setVisibility(I)V

    .line 310
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCall:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 311
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedMsg:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 312
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallMsg:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 313
    sget-object v0, Lcom/android/internal/policy/impl/CircleMissedEventWidget$UnlockMode;->MissedCall:Lcom/android/internal/policy/impl/CircleMissedEventWidget$UnlockMode;

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mUnlockMode:Lcom/android/internal/policy/impl/CircleMissedEventWidget$UnlockMode;

    goto :goto_0

    .line 314
    :cond_1
    iget v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedMsgCount:I

    if-lez v0, :cond_2

    .line 315
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->setVisibility(I)V

    .line 316
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCall:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 317
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedMsg:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 318
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallMsg:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 319
    sget-object v0, Lcom/android/internal/policy/impl/CircleMissedEventWidget$UnlockMode;->MissedMsg:Lcom/android/internal/policy/impl/CircleMissedEventWidget$UnlockMode;

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mUnlockMode:Lcom/android/internal/policy/impl/CircleMissedEventWidget$UnlockMode;

    goto :goto_0

    .line 321
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->setVisibility(I)V

    .line 322
    sget-object v0, Lcom/android/internal/policy/impl/CircleMissedEventWidget$UnlockMode;->MissedNone:Lcom/android/internal/policy/impl/CircleMissedEventWidget$UnlockMode;

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mUnlockMode:Lcom/android/internal/policy/impl/CircleMissedEventWidget$UnlockMode;

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 335
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 337
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallMsg:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 338
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCall:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 339
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedMsg:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 340
    return-void
.end method

.method public getMissedCallList()Lcom/android/internal/policy/impl/CircleMissedCallList;
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallList:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/CircleMissedCallList;

    return-object v0
.end method

.method public getTTSMessage()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 461
    const-string v0, ""

    .line 462
    .local v0, TTSMessage:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mContext:Landroid/content/Context;

    const v3, 0x1040636

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 463
    .local v1, swipeMsg:Ljava/lang/String;
    iget v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallCount:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedMsgCount:I

    if-lez v2, :cond_0

    .line 464
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mContext:Landroid/content/Context;

    const v3, 0x1040632

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    iget v5, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedMsgCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 479
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 465
    :cond_0
    iget v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallCount:I

    if-le v2, v6, :cond_1

    .line 466
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mContext:Landroid/content/Context;

    const v3, 0x1040630

    new-array v4, v6, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 467
    :cond_1
    iget v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedMsgCount:I

    if-le v2, v6, :cond_2

    .line 468
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mContext:Landroid/content/Context;

    const v3, 0x1040631

    new-array v4, v6, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedMsgCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 469
    :cond_2
    iget v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallCount:I

    if-ne v2, v6, :cond_3

    .line 470
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mContext:Landroid/content/Context;

    const v3, 0x104062e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 471
    :cond_3
    iget v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedMsgCount:I

    if-ne v2, v6, :cond_4

    .line 472
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mContext:Landroid/content/Context;

    const v3, 0x104062f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 474
    :cond_4
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mContext:Landroid/content/Context;

    const v3, 0x104062d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getUnreadMsgList()Lcom/android/internal/policy/impl/CircleUnreadMsgList;
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mUnreadMsgList:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;

    return-object v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 345
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 350
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->updateMissedEvent()V

    .line 351
    return-void
.end method
