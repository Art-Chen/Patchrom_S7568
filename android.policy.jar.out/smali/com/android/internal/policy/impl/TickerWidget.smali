.class public Lcom/android/internal/policy/impl/TickerWidget;
.super Landroid/widget/FrameLayout;
.source "TickerWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/TickerWidget$15;,
        Lcom/android/internal/policy/impl/TickerWidget$TickerType;
    }
.end annotation


# static fields
.field public static final DBG:Z = true

.field public static final DBG_FB:Z = true

.field private static final TAG:Ljava/lang/String; = "TickerWidget"

.field private static final TICKER_FAILED_MSG_SHOWING_TIME:I = 0x7d0

.field private static final TICKER_REFRESH_WAITING_TIME:I = 0xea60


# instance fields
.field private final MSG_SHOW_FACEBOOK_REFRESH_FAILED:I

.field private final MSG_SHOW_NEWS_REFRESH_FAILED:I

.field private final MSG_SHOW_PREVIOUS_FACEBOOK_DATA:I

.field private final MSG_SHOW_PREVIOUS_NEWS_DATA:I

.field private final MSG_SHOW_PREVIOUS_STOCK_DATA:I

.field private final MSG_SHOW_STOCK_REFRESH_FAILED:I

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mContext:Landroid/content/Context;

.field private mCurrentFacebookData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/TickerUtil$FacebookData;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentNewsData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/TickerUtil$NewsData;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentStockData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/TickerUtil$StockItem;",
            ">;"
        }
    .end annotation
.end field

.field private mFacebookOnClickListener:Landroid/view/View$OnClickListener;

.field protected mFacebookRefreshing:Z

.field private mHandleArrowImage:Landroid/widget/ImageView;

.field private mHandleLogoImage:Landroid/widget/ImageView;

.field private mHandleProgressBar:Landroid/widget/ProgressBar;

.field private mHandleRefreshImage:Landroid/widget/ImageView;

.field private mHandleUpdateDate:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mHorizontalScrollView:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

.field private mIsDataReady:Z

.field private mIsFacebookInstalled:Z

.field private mIsFacebookLogin:Z

.field private mIsFacebookRefreshFailed:Z

.field private mIsNewsRefreshFailed:Z

.field private mIsStockRefreshFailed:Z

.field private mNewsOnClickListener:Landroid/view/View$OnClickListener;

.field protected mNewsRefreshing:Z

.field private mOrientation:I

.field private mStockOnClickListener:Landroid/view/View$OnClickListener;

.field private mStockRefreshing:Z

.field mTickerBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mTickerCallback:Lcom/android/internal/policy/impl/TickerCallback;

.field private mTickerSlidingDrawer:Lcom/android/internal/policy/impl/TickerSlidingDrawer;

.field private mTickerSlidingSpeed:Lcom/android/internal/policy/impl/TickerUtil$TickerSlidingSpeed;

.field private mTickerType:Lcom/android/internal/policy/impl/TickerWidget$TickerType;

