.class public Lcom/android/internal/policy/impl/GlanceView;
.super Landroid/widget/FrameLayout;
.source "GlanceView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/GlanceView$NotiMode;
    }
.end annotation


# static fields
.field private static final MISSED_EVENT_ARRIVED:Ljava/lang/String; = "com.android.server.NotificationManagerService.NotificationArrived"

.field private static final MISSED_EVENT_REMOVED:Ljava/lang/String; = "com.android.server.NotificationManagerService.NotificationRemoved"

.field private static final MUSICHUB_MEDIA_INFO:Ljava/lang/String; = "com.samsung.music.musicservicecommand.mediainfo"

.field private static final MUSICHUB_ON:I = 0x2

.field private static final MUSICPLAYER_CHECK_PLAY_STATUS:Ljava/lang/String; = "com.sec.android.app.music.musicservicecommand.checkplaystatus"

.field private static final MUSICPLAYER_MEDIA_INFO:Ljava/lang/String; = "com.android.music.musicservicecommand.mediainfo"

.field private static final MUSICPLAYER_ON:I = 0x1


# instance fields
.field private final CALL_PKG:Ljava/lang/String;

.field private DBG:Z

.field private final DEBUG:Z

.field final EFFECT_CLOCK_ANI_TIME:I

.field final EFFECT_CONTENT_ANI_TIME:I

.field final EFFECT_UPDOWN_ANI_TIME:I

.field private final EMAIL_PKG:Ljava/lang/String;

.field private final MISSED_EVENT_UPDATE:I

.field private final MSG_MEDIA_UPDATE:I

.field private MSG_PKG:Ljava/lang/String;

.field private final REQ_INDEX_CALL_EMAIL:I

.field private final REQ_INDEX_MSG:I

.field private final SHINK_ANIMATION_START:I

.field private final STREAMING_MEDIA_UPDATE:I

.field private TAG:Ljava/lang/String;

.field private mAlarmCount:Landroid/widget/TextView;

.field private mAlarmDay:Landroid/widget/TextView;

.field private mAlarmDivideLine:Landroid/widget/ImageView;

.field private mAlarmLayout:Landroid/widget/LinearLayout;

.field private mAlarmRelativeLayout:Landroid/widget/RelativeLayout;

.field private mAlarmRemain:Landroid/widget/TextView;

.field mAniClock:Landroid/view/animation/Animation;

.field mAniContent:Landroid/view/animation/Animation;

.field mAniEffectBackGround:Landroid/view/animation/Animation;

.field private mBackGroundOff:Landroid/widget/ImageView;

.field private mBatteryChargingRelativeLayout:Landroid/widget/RelativeLayout;

.field private mBatteryCount:Landroid/widget/TextView;

.field private mBatteryDivideLine:Landroid/widget/ImageView;

.field private mBatteryImage:Landroid/widget/ImageView;

.field private mBatteryLevel:I

.field private mBatteryPecent:Landroid/widget/TextView;

.field private mBatteryString:Landroid/widget/TextView;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

.field private mClockWidgetLayout:Landroid/widget/FrameLayout;

.field private mContentLayout:Landroid/widget/LinearLayout;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mCreationOrientation:Landroid/content/res/Configuration;

.field private mCurrentAlbumID:Ljava/lang/String;

.field private mCurrentArtist:Ljava/lang/String;

.field private mCurrentTitle:Ljava/lang/String;

.field private mEffectBackGround:Landroid/widget/ImageView;

.field private mHandler:Landroid/os/Handler;

.field private mIsBatteryInform:Z

.field private mIsMissedCall:Z

.field private mIsNearestAlarm:Z

.field private mIsNewMessage:Z

.field private mIsNowMusic:Z

.field private mIsStatusBar:Z

.field private mIsTimeClock:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMediaUri:Landroid/net/Uri;

.field private mMessageCount:Landroid/widget/TextView;

.field private mMessageDivideLine:Landroid/widget/ImageView;

