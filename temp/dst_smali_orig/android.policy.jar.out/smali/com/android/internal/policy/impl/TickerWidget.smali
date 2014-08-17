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

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x12c0

    iput v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->MSG_SHOW_NEWS_REFRESH_FAILED:I

    const/16 v2, 0x12c1

    iput v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->MSG_SHOW_STOCK_REFRESH_FAILED:I

    const/16 v2, 0x12c2

    iput v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->MSG_SHOW_PREVIOUS_NEWS_DATA:I

    const/16 v2, 0x12c3

    iput v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->MSG_SHOW_PREVIOUS_STOCK_DATA:I

    const/16 v2, 0x12c4

    iput v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->MSG_SHOW_FACEBOOK_REFRESH_FAILED:I

    const/16 v2, 0x12c5

    iput v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->MSG_SHOW_PREVIOUS_FACEBOOK_DATA:I

    new-instance v2, Lcom/android/internal/policy/impl/TickerWidget$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/TickerWidget$1;-><init>(Lcom/android/internal/policy/impl/TickerWidget;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/internal/policy/impl/TickerWidget$2;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/TickerWidget$2;-><init>(Lcom/android/internal/policy/impl/TickerWidget;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/internal/policy/impl/TickerWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    iput-object p5, p0, Lcom/android/internal/policy/impl/TickerWidget;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    if-eqz p4, :cond_0

    check-cast p4, Lcom/android/internal/policy/impl/CircleUnlockRipple;

    .end local p4
    iput-object p4, p0, Lcom/android/internal/policy/impl/TickerWidget;->mUnlockWidget:Lcom/android/internal/policy/impl/CircleUnlockRipple;

    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/TickerWidget;->setFocusable(Z)V

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/TickerWidget;->setFocusableInTouchMode(Z)V

    const/high16 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/TickerWidget;->setDescendantFocusability(I)V

    iget v2, p2, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mOrientation:I

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, filter:Landroid/content/IntentFilter;
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isCaMobile()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "com.sec.android.daemonapp.stockclock.ACTION_UPDATE_STOCK_DATA_SYNC"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isSinaEnable()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "com.sec.android.daemonapp.ap.sinanews.intent.action.SNEWS_DATE_SYNC"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :goto_0
    const-string v2, "com.android.internal.policy.impl.intent.action.ACTION_FACEBOOK_DATE_UPDATED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .local v1, inflater:Landroid/view/LayoutInflater;
    iget v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mOrientation:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const v2, 0x1090066

    invoke-virtual {v1, v2, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    :goto_1
    const v2, 0x1020317

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/TickerWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/TickerSlidingDrawer;

    iput-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/TickerSlidingDrawer;

    const v2, 0x1020320

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/TickerWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    const v2, 0x1020318

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/TickerWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/TickerScrollView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/TickerScrollView;

    const v2, 0x102031a

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/TickerWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleLogoImage:Landroid/widget/ImageView;

    const v2, 0x102031b

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/TickerWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleArrowImage:Landroid/widget/ImageView;

    const v2, 0x102031f

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/TickerWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleRefreshImage:Landroid/widget/ImageView;

    const v2, 0x102031e

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/TickerWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleProgressBar:Landroid/widget/ProgressBar;

    const v2, 0x102031c

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/TickerWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleUpdateDate:Landroid/widget/TextView;

    new-instance v2, Lcom/android/internal/policy/impl/TickerWidget$3;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/TickerWidget$3;-><init>(Lcom/android/internal/policy/impl/TickerWidget;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mStockOnClickListener:Landroid/view/View$OnClickListener;

    new-instance v2, Lcom/android/internal/policy/impl/TickerWidget$4;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/TickerWidget$4;-><init>(Lcom/android/internal/policy/impl/TickerWidget;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mNewsOnClickListener:Landroid/view/View$OnClickListener;

    new-instance v2, Lcom/android/internal/policy/impl/TickerWidget$5;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/TickerWidget$5;-><init>(Lcom/android/internal/policy/impl/TickerWidget;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mFacebookOnClickListener:Landroid/view/View$OnClickListener;

    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/TickerSlidingDrawer;

    new-instance v3, Lcom/android/internal/policy/impl/TickerWidget$6;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/TickerWidget$6;-><init>(Lcom/android/internal/policy/impl/TickerWidget;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->setOnDrawerScrollListener(Lcom/android/internal/policy/impl/TickerSlidingDrawer$OnDrawerScrollListener;)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/TickerSlidingDrawer;

    new-instance v3, Lcom/android/internal/policy/impl/TickerWidget$7;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/TickerWidget$7;-><init>(Lcom/android/internal/policy/impl/TickerWidget;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->setOnDrawerOpenListener(Lcom/android/internal/policy/impl/TickerSlidingDrawer$OnDrawerOpenListener;)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/TickerSlidingDrawer;

    new-instance v3, Lcom/android/internal/policy/impl/TickerWidget$8;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/TickerWidget$8;-><init>(Lcom/android/internal/policy/impl/TickerWidget;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->setOnDrawerCloseListener(Lcom/android/internal/policy/impl/TickerSlidingDrawer$OnDrawerCloseListener;)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleRefreshImage:Landroid/widget/ImageView;

    new-instance v3, Lcom/android/internal/policy/impl/TickerWidget$9;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/TickerWidget$9;-><init>(Lcom/android/internal/policy/impl/TickerWidget;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleProgressBar:Landroid/widget/ProgressBar;

    new-instance v3, Lcom/android/internal/policy/impl/TickerWidget$10;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/TickerWidget$10;-><init>(Lcom/android/internal/policy/impl/TickerWidget;)V

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/TickerSlidingDrawer;

    new-instance v3, Lcom/android/internal/policy/impl/TickerWidget$11;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/TickerWidget$11;-><init>(Lcom/android/internal/policy/impl/TickerWidget;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    new-instance v3, Lcom/android/internal/policy/impl/TickerWidget$12;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/TickerWidget$12;-><init>(Lcom/android/internal/policy/impl/TickerWidget;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/TickerScrollView;

    new-instance v3, Lcom/android/internal/policy/impl/TickerWidget$13;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/TickerWidget$13;-><init>(Lcom/android/internal/policy/impl/TickerWidget;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/TickerScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v2, Lcom/android/internal/policy/impl/TickerWidget$14;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/TickerWidget$14;-><init>(Lcom/android/internal/policy/impl/TickerWidget;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerCallback:Lcom/android/internal/policy/impl/TickerCallback;

    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/TickerSlidingDrawer;

    iget-object v3, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerCallback:Lcom/android/internal/policy/impl/TickerCallback;

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->setTickerCallback(Lcom/android/internal/policy/impl/TickerCallback;)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerCallback:Lcom/android/internal/policy/impl/TickerCallback;

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->setTickerCallback(Lcom/android/internal/policy/impl/TickerCallback;)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/TickerScrollView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerCallback:Lcom/android/internal/policy/impl/TickerCallback;

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/TickerScrollView;->setTickerCallback(Lcom/android/internal/policy/impl/TickerCallback;)V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerWidget;->getSettingProperies()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerWidget;->updateTickerData()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerWidget;->setSlidingSpeed()V

    return-void

    .end local v1           #inflater:Landroid/view/LayoutInflater;
    :cond_2
    const-string v2, "com.sec.android.daemonapp.ap.yahoonews.intent.action.YNEWS_DATE_SYNC"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto/16 :goto_0

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

    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    const-string v10, "connectivity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .local v1, connectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .local v0, activeNetworkInfo:Landroid/net/NetworkInfo;
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerType:Lcom/android/internal/policy/impl/TickerWidget$TickerType;

    sget-object v10, Lcom/android/internal/policy/impl/TickerWidget$TickerType;->facebook:Lcom/android/internal/policy/impl/TickerWidget$TickerType;

    if-ne v9, v10, :cond_0

    iget-boolean v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsFacebookInstalled:Z

    if-nez v9, :cond_2

    iput-boolean v12, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsDataReady:Z

    sget-object p1, Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;->FacebookNoInstalled:Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;

    :cond_0
    :goto_0
    if-nez v0, :cond_3

    iget-boolean v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsDataReady:Z

    if-nez v9, :cond_1

    sget-object p1, Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;->NetworkUnavailable:Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;

    :cond_1
    :goto_1
    sget-object v9, Lcom/android/internal/policy/impl/TickerWidget$15;->$SwitchMap$com$android$internal$policy$impl$TickerUtil$TickerStatus:[I

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    :goto_2
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsDataReady:Z

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleUpdateDate:Landroid/widget/TextView;

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    return-void

    :cond_2
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsFacebookLogin:Z

    if-nez v9, :cond_0

    iput-boolean v12, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsDataReady:Z

    sget-object p1, Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;->FacebookNoLogin:Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v9

    if-nez v9, :cond_1

    :cond_4
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsDataReady:Z

    if-nez v9, :cond_1

    sget-object p1, Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;->NetworkUnavailable:Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;

    goto :goto_1

    :pswitch_0
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    iget-object v10, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/internal/policy/impl/TickerWidget;->mCurrentNewsData:Ljava/util/ArrayList;

    invoke-virtual {v9, v10, v11}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->initNewsData(Landroid/content/Context;Ljava/util/ArrayList;)V

    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/TickerScrollView;

    iget-object v10, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/internal/policy/impl/TickerWidget;->mCurrentNewsData:Ljava/util/ArrayList;

    invoke-virtual {v9, v10, v11}, Lcom/android/internal/policy/impl/TickerScrollView;->initNewsData(Landroid/content/Context;Ljava/util/ArrayList;)V

    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleUpdateDate:Landroid/widget/TextView;

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleUpdateDate:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/internal/policy/impl/TickerUtil;->getNewsUpdateDate()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :pswitch_1
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .local v7, newsNoDataMessage:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/TickerScrollView;

    iget-object v10, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v10, v7}, Lcom/android/internal/policy/impl/TickerScrollView;->setErrorMessageWithoutButton(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .end local v7           #newsNoDataMessage:Ljava/lang/String;
    :pswitch_2
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    const v10, 0x1040642

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .local v6, newsNoCountry:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/TickerScrollView;

    iget-object v10, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    sget-object v11, Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;->NewsNoCountry:Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;

    invoke-virtual {v9, v10, v6, v11}, Lcom/android/internal/policy/impl/TickerScrollView;->setErrorMessageWithButton(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;)V

    goto :goto_2

    .end local v6           #newsNoCountry:Ljava/lang/String;
    :pswitch_3
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    iget-object v10, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/internal/policy/impl/TickerWidget;->mCurrentStockData:Ljava/util/ArrayList;

    invoke-virtual {v9, v10, v11}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->initStockData(Landroid/content/Context;Ljava/util/ArrayList;)V

    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/TickerScrollView;

    iget-object v10, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/internal/policy/impl/TickerWidget;->mCurrentStockData:Ljava/util/ArrayList;

    invoke-virtual {v9, v10, v11}, Lcom/android/internal/policy/impl/TickerScrollView;->initStockData(Landroid/content/Context;Ljava/util/ArrayList;)V

    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleUpdateDate:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/internal/policy/impl/TickerUtil;->getStockUpdateDate()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :pswitch_4
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    const v10, 0x1040643

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .local v8, stockNoItem:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/TickerScrollView;

    iget-object v10, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    sget-object v11, Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;->StockNoItem:Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;

    invoke-virtual {v9, v10, v8, v11}, Lcom/android/internal/policy/impl/TickerScrollView;->setErrorMessageWithButton(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;)V

    goto/16 :goto_2

    .end local v8           #stockNoItem:Ljava/lang/String;
    :pswitch_5
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    iget-object v10, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/internal/policy/impl/TickerWidget;->mCurrentFacebookData:Ljava/util/ArrayList;

    invoke-virtual {v9, v10, v11}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->initFacebookData(Landroid/content/Context;Ljava/util/ArrayList;)V

    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/TickerScrollView;

    iget-object v10, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/internal/policy/impl/TickerWidget;->mCurrentFacebookData:Ljava/util/ArrayList;

    invoke-virtual {v9, v10, v11}, Lcom/android/internal/policy/impl/TickerScrollView;->initFacebookData(Landroid/content/Context;Ljava/util/ArrayList;)V

    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleUpdateDate:Landroid/widget/TextView;

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleUpdateDate:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/internal/policy/impl/TickerUtil;->getFacebookUpdateDate()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :pswitch_6
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .local v2, facebookNoDataMessage:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/TickerScrollView;

    iget-object v10, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v10, v2}, Lcom/android/internal/policy/impl/TickerScrollView;->setErrorMessageWithoutButton(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_2

    .end local v2           #facebookNoDataMessage:Ljava/lang/String;
    :pswitch_7
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    const v10, 0x104064a

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .local v5, messageLogin:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/TickerScrollView;

    iget-object v10, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    sget-object v11, Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;->FacebookNoLogin:Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;

    invoke-virtual {v9, v10, v5, v11}, Lcom/android/internal/policy/impl/TickerScrollView;->setErrorMessageWithButton(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;)V

    goto/16 :goto_2

    .end local v5           #messageLogin:Ljava/lang/String;
    :pswitch_8
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    const v10, 0x104064b

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .local v4, messageInstalled:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/TickerScrollView;

    iget-object v10, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    sget-object v11, Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;->FacebookNoInstalled:Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;

    invoke-virtual {v9, v10, v4, v11}, Lcom/android/internal/policy/impl/TickerScrollView;->setErrorMessageWithButton(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;)V

    goto/16 :goto_2

    .end local v4           #messageInstalled:Ljava/lang/String;
    :pswitch_9
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    const v10, 0x1040644

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .local v3, message:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerType:Lcom/android/internal/policy/impl/TickerWidget$TickerType;

    sget-object v10, Lcom/android/internal/policy/impl/TickerWidget$TickerType;->facebook:Lcom/android/internal/policy/impl/TickerWidget$TickerType;

    if-ne v9, v10, :cond_5

    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    const v10, 0x1040649

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_5
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/TickerScrollView;

    iget-object v10, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    sget-object v11, Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;->NetworkUnavailable:Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;

    invoke-virtual {v9, v10, v3, v11}, Lcom/android/internal/policy/impl/TickerScrollView;->setErrorMessageWithButton(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;)V

    goto/16 :goto_2

    .end local v3           #message:Ljava/lang/String;
    :cond_6
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleUpdateDate:Landroid/widget/TextView;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    invoke-virtual {v9, v13}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->setVisibility(I)V

    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleRefreshImage:Landroid/widget/ImageView;

    invoke-virtual {v9, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v9, v13}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/TickerSlidingDrawer;

    invoke-virtual {v9, v12}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->setBottomOffset(I)V

    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/TickerSlidingDrawer;

    invoke-virtual {v9}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->invalidate()V

    goto/16 :goto_3

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
    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerWidget;->showNewsRefreshFailed()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/TickerWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerWidget;->showStockRefreshFailed()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/TickerWidget;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleRefreshImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/TickerWidget;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/TickerWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mStockRefreshing:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/internal/policy/impl/TickerWidget;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mStockRefreshing:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/TickerWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsNewsRefreshFailed:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/TickerWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsFacebookRefreshFailed:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/TickerWidget;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/TickerWidget;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/TickerWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerWidget;->updateFacebookInstalled()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/TickerWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsFacebookInstalled:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/TickerWidget;)Lcom/android/internal/policy/impl/TickerScrollView;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/TickerScrollView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/TickerWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerWidget;->showPreviousNewsData()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/TickerWidget;)Lcom/android/internal/policy/impl/TickerHorizontalScrollView;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/TickerWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsDataReady:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/TickerWidget;)Lcom/android/internal/policy/impl/CircleUnlockRipple;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mUnlockWidget:Lcom/android/internal/policy/impl/CircleUnlockRipple;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/TickerWidget;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleArrowImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/TickerWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerWidget;->requestTickerDataToDemon()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/TickerWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerWidget;->showPreviousStockData()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/TickerWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerWidget;->showFacebookRefreshFailed()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/TickerWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerWidget;->showPreviousFacebookData()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/TickerWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsStockRefreshFailed:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/TickerWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerWidget;->updateTickerData()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/TickerWidget;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/TickerWidget;)Lcom/android/internal/policy/impl/TickerSlidingDrawer;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/TickerSlidingDrawer;

    return-object v0
.end method

.method private getSettingProperies()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "contents_type"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .local v1, tickertype:I
    packed-switch v1, :pswitch_data_0

    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sliding_speed"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .local v0, tickerSpeed:I
    packed-switch v0, :pswitch_data_1

    :goto_1
    return-void

    .end local v0           #tickerSpeed:I
    :pswitch_0
    sget-object v2, Lcom/android/internal/policy/impl/TickerWidget$TickerType;->news:Lcom/android/internal/policy/impl/TickerWidget$TickerType;

    iput-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerType:Lcom/android/internal/policy/impl/TickerWidget$TickerType;

    goto :goto_0

    :pswitch_1
    sget-object v2, Lcom/android/internal/policy/impl/TickerWidget$TickerType;->stock:Lcom/android/internal/policy/impl/TickerWidget$TickerType;

    iput-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerType:Lcom/android/internal/policy/impl/TickerWidget$TickerType;

    goto :goto_0

    :pswitch_2
    sget-object v2, Lcom/android/internal/policy/impl/TickerWidget$TickerType;->facebook:Lcom/android/internal/policy/impl/TickerWidget$TickerType;

    iput-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerType:Lcom/android/internal/policy/impl/TickerWidget$TickerType;

    goto :goto_0

    .restart local v0       #tickerSpeed:I
    :pswitch_3
    sget-object v2, Lcom/android/internal/policy/impl/TickerUtil$TickerSlidingSpeed;->slow:Lcom/android/internal/policy/impl/TickerUtil$TickerSlidingSpeed;

    iput-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerSlidingSpeed:Lcom/android/internal/policy/impl/TickerUtil$TickerSlidingSpeed;

    goto :goto_1

    :pswitch_4
    sget-object v2, Lcom/android/internal/policy/impl/TickerUtil$TickerSlidingSpeed;->normal:Lcom/android/internal/policy/impl/TickerUtil$TickerSlidingSpeed;

    iput-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerSlidingSpeed:Lcom/android/internal/policy/impl/TickerUtil$TickerSlidingSpeed;

    goto :goto_1

    :pswitch_5
    sget-object v2, Lcom/android/internal/policy/impl/TickerUtil$TickerSlidingSpeed;->fast:Lcom/android/internal/policy/impl/TickerUtil$TickerSlidingSpeed;

    iput-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerSlidingSpeed:Lcom/android/internal/policy/impl/TickerUtil$TickerSlidingSpeed;

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

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
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.policy.impl.intent.action.ACTION_FACEBOOK_DATE_REQUEST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private requestNewsDataToDemon()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isSinaEnable()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sn_daemon_service_key_service_status"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "TickerWidget"

    const-string v3, "Service is off"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.widgetapp.ap.sinanews.intent.ACTION_GET_NEWSLIST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.daemonapp.ap.sinanews"

    const-string v3, "com.sec.android.daemonapp.ap.sinanews.DaemonReceiver"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v0, component:Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

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

    const-string v2, "TickerWidget"

    const-string v3, "Service is off"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.daemonapp.ap.yahoonews.intent.action.refresh"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v1       #intent:Landroid/content/Intent;
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isKoreaFeature()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.daemonapp.ap.yonhapnews"

    const-string v3, "com.sec.android.daemonapp.ap.yonhapnews.DaemonReceiver"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0       #component:Landroid/content/ComponentName;
    :goto_1
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

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
    new-instance v4, Landroid/content/Intent;

    const-string v6, "com.sec.android.daemonapp.stockclock.action.CURRENT_STOCK_DATA"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v4, intent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .local v5, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v6, "com.sec.android.daemonapp.ap.yahoostock.stockclock"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    const-string v6, "TickerWidget"

    const-string v7, "Yahoo daemon  installed !!!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/ComponentName;

    const-string v6, "com.sec.android.daemonapp.ap.yahoostock.stockclock"

    const-string v7, "com.sec.android.daemonapp.ap.yahoostock.stockclock.activity.Stockclock_DaemonService"

    invoke-direct {v0, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v0, component:Landroid/content/ComponentName;
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #component:Landroid/content/ComponentName;
    :goto_0
    return-void

    :catch_0
    move-exception v1

    .local v1, e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "TickerWidget"

    const-string v7, "[NameNotFoundException] Yahoo daemon not installed !!!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    const-string v6, "com.sec.android.daemonapp.stockclock"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    const-string v6, "TickerWidget"

    const-string v7, "Edaily  daemon  installed !!!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/ComponentName;

    const-string v6, "com.sec.android.daemonapp.stockclock"

    const-string v7, "com.sec.android.daemonapp.stockclock.activity.Stockclock_DaemonService"

    invoke-direct {v0, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0       #component:Landroid/content/ComponentName;
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .end local v0           #component:Landroid/content/ComponentName;
    :catch_1
    move-exception v2

    .local v2, e2:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "TickerWidget"

    const-string v7, "[NameNotFoundException] Edaily  daemon not installed !!!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_2
    const-string v6, "com.sec.android.daemonapp.ap.sinastock.stockclock"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    const-string v6, "TickerWidget"

    const-string v7, "Sina  daemon  installed !!!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/ComponentName;

    const-string v6, "com.sec.android.daemonapp.ap.sinastock.stockclock"

    const-string v7, "com.sec.android.daemonapp.ap.sinastock.stockclock.activity.Stockclock_DaemonService"

    invoke-direct {v0, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0       #component:Landroid/content/ComponentName;
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .end local v0           #component:Landroid/content/ComponentName;
    :catch_2
    move-exception v3

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

    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerType:Lcom/android/internal/policy/impl/TickerWidget$TickerType;

    sget-object v2, Lcom/android/internal/policy/impl/TickerWidget$TickerType;->news:Lcom/android/internal/policy/impl/TickerWidget$TickerType;

    if-ne v1, v2, :cond_2

    const-string v1, "TickerWidget"

    const-string v2, "Request news data update!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerWidget;->requestNewsDataToDemon()V

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/TickerWidget;->mNewsRefreshing:Z

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsNewsRefreshFailed:Z

    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .end local v0           #msg:Landroid/os/Message;
    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerType:Lcom/android/internal/policy/impl/TickerWidget$TickerType;

    sget-object v2, Lcom/android/internal/policy/impl/TickerWidget$TickerType;->stock:Lcom/android/internal/policy/impl/TickerWidget$TickerType;

    if-ne v1, v2, :cond_4

    const-string v1, "TickerWidget"

    const-string v2, "Request stock data update!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerWidget;->requestStockDataToDemon()V

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/TickerWidget;->mStockRefreshing:Z

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsStockRefreshFailed:Z

    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .restart local v0       #msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .end local v0           #msg:Landroid/os/Message;
    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerType:Lcom/android/internal/policy/impl/TickerWidget$TickerType;

    sget-object v2, Lcom/android/internal/policy/impl/TickerWidget$TickerType;->facebook:Lcom/android/internal/policy/impl/TickerWidget$TickerType;

    if-ne v1, v2, :cond_1

    const-string v1, "TickerWidget"

    const-string v2, "Request facebook data update!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerWidget;->requestFacebookDataToDemon()V

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/TickerWidget;->mFacebookRefreshing:Z

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsFacebookRefreshFailed:Z

    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->removeMessages(I)V

    :cond_5
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .restart local v0       #msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private setSlidingSpeed()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerSlidingSpeed:Lcom/android/internal/policy/impl/TickerUtil$TickerSlidingSpeed;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->setSlidingSpeed(Lcom/android/internal/policy/impl/TickerUtil$TickerSlidingSpeed;)V

    return-void
.end method

.method private showFacebookRefreshFailed()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/16 v4, 0x12c5

    const-string v2, "TickerWidget"

    const-string v3, "Facebook Update was failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleRefreshImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsFacebookRefreshFailed:Z

    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    const v3, 0x1040641

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, message:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->setErrorMessage(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/TickerScrollView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/policy/impl/TickerScrollView;->setErrorMessageWithoutButton(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private showNewsRefreshFailed()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/16 v4, 0x12c2

    const-string v2, "TickerWidget"

    const-string v3, "News Update was failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleRefreshImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsNewsRefreshFailed:Z

    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    const v3, 0x1040641

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, message:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->setErrorMessage(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/TickerScrollView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/policy/impl/TickerScrollView;->setErrorMessageWithoutButton(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private showPreviousFacebookData()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mCurrentFacebookData:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mCurrentFacebookData:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->initFacebookData(Landroid/content/Context;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/TickerScrollView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mCurrentFacebookData:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/TickerScrollView;->initFacebookData(Landroid/content/Context;Ljava/util/ArrayList;)V

    :cond_0
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/TickerWidget;->mFacebookRefreshing:Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/TickerSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleRefreshImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method private showPreviousNewsData()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mCurrentNewsData:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mCurrentNewsData:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->initNewsData(Landroid/content/Context;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/TickerScrollView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mCurrentNewsData:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/TickerScrollView;->initNewsData(Landroid/content/Context;Ljava/util/ArrayList;)V

    :cond_0
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/TickerWidget;->mNewsRefreshing:Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/TickerSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleRefreshImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method private showPreviousStockData()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mCurrentStockData:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mCurrentStockData:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->initStockData(Landroid/content/Context;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/TickerScrollView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mCurrentStockData:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/TickerScrollView;->initStockData(Landroid/content/Context;Ljava/util/ArrayList;)V

    :cond_0
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/TickerWidget;->mStockRefreshing:Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/TickerSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleRefreshImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method private showStockRefreshFailed()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/16 v4, 0x12c3

    const-string v2, "TickerWidget"

    const-string v3, "Stock Update was failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleRefreshImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsStockRefreshFailed:Z

    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    const v3, 0x1040641

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, message:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->setErrorMessage(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/TickerScrollView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/policy/impl/TickerScrollView;->setErrorMessageWithoutButton(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private updateFacebookData()V
    .locals 4

    .prologue
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleLogoImage:Landroid/widget/ImageView;

    const v3, 0x108048e

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleLogoImage:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/TickerWidget;->mFacebookOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerWidget;->updateFacebookInstalled()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerWidget;->updateFacebookLoginChecked()V

    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/policy/impl/TickerUtil;->getFacebookData(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .local v0, facebookArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/TickerUtil$FacebookData;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsDataReady:Z

    iput-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mCurrentFacebookData:Ljava/util/ArrayList;

    sget-object v2, Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;->FacebookNormal:Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/TickerWidget;->UpdateData(Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;)V

    :goto_0
    return-void

    :cond_0
    const-string v2, "TickerWidget"

    const-string v3, "There is no data"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.internal.policy.impl.intent.action.ACTION_FACEBOOK_DATE_REQUEST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsDataReady:Z

    sget-object v2, Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;->FacebookNoData:Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/TickerWidget;->UpdateData(Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;)V

    goto :goto_0
.end method

.method private updateFacebookInstalled()V
    .locals 7

    .prologue
    iget-object v5, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .local v4, packagemanager:Landroid/content/pm/PackageManager;
    const/16 v5, 0x2040

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

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

    .local v2, packageInfo:Landroid/content/pm/PackageInfo;
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .local v3, packageName:Ljava/lang/String;
    const-string v5, "com.facebook.katana"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsFacebookInstalled:Z

    const-string v5, "TickerWidget"

    const-string v6, "isFacebookInstalled() : true"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v3           #packageName:Ljava/lang/String;
    :goto_0
    return-void

    :cond_1
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsFacebookInstalled:Z

    const-string v5, "TickerWidget"

    const-string v6, "isFacebookInstalled() : false"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateFacebookLoginChecked()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v2, "com.facebook.auth.login"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .local v0, accounts:[Landroid/accounts/Account;
    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsFacebookLogin:Z

    const-string v1, "TickerWidget"

    const-string v2, "login successful"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsFacebookLogin:Z

    const-string v1, "TickerWidget"

    const-string v2, "updateFacebookLoginChecked() : login failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateNewsData()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isKoreaFeature()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleLogoImage:Landroid/widget/ImageView;

    const v2, 0x1080488

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    const/4 v0, 0x0

    .local v0, newsArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/TickerUtil$NewsData;>;"
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isBootCompleted()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/TickerUtil;->getNewsData(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsDataReady:Z

    iput-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mCurrentNewsData:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;->NewsNormal:Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/TickerWidget;->UpdateData(Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;)V

    :cond_1
    :goto_1
    return-void

    .end local v0           #newsArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/TickerUtil$NewsData;>;"
    :cond_2
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isSinaEnable()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleLogoImage:Landroid/widget/ImageView;

    const v2, 0x1080486

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleLogoImage:Landroid/widget/ImageView;

    const v2, 0x1080487

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleLogoImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mNewsOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .restart local v0       #newsArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/TickerUtil$NewsData;>;"
    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_5

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsDataReady:Z

    sget-object v1, Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;->NewsNoData:Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/TickerWidget;->UpdateData(Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;)V

    goto :goto_1

    :cond_5
    if-nez v0, :cond_1

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsDataReady:Z

    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isKoreaFeature()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;->NewsNoCountry:Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/TickerWidget;->UpdateData(Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;)V

    goto :goto_1
.end method

.method private updateStockData()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isKoreaFeature()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleLogoImage:Landroid/widget/ImageView;

    const v2, 0x108048d

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/TickerUtil;->getStockData(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .local v0, stockArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/TickerUtil$StockItem;>;"
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsDataReady:Z

    iput-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mCurrentStockData:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;->StockNormal:Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/TickerWidget;->UpdateData(Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;)V

    :goto_1
    return-void

    .end local v0           #stockArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/TickerUtil$StockItem;>;"
    :cond_0
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isSinaEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleLogoImage:Landroid/widget/ImageView;

    const v2, 0x108048f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleLogoImage:Landroid/widget/ImageView;

    const v2, 0x1080493

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleLogoImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mStockOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .restart local v0       #stockArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/TickerUtil$StockItem;>;"
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsDataReady:Z

    sget-object v1, Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;->StockNoItem:Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/TickerWidget;->UpdateData(Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;)V

    goto :goto_1
.end method

.method private updateTickerData()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerType:Lcom/android/internal/policy/impl/TickerWidget$TickerType;

    sget-object v1, Lcom/android/internal/policy/impl/TickerWidget$TickerType;->news:Lcom/android/internal/policy/impl/TickerWidget$TickerType;

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerWidget;->updateNewsData()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerType:Lcom/android/internal/policy/impl/TickerWidget$TickerType;

    sget-object v1, Lcom/android/internal/policy/impl/TickerWidget$TickerType;->stock:Lcom/android/internal/policy/impl/TickerWidget$TickerType;

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerWidget;->updateStockData()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerType:Lcom/android/internal/policy/impl/TickerWidget$TickerType;

    sget-object v1, Lcom/android/internal/policy/impl/TickerWidget$TickerType;->facebook:Lcom/android/internal/policy/impl/TickerWidget$TickerType;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerWidget;->updateFacebookData()V

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerCallback:Lcom/android/internal/policy/impl/TickerCallback;

    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->cleanUp()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/TickerScrollView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/TickerScrollView;->cleanUp()V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const-string v0, "TickerWidget"

    const-string v1, "onKeyDown at TickerWidget"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/TickerSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/TickerSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->animateClose()V

    goto :goto_0

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
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/TickerSlidingDrawer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

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
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->onPause()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/TickerScrollView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/TickerScrollView;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->onResume()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/TickerScrollView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/TickerScrollView;->onResume()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/TickerSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/TickerSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->animateClose()V

    const/4 v0, 0x1

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
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->startAutoScroll()V

    return-void
.end method

.method public stopAutoScroll()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->stopAutoScroll()V

    return-void
.end method