.field private mUnlockWidget:Lcom/android/internal/policy/impl/CircleUnlockRipple;

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private mVerticalScrollView:Lcom/android/internal/policy/impl/TickerScrollView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/policy/impl/CircleUnlockWidget;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 5
    .parameter "context"
    .parameter "configuration"
    .parameter "callback"
    .parameter "unlockWidget"
    .parameter "updateMonitor"

    .prologue
    const/4 v4, 0x1

    .line 239
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 83
    const/16 v2, 0x12c0

    iput v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->MSG_SHOW_NEWS_REFRESH_FAILED:I

    .line 84
    const/16 v2, 0x12c1

    iput v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->MSG_SHOW_STOCK_REFRESH_FAILED:I

    .line 85
    const/16 v2, 0x12c2

    iput v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->MSG_SHOW_PREVIOUS_NEWS_DATA:I

    .line 86
    const/16 v2, 0x12c3

    iput v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->MSG_SHOW_PREVIOUS_STOCK_DATA:I

    .line 87
    const/16 v2, 0x12c4

    iput v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->MSG_SHOW_FACEBOOK_REFRESH_FAILED:I

    .line 88
    const/16 v2, 0x12c5

    iput v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->MSG_SHOW_PREVIOUS_FACEBOOK_DATA:I

    .line 93
    new-instance v2, Lcom/android/internal/policy/impl/TickerWidget$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/TickerWidget$1;-><init>(Lcom/android/internal/policy/impl/TickerWidget;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;

    .line 127
    new-instance v2, Lcom/android/internal/policy/impl/TickerWidget$2;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/TickerWidget$2;-><init>(Lcom/android/internal/policy/impl/TickerWidget;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 240
    iput-object p1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    .line 241
    iput-object p3, p0, Lcom/android/internal/policy/impl/TickerWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 242
    iput-object p5, p0, Lcom/android/internal/policy/impl/TickerWidget;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 243
    if-eqz p4, :cond_0

    .line 244
    check-cast p4, Lcom/android/internal/policy/impl/CircleUnlockRipple;

    .end local p4
    iput-object p4, p0, Lcom/android/internal/policy/impl/TickerWidget;->mUnlockWidget:Lcom/android/internal/policy/impl/CircleUnlockRipple;

    .line 246
    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/TickerWidget;->setFocusable(Z)V

    .line 247
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/TickerWidget;->setFocusableInTouchMode(Z)V

    .line 248
    const/high16 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/TickerWidget;->setDescendantFocusability(I)V

    .line 250
    iget v2, p2, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mOrientation:I

    .line 252
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 253
    .local v0, filter:Landroid/content/IntentFilter;
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isCaMobile()Z

    move-result v2

    if-nez v2, :cond_1

    .line 254
    const-string v2, "com.sec.android.daemonapp.stockclock.ACTION_UPDATE_STOCK_DATA_SYNC"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 256
    :cond_1
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isSinaEnable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 257
    const-string v2, "com.sec.android.daemonapp.ap.sinanews.intent.action.SNEWS_DATE_SYNC"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 262
    :goto_0
    const-string v2, "com.android.internal.policy.impl.intent.action.ACTION_FACEBOOK_DATE_UPDATED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 263
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 265
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 266
    .local v1, inflater:Landroid/view/LayoutInflater;
    iget v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mOrientation:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    .line 267
    const v2, 0x1090066

    invoke-virtual {v1, v2, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 271
    :goto_1
    const v2, 0x1020317

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/TickerWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/TickerSlidingDrawer;

    iput-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/TickerSlidingDrawer;

    .line 272
    const v2, 0x1020320

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/TickerWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    .line 273
    const v2, 0x1020318

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/TickerWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/TickerScrollView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/TickerScrollView;

    .line 275
    const v2, 0x102031a

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/TickerWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleLogoImage:Landroid/widget/ImageView;

    .line 276
    const v2, 0x102031b

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/TickerWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleArrowImage:Landroid/widget/ImageView;

    .line 277
    const v2, 0x102031f

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/TickerWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleRefreshImage:Landroid/widget/ImageView;

    .line 278
    const v2, 0x102031e

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/TickerWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleProgressBar:Landroid/widget/ProgressBar;

    .line 279
    const v2, 0x102031c

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/TickerWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleUpdateDate:Landroid/widget/TextView;

    .line 281
    new-instance v2, Lcom/android/internal/policy/impl/TickerWidget$3;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/TickerWidget$3;-><init>(Lcom/android/internal/policy/impl/TickerWidget;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mStockOnClickListener:Landroid/view/View$OnClickListener;

    .line 300
    new-instance v2, Lcom/android/internal/policy/impl/TickerWidget$4;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/TickerWidget$4;-><init>(Lcom/android/internal/policy/impl/TickerWidget;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mNewsOnClickListener:Landroid/view/View$OnClickListener;

    .line 319
    new-instance v2, Lcom/android/internal/policy/impl/TickerWidget$5;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/TickerWidget$5;-><init>(Lcom/android/internal/policy/impl/TickerWidget;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mFacebookOnClickListener:Landroid/view/View$OnClickListener;

    .line 344
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/TickerSlidingDrawer;

    new-instance v3, Lcom/android/internal/policy/impl/TickerWidget$6;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/TickerWidget$6;-><init>(Lcom/android/internal/policy/impl/TickerWidget;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->setOnDrawerScrollListener(Lcom/android/internal/policy/impl/TickerSlidingDrawer$OnDrawerScrollListener;)V

    .line 372
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/TickerSlidingDrawer;

    new-instance v3, Lcom/android/internal/policy/impl/TickerWidget$7;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/TickerWidget$7;-><init>(Lcom/android/internal/policy/impl/TickerWidget;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->setOnDrawerOpenListener(Lcom/android/internal/policy/impl/TickerSlidingDrawer$OnDrawerOpenListener;)V

    .line 396
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/TickerSlidingDrawer;

    new-instance v3, Lcom/android/internal/policy/impl/TickerWidget$8;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/TickerWidget$8;-><init>(Lcom/android/internal/policy/impl/TickerWidget;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->setOnDrawerCloseListener(Lcom/android/internal/policy/impl/TickerSlidingDrawer$OnDrawerCloseListener;)V

    .line 416
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleRefreshImage:Landroid/widget/ImageView;

    new-instance v3, Lcom/android/internal/policy/impl/TickerWidget$9;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/TickerWidget$9;-><init>(Lcom/android/internal/policy/impl/TickerWidget;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 429
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleProgressBar:Landroid/widget/ProgressBar;

    new-instance v3, Lcom/android/internal/policy/impl/TickerWidget$10;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/TickerWidget$10;-><init>(Lcom/android/internal/policy/impl/TickerWidget;)V

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 436
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/TickerSlidingDrawer;

    new-instance v3, Lcom/android/internal/policy/impl/TickerWidget$11;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/TickerWidget$11;-><init>(Lcom/android/internal/policy/impl/TickerWidget;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 446
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    new-instance v3, Lcom/android/internal/policy/impl/TickerWidget$12;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/TickerWidget$12;-><init>(Lcom/android/internal/policy/impl/TickerWidget;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 454
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/TickerScrollView;

    new-instance v3, Lcom/android/internal/policy/impl/TickerWidget$13;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/TickerWidget$13;-><init>(Lcom/android/internal/policy/impl/TickerWidget;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/TickerScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 463
    new-instance v2, Lcom/android/internal/policy/impl/TickerWidget$14;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/TickerWidget$14;-><init>(Lcom/android/internal/policy/impl/TickerWidget;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerCallback:Lcom/android/internal/policy/impl/TickerCallback;

    .line 483
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/TickerSlidingDrawer;

    iget-object v3, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerCallback:Lcom/android/internal/policy/impl/TickerCallback;

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->setTickerCallback(Lcom/android/internal/policy/impl/TickerCallback;)V

    .line 484
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerCallback:Lcom/android/internal/policy/impl/TickerCallback;

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->setTickerCallback(Lcom/android/internal/policy/impl/TickerCallback;)V

    .line 485
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/TickerScrollView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerCallback:Lcom/android/internal/policy/impl/TickerCallback;

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/TickerScrollView;->setTickerCallback(Lcom/android/internal/policy/impl/TickerCallback;)V

    .line 487
    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerWidget;->getSettingProperies()V

    .line 489
    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerWidget;->updateTickerData()V

    .line 491
    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerWidget;->setSlidingSpeed()V

    .line 492
    return-void

    .line 260
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    :cond_2
    const-string v2, "com.sec.android.daemonapp.ap.yahoonews.intent.action.YNEWS_DATE_SYNC"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 269
    .restart local v1       #inflater:Landroid/view/LayoutInflater;
    :cond_3
    const v2, 0x1090069

    invoke-virtual {v1, v2, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_1
.end method

.method private UpdateData(Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;)V
    .locals 14
    .parameter "status"

    .prologue
    const v11, 0x1040640

    const/16 v13, 0x8

    const/4 v12, 0x0

    .line 760
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    const-string v10, "connectivity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 761
    .local v1, connectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 763
    .local v0, activeNetworkInfo:Landroid/net/NetworkInfo;
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerType:Lcom/android/internal/policy/impl/TickerWidget$TickerType;

    sget-object v10, Lcom/android/internal/policy/impl/TickerWidget$TickerType;->facebook:Lcom/android/internal/policy/impl/TickerWidget$TickerType;

    if-ne v9, v10, :cond_0

    .line 764
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsFacebookInstalled:Z

    if-nez v9, :cond_2

    .line 765
    iput-boolean v12, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsDataReady:Z

    .line 766
    sget-object p1, Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;->FacebookNoInstalled:Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;

    .line 774
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 775
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsDataReady:Z

    if-nez v9, :cond_1

    .line 776
    sget-object p1, Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;->NetworkUnavailable:Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;

    .line 784
    :cond_1
    :goto_1
    sget-object v9, Lcom/android/internal/policy/impl/TickerWidget$15;->$SwitchMap$com$android$internal$policy$impl$TickerUtil$TickerStatus:[I

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 836
    :goto_2
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsDataReady:Z

    if-eqz v9, :cond_6

    .line 837
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleUpdateDate:Landroid/widget/TextView;

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 847
    :goto_3
    return-void

    .line 768
    :cond_2
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsFacebookLogin:Z

    if-nez v9, :cond_0

    .line 769
    iput-boolean v12, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsDataReady:Z

    .line 770
    sget-object p1, Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;->FacebookNoLogin:Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;

    goto :goto_0

    .line 778
    :cond_3
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v9

    if-nez v9, :cond_1

    .line 779
    :cond_4
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsDataReady:Z

    if-nez v9, :cond_1

    .line 780
    sget-object p1, Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;->NetworkUnavailable:Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;

    goto :goto_1

    .line 786
    :pswitch_0
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    iget-object v10, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/internal/policy/impl/TickerWidget;->mCurrentNewsData:Ljava/util/ArrayList;

    invoke-virtual {v9, v10, v11}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->initNewsData(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 787
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/TickerScrollView;

    iget-object v10, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/internal/policy/impl/TickerWidget;->mCurrentNewsData:Ljava/util/ArrayList;

    invoke-virtual {v9, v10, v11}, Lcom/android/internal/policy/impl/TickerScrollView;->initNewsData(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 788
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleUpdateDate:Landroid/widget/TextView;

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 789
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleUpdateDate:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/internal/policy/impl/TickerUtil;->getNewsUpdateDate()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 792
    :pswitch_1
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 793
    .local v7, newsNoDataMessage:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/TickerScrollView;

    iget-object v10, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v10, v7}, Lcom/android/internal/policy/impl/TickerScrollView;->setErrorMessageWithoutButton(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 796
    .end local v7           #newsNoDataMessage:Ljava/lang/String;
    :pswitch_2
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    const v10, 0x1040642

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 797
    .local v6, newsNoCountry:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/TickerScrollView;

    iget-object v10, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    sget-object v11, Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;->NewsNoCountry:Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;

    invoke-virtual {v9, v10, v6, v11}, Lcom/android/internal/policy/impl/TickerScrollView;->setErrorMessageWithButton(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;)V

    goto :goto_2

    .line 800
    .end local v6           #newsNoCountry:Ljava/lang/String;
    :pswitch_3
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    iget-object v10, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/internal/policy/impl/TickerWidget;->mCurrentStockData:Ljava/util/ArrayList;

    invoke-virtual {v9, v10, v11}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->initStockData(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 801
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/TickerScrollView;

    iget-object v10, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/internal/policy/impl/TickerWidget;->mCurrentStockData:Ljava/util/ArrayList;

    invoke-virtual {v9, v10, v11}, Lcom/android/internal/policy/impl/TickerScrollView;->initStockData(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 802
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleUpdateDate:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/internal/policy/impl/TickerUtil;->getStockUpdateDate()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 805
    :pswitch_4
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    const v10, 0x1040643

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 806
    .local v8, stockNoItem:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/TickerScrollView;

    iget-object v10, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    sget-object v11, Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;->StockNoItem:Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;

    invoke-virtual {v9, v10, v8, v11}, Lcom/android/internal/policy/impl/TickerScrollView;->setErrorMessageWithButton(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;)V

    goto/16 :goto_2

    .line 809
    .end local v8           #stockNoItem:Ljava/lang/String;
    :pswitch_5
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    iget-object v10, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/internal/policy/impl/TickerWidget;->mCurrentFacebookData:Ljava/util/ArrayList;

    invoke-virtual {v9, v10, v11}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->initFacebookData(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 810
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/TickerScrollView;

    iget-object v10, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/internal/policy/impl/TickerWidget;->mCurrentFacebookData:Ljava/util/ArrayList;

    invoke-virtual {v9, v10, v11}, Lcom/android/internal/policy/impl/TickerScrollView;->initFacebookData(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 811
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleUpdateDate:Landroid/widget/TextView;

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 812
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleUpdateDate:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/internal/policy/impl/TickerUtil;->getFacebookUpdateDate()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 815
    :pswitch_6
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 816
    .local v2, facebookNoDataMessage:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/TickerScrollView;

    iget-object v10, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v10, v2}, Lcom/android/internal/policy/impl/TickerScrollView;->setErrorMessageWithoutButton(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 819
    .end local v2           #facebookNoDataMessage:Ljava/lang/String;
    :pswitch_7
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    const v10, 0x104064a

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 820
    .local v5, messageLogin:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/TickerScrollView;

    iget-object v10, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    sget-object v11, Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;->FacebookNoLogin:Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;

    invoke-virtual {v9, v10, v5, v11}, Lcom/android/internal/policy/impl/TickerScrollView;->setErrorMessageWithButton(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;)V

    goto/16 :goto_2

    .line 823
    .end local v5           #messageLogin:Ljava/lang/String;
    :pswitch_8
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    const v10, 0x104064b

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 824
    .local v4, messageInstalled:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/TickerScrollView;

    iget-object v10, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    sget-object v11, Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;->FacebookNoInstalled:Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;

    invoke-virtual {v9, v10, v4, v11}, Lcom/android/internal/policy/impl/TickerScrollView;->setErrorMessageWithButton(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;)V

    goto/16 :goto_2

    .line 827
    .end local v4           #messageInstalled:Ljava/lang/String;
    :pswitch_9
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    const v10, 0x1040644

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 828
    .local v3, message:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerType:Lcom/android/internal/policy/impl/TickerWidget$TickerType;

    sget-object v10, Lcom/android/internal/policy/impl/TickerWidget$TickerType;->facebook:Lcom/android/internal/policy/impl/TickerWidget$TickerType;

    if-ne v9, v10, :cond_5

    .line 829
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    const v10, 0x1040649

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 831
    :cond_5
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/TickerScrollView;

    iget-object v10, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    sget-object v11, Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;->NetworkUnavailable:Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;

    invoke-virtual {v9, v10, v3, v11}, Lcom/android/internal/policy/impl/TickerScrollView;->setErrorMessageWithButton(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;)V

    goto/16 :goto_2

    .line 839
    .end local v3           #message:Ljava/lang/String;
    :cond_6
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleUpdateDate:Landroid/widget/TextView;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 840
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    invoke-virtual {v9, v13}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->setVisibility(I)V

    .line 841
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleRefreshImage:Landroid/widget/ImageView;

    invoke-virtual {v9, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 842
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v9, v13}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 843
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/TickerSlidingDrawer;

    invoke-virtual {v9, v12}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->setBottomOffset(I)V

    .line 844
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/TickerSlidingDrawer;

    invoke-virtual {v9}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->invalidate()V

    goto/16 :goto_3

    .line 784
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/TickerWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerWidget;->showNewsRefreshFailed()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/TickerWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerWidget;->showStockRefreshFailed()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/TickerWidget;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleRefreshImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/TickerWidget;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/TickerWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mStockRefreshing:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/internal/policy/impl/TickerWidget;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mStockRefreshing:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/TickerWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsNewsRefreshFailed:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/TickerWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsFacebookRefreshFailed:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/TickerWidget;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/TickerWidget;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/TickerWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerWidget;->updateFacebookInstalled()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/TickerWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsFacebookInstalled:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/TickerWidget;)Lcom/android/internal/policy/impl/TickerScrollView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/TickerScrollView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/TickerWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerWidget;->showPreviousNewsData()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/TickerWidget;)Lcom/android/internal/policy/impl/TickerHorizontalScrollView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/TickerWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsDataReady:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/TickerWidget;)Lcom/android/internal/policy/impl/CircleUnlockRipple;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mUnlockWidget:Lcom/android/internal/policy/impl/CircleUnlockRipple;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/TickerWidget;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleArrowImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/TickerWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerWidget;->requestTickerDataToDemon()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/TickerWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerWidget;->showPreviousStockData()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/TickerWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerWidget;->showFacebookRefreshFailed()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/TickerWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerWidget;->showPreviousFacebookData()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/TickerWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsStockRefreshFailed:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/TickerWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerWidget;->updateTickerData()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/TickerWidget;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/TickerWidget;)Lcom/android/internal/policy/impl/TickerSlidingDrawer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/TickerSlidingDrawer;

    return-object v0
.end method

.method private getSettingProperies()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 851
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "contents_type"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 852
    .local v1, tickertype:I
    packed-switch v1, :pswitch_data_0

    .line 867
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sliding_speed"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 868
    .local v0, tickerSpeed:I
    packed-switch v0, :pswitch_data_1

    .line 881
    :goto_1
    return-void

    .line 854
    .end local v0           #tickerSpeed:I
    :pswitch_0
    sget-object v2, Lcom/android/internal/policy/impl/TickerWidget$TickerType;->news:Lcom/android/internal/policy/impl/TickerWidget$TickerType;

    iput-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerType:Lcom/android/internal/policy/impl/TickerWidget$TickerType;

    goto :goto_0

    .line 857
    :pswitch_1
    sget-object v2, Lcom/android/internal/policy/impl/TickerWidget$TickerType;->stock:Lcom/android/internal/policy/impl/TickerWidget$TickerType;

    iput-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerType:Lcom/android/internal/policy/impl/TickerWidget$TickerType;

    goto :goto_0

    .line 860
    :pswitch_2
    sget-object v2, Lcom/android/internal/policy/impl/TickerWidget$TickerType;->facebook:Lcom/android/internal/policy/impl/TickerWidget$TickerType;

    iput-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerType:Lcom/android/internal/policy/impl/TickerWidget$TickerType;

    goto :goto_0

    .line 870
    .restart local v0       #tickerSpeed:I
    :pswitch_3
    sget-object v2, Lcom/android/internal/policy/impl/TickerUtil$TickerSlidingSpeed;->slow:Lcom/android/internal/policy/impl/TickerUtil$TickerSlidingSpeed;

    iput-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerSlidingSpeed:Lcom/android/internal/policy/impl/TickerUtil$TickerSlidingSpeed;

    goto :goto_1

    .line 873
    :pswitch_4
    sget-object v2, Lcom/android/internal/policy/impl/TickerUtil$TickerSlidingSpeed;->normal:Lcom/android/internal/policy/impl/TickerUtil$TickerSlidingSpeed;

    iput-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerSlidingSpeed:Lcom/android/internal/policy/impl/TickerUtil$TickerSlidingSpeed;

    goto :goto_1

    .line 876
    :pswitch_5
    sget-object v2, Lcom/android/internal/policy/impl/TickerUtil$TickerSlidingSpeed;->fast:Lcom/android/internal/policy/impl/TickerUtil$TickerSlidingSpeed;

    iput-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerSlidingSpeed:Lcom/android/internal/policy/impl/TickerUtil$TickerSlidingSpeed;

    goto :goto_1

    .line 852
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 868
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private requestFacebookDataToDemon()V
    .locals 2

    .prologue
    .line 948
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.policy.impl.intent.action.ACTION_FACEBOOK_DATE_REQUEST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 949
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 951
    return-void
.end method

.method private requestNewsDataToDemon()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 954
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isSinaEnable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 955
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sn_daemon_service_key_service_status"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    .line 956
    const-string v2, "TickerWidget"

    const-string v3, "Service is off"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    :goto_0
    return-void

    .line 958
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.widgetapp.ap.sinanews.intent.ACTION_GET_NEWSLIST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 959
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.daemonapp.ap.sinanews"

    const-string v3, "com.sec.android.daemonapp.ap.sinanews.DaemonReceiver"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    .local v0, component:Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 961
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 964
    .end local v0           #component:Landroid/content/ComponentName;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "yh_daemon_service_key_service_status"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_2

    .line 965
    const-string v2, "TickerWidget"

    const-string v3, "Service is off"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 967
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.daemonapp.ap.yahoonews.intent.action.refresh"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 969
    .restart local v1       #intent:Landroid/content/Intent;
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isKoreaFeature()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 970
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.daemonapp.ap.yonhapnews"

    const-string v3, "com.sec.android.daemonapp.ap.yonhapnews.DaemonReceiver"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    .restart local v0       #component:Landroid/content/ComponentName;
    :goto_1
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 975
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 972
    .end local v0           #component:Landroid/content/ComponentName;
    :cond_3
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.daemonapp.ap.yahoonews"

    const-string v3, "com.sec.android.daemonapp.ap.yahoonews.DaemonReceiver"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0       #component:Landroid/content/ComponentName;
    goto :goto_1
.end method

.method private requestStockDataToDemon()V
    .locals 8

    .prologue
    .line 981
    new-instance v4, Landroid/content/Intent;

    const-string v6, "com.sec.android.daemonapp.stockclock.action.CURRENT_STOCK_DATA"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 982
    .local v4, intent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 986
    .local v5, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v6, "com.sec.android.daemonapp.ap.yahoostock.stockclock"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 987
    const-string v6, "TickerWidget"

    const-string v7, "Yahoo daemon  installed !!!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    new-instance v0, Landroid/content/ComponentName;

    const-string v6, "com.sec.android.daemonapp.ap.yahoostock.stockclock"

    const-string v7, "com.sec.android.daemonapp.ap.yahoostock.stockclock.activity.Stockclock_DaemonService"

    invoke-direct {v0, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    .local v0, component:Landroid/content/ComponentName;
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 991
    iget-object v6, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1017
    .end local v0           #component:Landroid/content/ComponentName;
    :goto_0
    return-void

    .line 992
    :catch_0
    move-exception v1

    .line 993
    .local v1, e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "TickerWidget"

    const-string v7, "[NameNotFoundException] Yahoo daemon not installed !!!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    :try_start_1
    const-string v6, "com.sec.android.daemonapp.stockclock"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 997
    const-string v6, "TickerWidget"

    const-string v7, "Edaily  daemon  installed !!!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    new-instance v0, Landroid/content/ComponentName;

    const-string v6, "com.sec.android.daemonapp.stockclock"

    const-string v7, "com.sec.android.daemonapp.stockclock.activity.Stockclock_DaemonService"

    invoke-direct {v0, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    .restart local v0       #component:Landroid/content/ComponentName;
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1001
    iget-object v6, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1002
    .end local v0           #component:Landroid/content/ComponentName;
    :catch_1
    move-exception v2

    .line 1003
    .local v2, e2:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "TickerWidget"

    const-string v7, "[NameNotFoundException] Edaily  daemon not installed !!!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    :try_start_2
    const-string v6, "com.sec.android.daemonapp.ap.sinastock.stockclock"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 1007
    const-string v6, "TickerWidget"

    const-string v7, "Sina  daemon  installed !!!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    new-instance v0, Landroid/content/ComponentName;

    const-string v6, "com.sec.android.daemonapp.ap.sinastock.stockclock"

    const-string v7, "com.sec.android.daemonapp.ap.sinastock.stockclock.activity.Stockclock_DaemonService"

    invoke-direct {v0, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    .restart local v0       #component:Landroid/content/ComponentName;
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1011
    iget-object v6, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 1012
    .end local v0           #component:Landroid/content/ComponentName;
    :catch_2
    move-exception v3

    .line 1013
    .local v3, e3:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "TickerWidget"

    const-string v7, "[NameNotFoundException] Sina daemon not installed !!!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private requestTickerDataToDemon()V
    .locals 8

    .prologue
    const/16 v7, 0x12c4

    const/16 v6, 0x12c1

    const/16 v5, 0x12c0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 904
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerType:Lcom/android/internal/policy/impl/TickerWidget$TickerType;

    sget-object v2, Lcom/android/internal/policy/impl/TickerWidget$TickerType;->news:Lcom/android/internal/policy/impl/TickerWidget$TickerType;

    if-ne v1, v2, :cond_2

    .line 906
    const-string v1, "TickerWidget"

    const-string v2, "Request news data update!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerWidget;->requestNewsDataToDemon()V

    .line 908
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/TickerWidget;->mNewsRefreshing:Z

    .line 909
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsNewsRefreshFailed:Z

    .line 912
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 913
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 914
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 915
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 943
    .end local v0           #msg:Landroid/os/Message;
    :cond_1
    :goto_0
    return-void

    .line 917
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerType:Lcom/android/internal/policy/impl/TickerWidget$TickerType;

    sget-object v2, Lcom/android/internal/policy/impl/TickerWidget$TickerType;->stock:Lcom/android/internal/policy/impl/TickerWidget$TickerType;

    if-ne v1, v2, :cond_4

    .line 919
    const-string v1, "TickerWidget"

    const-string v2, "Request stock data update!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerWidget;->requestStockDataToDemon()V

    .line 921
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/TickerWidget;->mStockRefreshing:Z

    .line 922
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsStockRefreshFailed:Z

    .line 925
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 926
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 927
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 928
    .restart local v0       #msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 929
    .end local v0           #msg:Landroid/os/Message;
    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerType:Lcom/android/internal/policy/impl/TickerWidget$TickerType;

    sget-object v2, Lcom/android/internal/policy/impl/TickerWidget$TickerType;->facebook:Lcom/android/internal/policy/impl/TickerWidget$TickerType;

    if-ne v1, v2, :cond_1

    .line 931
    const-string v1, "TickerWidget"

    const-string v2, "Request facebook data update!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerWidget;->requestFacebookDataToDemon()V

    .line 933
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/TickerWidget;->mFacebookRefreshing:Z

    .line 934
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsFacebookRefreshFailed:Z

    .line 937
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 938
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 939
    :cond_5
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 940
    .restart local v0       #msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private setSlidingSpeed()V
    .locals 2

    .prologue
    .line 622
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerSlidingSpeed:Lcom/android/internal/policy/impl/TickerUtil$TickerSlidingSpeed;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->setSlidingSpeed(Lcom/android/internal/policy/impl/TickerUtil$TickerSlidingSpeed;)V

    .line 623
    return-void
.end method

.method private showFacebookRefreshFailed()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/16 v4, 0x12c5

    .line 552
    const-string v2, "TickerWidget"

    const-string v3, "Facebook Update was failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleRefreshImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 555
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 557
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsFacebookRefreshFailed:Z

    .line 559
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    const v3, 0x1040641

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 560
    .local v0, message:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->setErrorMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 561
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/TickerScrollView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/policy/impl/TickerScrollView;->setErrorMessageWithoutButton(Landroid/content/Context;Ljava/lang/String;)V

    .line 564
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 565
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 566
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 567
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 568
    return-void
.end method

.method private showNewsRefreshFailed()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/16 v4, 0x12c2

    .line 571
    const-string v2, "TickerWidget"

    const-string v3, "News Update was failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleRefreshImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 574
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 576
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsNewsRefreshFailed:Z

    .line 578
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    const v3, 0x1040641

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 579
    .local v0, message:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->setErrorMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 580
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/TickerScrollView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/policy/impl/TickerScrollView;->setErrorMessageWithoutButton(Landroid/content/Context;Ljava/lang/String;)V

    .line 583
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 584
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 585
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 586
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 587
    return-void
.end method

.method private showPreviousFacebookData()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 508
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mCurrentFacebookData:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mCurrentFacebookData:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->initFacebookData(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 510
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/TickerScrollView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mCurrentFacebookData:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/TickerScrollView;->initFacebookData(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 512
    :cond_0
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/TickerWidget;->mFacebookRefreshing:Z

    .line 514
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/TickerSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 515
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleRefreshImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 516
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 517
    return-void
.end method

.method private showPreviousNewsData()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 520
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mCurrentNewsData:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mCurrentNewsData:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->initNewsData(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 522
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/TickerScrollView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mCurrentNewsData:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/TickerScrollView;->initNewsData(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 524
    :cond_0
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/TickerWidget;->mNewsRefreshing:Z

    .line 526
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/TickerSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 527
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleRefreshImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 528
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 529
    return-void
.end method

.method private showPreviousStockData()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 495
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mCurrentStockData:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mCurrentStockData:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->initStockData(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 497
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/TickerScrollView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mCurrentStockData:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/TickerScrollView;->initStockData(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 499
    :cond_0
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/TickerWidget;->mStockRefreshing:Z

    .line 501
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/TickerSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 502
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleRefreshImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 503
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 505
    return-void
.end method

.method private showStockRefreshFailed()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/16 v4, 0x12c3

    .line 532
    const-string v2, "TickerWidget"

    const-string v3, "Stock Update was failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleRefreshImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 535
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 537
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsStockRefreshFailed:Z

    .line 539
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    const v3, 0x1040641

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 540
    .local v0, message:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->setErrorMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 541
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/TickerScrollView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/policy/impl/TickerScrollView;->setErrorMessageWithoutButton(Landroid/content/Context;Ljava/lang/String;)V

    .line 544
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 545
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 546
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 547
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 549
    return-void
.end method

.method private updateFacebookData()V
    .locals 4

    .prologue
    .line 670
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleLogoImage:Landroid/widget/ImageView;

    const v3, 0x108048e

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 671
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleLogoImage:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/TickerWidget;->mFacebookOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 674
    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerWidget;->updateFacebookInstalled()V

    .line 677
    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerWidget;->updateFacebookLoginChecked()V

    .line 680
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/policy/impl/TickerUtil;->getFacebookData(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 682
    .local v0, facebookArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/TickerUtil$FacebookData;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 683
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsDataReady:Z

    .line 684
    iput-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mCurrentFacebookData:Ljava/util/ArrayList;

    .line 685
    sget-object v2, Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;->FacebookNormal:Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/TickerWidget;->UpdateData(Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;)V

    .line 698
    :goto_0
    return-void

    .line 687
    :cond_0
    const-string v2, "TickerWidget"

    const-string v3, "There is no data"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.internal.policy.impl.intent.action.ACTION_FACEBOOK_DATE_REQUEST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 692
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 695
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsDataReady:Z

    .line 696
    sget-object v2, Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;->FacebookNoData:Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/TickerWidget;->UpdateData(Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;)V

    goto :goto_0
.end method

.method private updateFacebookInstalled()V
    .locals 7

    .prologue
    .line 636
    iget-object v5, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 638
    .local v4, packagemanager:Landroid/content/pm/PackageManager;
    const/16 v5, 0x2040

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 642
    .local v0, allPackageInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 643
    .local v2, packageInfo:Landroid/content/pm/PackageInfo;
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 644
    .local v3, packageName:Ljava/lang/String;
    const-string v5, "com.facebook.katana"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 645
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsFacebookInstalled:Z

    .line 646
    const-string v5, "TickerWidget"

    const-string v6, "isFacebookInstalled() : true"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    .end local v2           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v3           #packageName:Ljava/lang/String;
    :goto_0
    return-void

    .line 650
    :cond_1
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsFacebookInstalled:Z

    .line 651
    const-string v5, "TickerWidget"

    const-string v6, "isFacebookInstalled() : false"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateFacebookLoginChecked()V
    .locals 3

    .prologue
    .line 655
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v2, "com.facebook.auth.login"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 657
    .local v0, accounts:[Landroid/accounts/Account;
    array-length v1, v0

    if-lez v1, :cond_0

    .line 659
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsFacebookLogin:Z

    .line 660
    const-string v1, "TickerWidget"

    const-string v2, "login successful"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    :goto_0
    return-void

    .line 663
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsFacebookLogin:Z

    .line 664
    const-string v1, "TickerWidget"

    const-string v2, "updateFacebookLoginChecked() : login failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateNewsData()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 703
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isKoreaFeature()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 704
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleLogoImage:Landroid/widget/ImageView;

    const v2, 0x1080488

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 713
    :goto_0
    const/4 v0, 0x0

    .line 714
    .local v0, newsArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/TickerUtil$NewsData;>;"
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isBootCompleted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 715
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/TickerUtil;->getNewsData(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 717
    :cond_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_4

    .line 718
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsDataReady:Z

    .line 719
    iput-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mCurrentNewsData:Ljava/util/ArrayList;

    .line 720
    sget-object v1, Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;->NewsNormal:Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/TickerWidget;->UpdateData(Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;)V

    .line 732
    :cond_1
    :goto_1
    return-void

    .line 705
    .end local v0           #newsArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/TickerUtil$NewsData;>;"
    :cond_2
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isSinaEnable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 706
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleLogoImage:Landroid/widget/ImageView;

    const v2, 0x1080486

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 708
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleLogoImage:Landroid/widget/ImageView;

    const v2, 0x1080487

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 709
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleLogoImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mNewsOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 721
    .restart local v0       #newsArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/TickerUtil$NewsData;>;"
    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_5

    .line 722
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsDataReady:Z

    .line 723
    sget-object v1, Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;->NewsNoData:Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/TickerWidget;->UpdateData(Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;)V

    goto :goto_1

    .line 724
    :cond_5
    if-nez v0, :cond_1

    .line 725
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsDataReady:Z

    .line 726
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isKoreaFeature()Z

    move-result v1

    if-nez v1, :cond_1

    .line 729
    sget-object v1, Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;->NewsNoCountry:Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/TickerWidget;->UpdateData(Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;)V

    goto :goto_1
.end method

.method private updateStockData()V
    .locals 3

    .prologue
    .line 737
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isKoreaFeature()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 738
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleLogoImage:Landroid/widget/ImageView;

    const v2, 0x108048d

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 747
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/TickerUtil;->getStockData(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 748
    .local v0, stockArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/TickerUtil$StockItem;>;"
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_2

    .line 749
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsDataReady:Z

    .line 750
    iput-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mCurrentStockData:Ljava/util/ArrayList;

    .line 751
    sget-object v1, Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;->StockNormal:Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/TickerWidget;->UpdateData(Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;)V

    .line 756
    :goto_1
    return-void

    .line 739
    .end local v0           #stockArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/TickerUtil$StockItem;>;"
    :cond_0
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isSinaEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 740
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleLogoImage:Landroid/widget/ImageView;

    const v2, 0x108048f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 742
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleLogoImage:Landroid/widget/ImageView;

    const v2, 0x1080493

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 743
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleLogoImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mStockOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 753
    .restart local v0       #stockArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/TickerUtil$StockItem;>;"
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsDataReady:Z

    .line 754
    sget-object v1, Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;->StockNoItem:Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/TickerWidget;->UpdateData(Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;)V

    goto :goto_1
.end method

.method private updateTickerData()V
    .locals 2

    .prologue
    .line 626
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerType:Lcom/android/internal/policy/impl/TickerWidget$TickerType;

    sget-object v1, Lcom/android/internal/policy/impl/TickerWidget$TickerType;->news:Lcom/android/internal/policy/impl/TickerWidget$TickerType;

    if-ne v0, v1, :cond_1

    .line 627
    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerWidget;->updateNewsData()V

    .line 633
    :cond_0
    :goto_0
    return-void

    .line 628
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerType:Lcom/android/internal/policy/impl/TickerWidget$TickerType;

    sget-object v1, Lcom/android/internal/policy/impl/TickerWidget$TickerType;->stock:Lcom/android/internal/policy/impl/TickerWidget$TickerType;

    if-ne v0, v1, :cond_2

    .line 629
    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerWidget;->updateStockData()V

    goto :goto_0

    .line 630
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerType:Lcom/android/internal/policy/impl/TickerWidget$TickerType;

    sget-object v1, Lcom/android/internal/policy/impl/TickerWidget$TickerType;->facebook:Lcom/android/internal/policy/impl/TickerWidget$TickerType;

    if-ne v0, v1, :cond_0

    .line 631
    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerWidget;->updateFacebookData()V

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 897
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 898
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerCallback:Lcom/android/internal/policy/impl/TickerCallback;

    .line 899
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->cleanUp()V

    .line 900
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/TickerScrollView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/TickerScrollView;->cleanUp()V

    .line 901
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 596
    const-string v0, "TickerWidget"

    const-string v1, "onKeyDown at TickerWidget"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 609
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 601
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/TickerSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 602
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/TickerSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->animateClose()V

    goto :goto_0

    .line 598
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getMinTickerHeights()I
    .locals 1

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/TickerSlidingDrawer;

    if-nez v0, :cond_0

    .line 1021
    const/4 v0, 0x0

    .line 1023
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/TickerSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->getMinTickerHeights()I

    move-result v0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 590
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 890
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->onPause()V

    .line 891
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/TickerScrollView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/TickerScrollView;->onPause()V

    .line 892
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 885
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->onResume()V

    .line 886
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/TickerScrollView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/TickerScrollView;->onResume()V

    .line 887
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 614
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/TickerSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/TickerSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->animateClose()V

    .line 616
    const/4 v0, 0x1

    .line 618
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public startAutoScroll()V
    .locals 1

    .prologue
    .line 1031
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->startAutoScroll()V

    .line 1032
    return-void
.end method

.method public stopAutoScroll()V
    .locals 1

    .prologue
    .line 1027
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->stopAutoScroll()V

    .line 1028
    return-void
.end method