.field private mMessageImage:Landroid/widget/ImageView;

.field private mMessageLayout:Landroid/widget/LinearLayout;

.field private mMessageString:Landroid/widget/TextView;

.field private mMissedCallCount:I

.field private mMissedCallNotiInfo:Landroid/app/NotificationInfo;

.field private mMissedCallRelativeLayout:Landroid/widget/RelativeLayout;

.field private mMissedCount:Landroid/widget/TextView;

.field private mMissedDivideLine:Landroid/widget/ImageView;

.field private mMissedImage:Landroid/widget/ImageView;

.field private mMissedMsgCount:I

.field private mMissedString:Landroid/widget/TextView;

.field private mMusicDivideLine:Landroid/widget/ImageView;

.field private mMusicLayout:Landroid/widget/LinearLayout;

.field private mMusicSinger:Landroid/widget/TextView;

.field private mMusicSong:Landroid/widget/TextView;

.field private mNewMessageRelativeLayout:Landroid/widget/RelativeLayout;

.field private mNowMusicRelativeLayout:Landroid/widget/RelativeLayout;

.field private mRootLayout:Landroid/widget/FrameLayout;

.field private mServiceNumber:I

.field private mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 7
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    const/16 v6, 0x12c2

    const/16 v5, 0x3e8

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string v1, "GlanceView"

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlanceView;->TAG:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/GlanceView;->DBG:Z

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlanceView;->mAniEffectBackGround:Landroid/view/animation/Animation;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlanceView;->mAniClock:Landroid/view/animation/Animation;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlanceView;->mAniContent:Landroid/view/animation/Animation;

    iput v5, p0, Lcom/android/internal/policy/impl/GlanceView;->EFFECT_UPDOWN_ANI_TIME:I

    const/16 v1, 0x1f4

    iput v1, p0, Lcom/android/internal/policy/impl/GlanceView;->EFFECT_CLOCK_ANI_TIME:I

    iput v5, p0, Lcom/android/internal/policy/impl/GlanceView;->EFFECT_CONTENT_ANI_TIME:I

    const-string v1, "com.android.phone"

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlanceView;->CALL_PKG:Ljava/lang/String;

    const-string v1, "com.android.mms"

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlanceView;->MSG_PKG:Ljava/lang/String;

    const-string v1, "com.android.email"

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlanceView;->EMAIL_PKG:Ljava/lang/String;

    iput v6, p0, Lcom/android/internal/policy/impl/GlanceView;->MISSED_EVENT_UPDATE:I

    iput v4, p0, Lcom/android/internal/policy/impl/GlanceView;->REQ_INDEX_CALL_EMAIL:I

    const/16 v1, 0x7b

    iput v1, p0, Lcom/android/internal/policy/impl/GlanceView;->REQ_INDEX_MSG:I

    iput v3, p0, Lcom/android/internal/policy/impl/GlanceView;->mMissedCallCount:I

    iput v3, p0, Lcom/android/internal/policy/impl/GlanceView;->mMissedMsgCount:I

    const/16 v1, 0x64

    iput v1, p0, Lcom/android/internal/policy/impl/GlanceView;->mBatteryLevel:I

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/GlanceView;->DEBUG:Z

    iput v3, p0, Lcom/android/internal/policy/impl/GlanceView;->mServiceNumber:I

    const/16 v1, 0x12c1

    iput v1, p0, Lcom/android/internal/policy/impl/GlanceView;->SHINK_ANIMATION_START:I

    iput v6, p0, Lcom/android/internal/policy/impl/GlanceView;->MSG_MEDIA_UPDATE:I

    const/16 v1, 0x12c3

    iput v1, p0, Lcom/android/internal/policy/impl/GlanceView;->STREAMING_MEDIA_UPDATE:I

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlanceView;->mCurrentTitle:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlanceView;->mCurrentArtist:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlanceView;->mCurrentAlbumID:Ljava/lang/String;

    new-instance v1, Lcom/android/internal/policy/impl/GlanceView$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/GlanceView$2;-><init>(Lcom/android/internal/policy/impl/GlanceView;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlanceView;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/internal/policy/impl/GlanceView;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/internal/policy/impl/GlanceView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iput-object p5, p0, Lcom/android/internal/policy/impl/GlanceView;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    iput-object p3, p0, Lcom/android/internal/policy/impl/GlanceView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iput-object p2, p0, Lcom/android/internal/policy/impl/GlanceView;->mCreationOrientation:Landroid/content/res/Configuration;

    const-string v1, "TAG"

    const-string v2, "GlanceView : GlanceView Constructor"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x1090070

    invoke-virtual {v0, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlanceView;->loadViews()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlanceView;->IniteMusicBRReceiver()V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.music.musicservicecommand.checkplaystatus"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/GlanceView;->sendBroadcastAfterBooting(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlanceView;->initViews()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlanceView;->initAnimation()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlanceView;->getSettingOption()V

    invoke-virtual {p4, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    return-void
.end method

.method private CalculatedTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 24
    .parameter "nextAlarmtime"

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlanceView;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    .local v19, r:Landroid/content/res/Resources;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .local v3, c:Ljava/util/Calendar;
    const/16 v20, 0xd

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v20, 0xe

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Ljava/util/Calendar;->set(II)V

    invoke-static/range {p1 .. p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v22

    sub-long v7, v20, v22

    .local v7, delta:J
    const-string v20, "TAG"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "GlanceView :  Long.valueOf(nextAlarmtime) - c.getTimeInMillis()  : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "-"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v22

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/32 v20, 0x36ee80

    div-long v13, v7, v20

    .local v13, hours:J
    const-wide/32 v20, 0xea60

    div-long v20, v7, v20

    const-wide/16 v22, 0x3c

    rem-long v17, v20, v22

    .local v17, minutes:J
    const-wide/16 v20, 0x18

    div-long v5, v13, v20

    .local v5, days:J
    const-wide/16 v20, 0x18

    rem-long v13, v13, v20

    const-string v20, "TAG"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "GlanceView : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " Hour "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " min"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v20, 0x0

    cmp-long v20, v5, v20

    if-nez v20, :cond_0

    const-string v4, ""

    .local v4, daySeq:Ljava/lang/String;
    :goto_0
    const-wide/16 v20, 0x0

    cmp-long v20, v17, v20

    if-nez v20, :cond_2

    const-string v16, ""

    .local v16, minSeq:Ljava/lang/String;
    :goto_1
    const-wide/16 v20, 0x0

    cmp-long v20, v13, v20

    if-nez v20, :cond_4

    const-string v12, ""

    .local v12, hourSeq:Ljava/lang/String;
    :goto_2
    const-wide/16 v20, 0x0

    cmp-long v20, v5, v20

    if-lez v20, :cond_6

    const/4 v9, 0x1

    .local v9, dispDays:Z
    :goto_3
    const-wide/16 v20, 0x0

    cmp-long v20, v13, v20

    if-lez v20, :cond_7

    const/4 v10, 0x1

    .local v10, dispHour:Z
    :goto_4
    const-wide/16 v20, 0x0

    cmp-long v20, v17, v20

    if-lez v20, :cond_8

    const/4 v11, 0x1

    .local v11, dispMinute:Z
    :goto_5
    if-eqz v9, :cond_9

    const/16 v20, 0x1

    move/from16 v21, v20

    :goto_6
    if-eqz v10, :cond_a

    const/16 v20, 0x2

    :goto_7
    or-int v21, v21, v20

    if-eqz v11, :cond_b

    const/16 v20, 0x4

    :goto_8
    or-int v15, v21, v20

    .local v15, index:I
    const-string v20, "TAG"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "String.format(formats[index], daySeq :"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "  hourSeq : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " minSeq :"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v20, 0x0

    return-object v20

    .end local v4           #daySeq:Ljava/lang/String;
    .end local v9           #dispDays:Z
    .end local v10           #dispHour:Z
    .end local v11           #dispMinute:Z
    .end local v12           #hourSeq:Ljava/lang/String;
    .end local v15           #index:I
    .end local v16           #minSeq:Ljava/lang/String;
    :cond_0
    const-wide/16 v20, 0x1

    cmp-long v20, v5, v20

    if-nez v20, :cond_1

    const v20, 0x1040468

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    const v20, 0x1040469

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-virtual/range {v19 .. v21}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .restart local v4       #daySeq:Ljava/lang/String;
    :cond_2
    const-wide/16 v20, 0x1

    cmp-long v20, v17, v20

    if-nez v20, :cond_3

    const v20, 0x104046c

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_1

    :cond_3
    const v20, 0x104046d

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-virtual/range {v19 .. v21}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_1

    .restart local v16       #minSeq:Ljava/lang/String;
    :cond_4
    const-wide/16 v20, 0x1

    cmp-long v20, v13, v20

    if-nez v20, :cond_5

    const v20, 0x104046a

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_2

    :cond_5
    const v20, 0x104046b

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-virtual/range {v19 .. v21}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_2

    .restart local v12       #hourSeq:Ljava/lang/String;
    :cond_6
    const/4 v9, 0x0

    goto/16 :goto_3

    .restart local v9       #dispDays:Z
    :cond_7
    const/4 v10, 0x0

    goto/16 :goto_4

    .restart local v10       #dispHour:Z
    :cond_8
    const/4 v11, 0x0

    goto/16 :goto_5

    .restart local v11       #dispMinute:Z
    :cond_9
    const/16 v20, 0x0

    move/from16 v21, v20

    goto/16 :goto_6

    :cond_a
    const/16 v20, 0x0

    goto/16 :goto_7

    :cond_b
    const/16 v20, 0x0

    goto/16 :goto_8
.end method

.method private IniteMusicBRReceiver()V
    .locals 3

    .prologue
    const-string v1, "TAG"

    const-string v2, "GlanceView : GlanceView IniteMusicBRReceiver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.android.music.musicservicecommand.mediainfo"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.music.musicservicecommand.mediainfo"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/android/internal/policy/impl/GlanceView$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/GlanceView$3;-><init>(Lcom/android/internal/policy/impl/GlanceView;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlanceView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlanceView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlanceView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/GlanceView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mIsTimeClock:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/GlanceView;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mClockWidgetLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/GlanceView;ILandroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/GlanceView;->handleMediaUpdate(ILandroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/GlanceView;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mServiceNumber:I

    return v0
.end method

.method static synthetic access$1102(Lcom/android/internal/policy/impl/GlanceView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lcom/android/internal/policy/impl/GlanceView;->mServiceNumber:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/GlanceView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/GlanceView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mIsMissedCall:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/GlanceView;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mMissedCallRelativeLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/GlanceView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mIsNewMessage:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/GlanceView;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mNewMessageRelativeLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/GlanceView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mIsBatteryInform:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/GlanceView;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mBatteryChargingRelativeLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/GlanceView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mIsNowMusic:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/GlanceView;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mNowMusicRelativeLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private getAlarmRemainTime()Ljava/lang/String;
    .locals 5

    .prologue
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlanceView;->mContext:Landroid/content/Context;

    const-string v3, "com.android.internal.policy.impl.GlanceView"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .local v1, cache:Landroid/content/SharedPreferences;
    const-string v2, "NextAlarmRemainString"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, AlarmSP:Ljava/lang/String;
    const-string v2, "TAG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GlanceView : getPreferenses - NextAlarmRemainString = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private getBatteryLevel()V
    .locals 2

    .prologue
    const-string v0, "TAG"

    const-string v1, "GlanceView : GlanceView getBatteryLevel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getBatteryLevel()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mBatteryLevel:I

    return-void
.end method

.method private getMissedEvent()V
    .locals 2

    .prologue
    const-string v0, "TAG"

    const-string v1, "GlanceView : GlanceView getMissedEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/internal/policy/impl/GlanceView$NotiMode;->MissedCall:Lcom/android/internal/policy/impl/GlanceView$NotiMode;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/GlanceView;->getNumMissedEvent(Lcom/android/internal/policy/impl/GlanceView$NotiMode;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mMissedCallCount:I

    sget-object v0, Lcom/android/internal/policy/impl/GlanceView$NotiMode;->MissedMsg:Lcom/android/internal/policy/impl/GlanceView$NotiMode;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/GlanceView;->getNumMissedEvent(Lcom/android/internal/policy/impl/GlanceView$NotiMode;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mMissedMsgCount:I

    return-void
.end method

.method private getNumMissedEvent(Lcom/android/internal/policy/impl/GlanceView$NotiMode;)I
    .locals 4
    .parameter "mode"

    .prologue
    const/4 v1, 0x0

    const-string v2, "TAG"

    const-string v3, "GlanceView : GlanceView getNumMissedEvent"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlanceView;->mContext:Landroid/content/Context;

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
    sget-object v2, Lcom/android/internal/policy/impl/GlanceView$NotiMode;->MissedCall:Lcom/android/internal/policy/impl/GlanceView$NotiMode;

    if-ne p1, v2, :cond_3

    const-string v2, "com.android.phone"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlanceView;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    :cond_2
    :goto_1
    sget-object v2, Lcom/android/internal/policy/impl/GlanceView$NotiMode;->MissedCall:Lcom/android/internal/policy/impl/GlanceView$NotiMode;

    if-ne p1, v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlanceView;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    if-eqz v2, :cond_4

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlanceView;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    iget v1, v1, Landroid/app/NotificationInfo;->missedCount:I

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/android/internal/policy/impl/GlanceView$NotiMode;->MissedMsg:Lcom/android/internal/policy/impl/GlanceView$NotiMode;

    if-ne p1, v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlanceView;->MSG_PKG:Ljava/lang/String;

    const/16 v3, 0x7b

    invoke-virtual {v0, v2, v3}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlanceView;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    goto :goto_1

    :cond_4
    sget-object v2, Lcom/android/internal/policy/impl/GlanceView$NotiMode;->MissedMsg:Lcom/android/internal/policy/impl/GlanceView$NotiMode;

    if-ne p1, v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlanceView;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlanceView;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    iget v1, v1, Landroid/app/NotificationInfo;->missedCount:I

    goto :goto_0
.end method

.method private getSettingOption()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "glance_view_time_date"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mIsTimeClock:Z

    const-string v0, "TAG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GlanceView : mIsTimeClock"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/GlanceView;->mIsTimeClock:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "glance_view_missed_call"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mIsMissedCall:Z

    const-string v0, "TAG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GlanceView : mIsMissedCall"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/GlanceView;->mIsMissedCall:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "glance_view_new_message"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mIsNewMessage:Z

    const-string v0, "TAG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GlanceView : mIsNewMessage"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/GlanceView;->mIsNewMessage:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "glance_view_now_playing_music"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mIsNowMusic:Z

    const-string v0, "TAG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GlanceView : mIsNowMusic"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/GlanceView;->mIsNowMusic:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "glance_view_battery_charging_info"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mIsBatteryInform:Z

    const-string v0, "TAG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GlanceView : mIsBatteryInform"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/GlanceView;->mIsBatteryInform:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "glance_view_status_bar"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_5

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mIsStatusBar:Z

    const-string v0, "TAG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GlanceView : mIsStatusBar"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/GlanceView;->mIsStatusBar:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "glance_view_nearest_alarm"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_6

    :goto_6
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/GlanceView;->mIsNearestAlarm:Z

    const-string v0, "TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GlanceView : mIsNearestAlarm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/GlanceView;->mIsNearestAlarm:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    move v0, v2

    goto/16 :goto_0

    :cond_1
    move v0, v2

    goto/16 :goto_1

    :cond_2
    move v0, v2

    goto/16 :goto_2

    :cond_3
    move v0, v2

    goto/16 :goto_3

    :cond_4
    move v0, v2

    goto :goto_4

    :cond_5
    move v0, v2

    goto :goto_5

    :cond_6
    move v1, v2

    goto :goto_6
.end method

.method private handleMediaUpdate(ILandroid/net/Uri;)V
    .locals 8
    .parameter "Isplay"
    .parameter "obj"

    .prologue
    const/4 v2, 0x0

    const-string v0, "TAG"

    const-string v1, "GlanceView : GlanceView handleMediaUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_0

    if-nez p2, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->TAG:Ljava/lang/String;

    const-string v1, "mContentResolver == null || obj == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlanceView;->mCurrentTitle:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlanceView;->mCurrentArtist:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlanceView;->mCurrentAlbumID:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void

    :cond_2
    iput-object p2, p0, Lcom/android/internal/policy/impl/GlanceView;->mMediaUri:Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlanceView;->mMediaUri:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .local v7, mCursor:Landroid/database/Cursor;
    if-nez p1, :cond_3

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlanceView;->mCurrentTitle:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlanceView;->mCurrentArtist:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlanceView;->mCurrentAlbumID:Ljava/lang/String;

    goto :goto_0

    :cond_3
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    :try_start_0
    const-string v0, "title"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mCurrentTitle:Ljava/lang/String;

    const-string v0, "artist"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mCurrentArtist:Ljava/lang/String;

    const-string v0, "album_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mCurrentAlbumID:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    .local v6, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method private initAnimation()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    const-string v0, "TAG"

    const-string v1, "GlanceView : GlanceView initAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mAniEffectBackGround:Landroid/view/animation/Animation;

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mAniClock:Landroid/view/animation/Animation;

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mAniContent:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mAniEffectBackGround:Landroid/view/animation/Animation;

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mAniClock:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mAniContent:Landroid/view/animation/Animation;

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mAniEffectBackGround:Landroid/view/animation/Animation;

    new-instance v1, Lcom/android/internal/policy/impl/GlanceView$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/GlanceView$1;-><init>(Lcom/android/internal/policy/impl/GlanceView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method private initViews()V
    .locals 2

    .prologue
    const-string v0, "TAG"

    const-string v1, "GlanceView : GlanceView initViews"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlanceView;->setClockWideget()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlanceView;->setMessageInform()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlanceView;->setMissedEventInform()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlanceView;->setBatteryInform()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlanceView;->setMusicInform()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlanceView;->setStatusBar()V

    return-void
.end method

.method private loadViews()V
    .locals 2

    .prologue
    const-string v0, "TAG"

    const-string v1, "GlanceView : GlanceView loadViews"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x102033a

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/GlanceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mRootLayout:Landroid/widget/FrameLayout;

    const v0, 0x102033c

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/GlanceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mClockWidgetLayout:Landroid/widget/FrameLayout;

    const v0, 0x102033d

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/GlanceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mContentLayout:Landroid/widget/LinearLayout;

    const v0, 0x102033b

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/GlanceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mEffectBackGround:Landroid/widget/ImageView;

    const v0, 0x1020345

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/GlanceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mMessageDivideLine:Landroid/widget/ImageView;

    const v0, 0x1020346

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/GlanceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mMessageImage:Landroid/widget/ImageView;

    const v0, 0x1020340

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/GlanceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mMissedDivideLine:Landroid/widget/ImageView;

    const v0, 0x1020341

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/GlanceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mMissedImage:Landroid/widget/ImageView;

    const v0, 0x102034a

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/GlanceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mBatteryDivideLine:Landroid/widget/ImageView;

    const v0, 0x102034b

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/GlanceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mBatteryImage:Landroid/widget/ImageView;

    const v0, 0x1020351

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/GlanceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mAlarmDivideLine:Landroid/widget/ImageView;

    const v0, 0x1020358

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/GlanceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mMusicDivideLine:Landroid/widget/ImageView;

    const v0, 0x1020347

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/GlanceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mMessageCount:Landroid/widget/TextView;

    const v0, 0x1020348

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/GlanceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mMessageString:Landroid/widget/TextView;

    const v0, 0x102034c

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/GlanceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mBatteryCount:Landroid/widget/TextView;

    const v0, 0x102034e

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/GlanceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mBatteryString:Landroid/widget/TextView;

    const v0, 0x102034d

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/GlanceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mBatteryPecent:Landroid/widget/TextView;

    const v0, 0x1020342

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/GlanceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mMissedCount:Landroid/widget/TextView;

    const v0, 0x1020343

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/GlanceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mMissedString:Landroid/widget/TextView;

    const v0, 0x1020353

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/GlanceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mAlarmCount:Landroid/widget/TextView;

    const v0, 0x1020354

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/GlanceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mAlarmDay:Landroid/widget/TextView;

    const v0, 0x1020355

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/GlanceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mAlarmRemain:Landroid/widget/TextView;

    const v0, 0x102035a

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/GlanceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mMusicSong:Landroid/widget/TextView;

    const v0, 0x102035b

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/GlanceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mMusicSinger:Landroid/widget/TextView;

    const v0, 0x102033e

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/GlanceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mMessageLayout:Landroid/widget/LinearLayout;

    const v0, 0x102033f

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/GlanceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mMissedCallRelativeLayout:Landroid/widget/RelativeLayout;

    const v0, 0x1020344

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/GlanceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mNewMessageRelativeLayout:Landroid/widget/RelativeLayout;

    const v0, 0x1020349

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/GlanceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mBatteryChargingRelativeLayout:Landroid/widget/RelativeLayout;

    const v0, 0x1020357

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/GlanceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mNowMusicRelativeLayout:Landroid/widget/RelativeLayout;

    return-void
.end method

.method private setAlarmInform()V
    .locals 6

    .prologue
    const-string v3, "TAG"

    const-string v4, "GlanceView : GlanceView setAlarmInform"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlanceView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "next_alarm_formatted"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, nextAlarm:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlanceView;->mAlarmCount:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlanceView;->getAlarmRemainTime()Ljava/lang/String;

    move-result-object v1

    .local v1, NextAlarmtime:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/GlanceView;->CalculatedTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, NextAlarmRemain:Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlanceView;->mAlarmRemain:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .end local v0           #NextAlarmRemain:Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlanceView;->mAlarmRelativeLayout:Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlanceView;->mAlarmRelativeLayout:Landroid/widget/RelativeLayout;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private setBatteryInform()V
    .locals 3

    .prologue
    const-string v0, "TAG"

    const-string v1, "GlanceView : GlanceView setBatteryInform"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mBatteryCount:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/GlanceView;->mBatteryLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mBatteryPecent:Landroid/widget/TextView;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mBatteryChargingRelativeLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mBatteryChargingRelativeLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private setClockWideget()V
    .locals 5

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mClockWidgetLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mClockWidgetLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlanceView;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->TAG:Ljava/lang/String;

    const-string v1, "GlanceView : removeView(mClockWidget)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/android/internal/policy/impl/ClockWidget;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlanceView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlanceView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlanceView;->mCreationOrientation:Landroid/content/res/Configuration;

    iget-object v4, p0, Lcom/android/internal/policy/impl/GlanceView;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/policy/impl/ClockWidget;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mClockWidgetLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlanceView;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mClockWidgetLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method private setMessageInform()V
    .locals 3

    .prologue
    const-string v0, "TAG"

    const-string v1, "GlanceView : GlanceView setMessageInform"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mMessageCount:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/GlanceView;->mMissedMsgCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mNewMessageRelativeLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mNewMessageRelativeLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private setMissedEventInform()V
    .locals 3

    .prologue
    const-string v0, "TAG"

    const-string v1, "GlanceView : GlanceView setMissedEventInform"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mMissedCount:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/GlanceView;->mMissedCallCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mMissedCallRelativeLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mMissedCallRelativeLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private setMusicInform()V
    .locals 2

    .prologue
    const-string v0, "TAG"

    const-string v1, "GlanceView : GlanceView setMusicInform"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mMusicSong:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlanceView;->mCurrentTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mMusicSinger:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlanceView;->mCurrentArtist:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mNowMusicRelativeLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mNowMusicRelativeLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private setStatusBar()V
    .locals 0

    .prologue
    return-void
.end method

.method private startAnimation()V
    .locals 2

    .prologue
    const-string v0, "TAG"

    const-string v1, "GlanceView : GlanceView startAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mEffectBackGround:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mEffectBackGround:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlanceView;->mAniEffectBackGround:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method public StopEffectAnimation()V
    .locals 2

    .prologue
    const-string v0, "TAG"

    const-string v1, "GlanceView : StopEffectAnimation()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mEffectBackGround:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mEffectBackGround:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mClockWidgetLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mClockWidgetLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->clearAnimation()V

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mMissedCallRelativeLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mMissedCallRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->clearAnimation()V

    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mNewMessageRelativeLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mNewMessageRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->clearAnimation()V

    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mBatteryChargingRelativeLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mBatteryChargingRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->clearAnimation()V

    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mAlarmRelativeLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mAlarmRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->clearAnimation()V

    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mNowMusicRelativeLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mNowMusicRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->clearAnimation()V

    :cond_6
    return-void
.end method

.method public cleanUp()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "TAG"

    const-string v1, "GlanceView : GlanceView cleanUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlanceView;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlanceView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlanceView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlanceView;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlanceView;->mAniEffectBackGround:Landroid/view/animation/Animation;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlanceView;->mAniClock:Landroid/view/animation/Animation;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlanceView;->mAniContent:Landroid/view/animation/Animation;

    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public onClockVisibilityChanged()V
    .locals 0

    .prologue
    return-void
.end method

.method public onDeviceProvisioned()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->TAG:Ljava/lang/String;

    const-string v1, "onDeviceProvisioned()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x4

    const-string v0, "TAG"

    const-string v1, "GlanceView : GlanceView onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mClockWidgetLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mClockWidgetLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mContentLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mContentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mEffectBackGround:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mEffectBackGround:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mMissedCallRelativeLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mMissedCallRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mNewMessageRelativeLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mNewMessageRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mBatteryChargingRelativeLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mBatteryChargingRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mAlarmRelativeLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mAlarmRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mNowMusicRelativeLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mNowMusicRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_7
    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 2
    .parameter "phoneState"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->TAG:Ljava/lang/String;

    const-string v1, "onPhoneStateChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .locals 3
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRefreshBatteryInfo() showPatteryInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pluggedIn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " batteryLevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "plmn"
    .parameter "spn"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->TAG:Ljava/lang/String;

    const-string v1, "onRefreshCarrierInfo()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 2
    .parameter "plmn"
    .parameter "spn"
    .parameter "subscription"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->TAG:Ljava/lang/String;

    const-string v1, "onRefreshCarrierInfo()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    const-string v0, "TAG"

    const-string v1, "GlanceView : GlanceView onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlanceView;->getMissedEvent()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlanceView;->getBatteryLevel()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.music.musicservicecommand.checkplaystatus"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/GlanceView;->sendBroadcastAfterBooting(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlanceView;->initViews()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlanceView;->startAnimation()V

    return-void
.end method

.method public onRingerModeChanged(I)V
    .locals 2
    .parameter "state"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->TAG:Ljava/lang/String;

    const-string v1, "onRingerModeChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTimeChanged()V
    .locals 0

    .prologue
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public sendBroadcastAfterBooting(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlanceView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isBootCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlanceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
