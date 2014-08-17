.class Landroid/webkit/WebView$TouchEventQueue;
.super Ljava/lang/Object;
.source "WebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchEventQueue"
.end annotation


# static fields
.field private static final MAX_RECYCLED_QUEUED_TOUCH:I = 0xf

.field private static final QUEUED_GESTURE_TIMEOUT:I = 0x3e8


# instance fields
.field private mIgnoreUntilSequence:J

.field private mLastEventTime:J

.field public mLastHandledTouchSequence:J

.field private mNextTouchSequence:J

.field private mPreQueue:Landroid/webkit/WebView$QueuedTouch;

.field private mQueuedTouchRecycleBin:Landroid/webkit/WebView$QueuedTouch;

.field private mQueuedTouchRecycleCount:I

.field private mTouchEventQueue:Landroid/webkit/WebView$QueuedTouch;

.field final synthetic this$0:Landroid/webkit/WebView;


# direct methods
.method private constructor <init>(Landroid/webkit/WebView;)V
    .locals 4
    .parameter

    .prologue
    const-wide v2, -0x7fffffffffffffffL

    .line 12910
    iput-object p1, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12911
    iput-wide v2, p0, Landroid/webkit/WebView$TouchEventQueue;->mNextTouchSequence:J

    .line 12912
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Landroid/webkit/WebView$TouchEventQueue;->mLastHandledTouchSequence:J

    .line 12913
    iput-wide v2, p0, Landroid/webkit/WebView$TouchEventQueue;->mIgnoreUntilSequence:J

    .line 12925
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Landroid/webkit/WebView$TouchEventQueue;->mLastEventTime:J

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/WebView;Landroid/webkit/WebView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12910
    invoke-direct {p0, p1}, Landroid/webkit/WebView$TouchEventQueue;-><init>(Landroid/webkit/WebView;)V

    return-void
.end method

.method static synthetic access$3500(Landroid/webkit/WebView$TouchEventQueue;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12910
    invoke-direct {p0, p1}, Landroid/webkit/WebView$TouchEventQueue;->handleTouchEventsBeforePreventDefault(Z)V

    return-void
.end method

.method private handleQueuedMotionEvent(Landroid/view/MotionEvent;)V
    .locals 6
    .parameter "ev"

    .prologue
    .line 13338
    sget-boolean v2, Landroid/webkit/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v2, :cond_0

    .line 13339
    const-string/jumbo v2, "webview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleQueuedMotionEvent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ev.getEventTime() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13341
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/webkit/WebView$TouchEventQueue;->mLastEventTime:J

    .line 13342
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 13343
    .local v0, action:I
    iget-object v2, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v2}, Landroid/webkit/WebView;->access$1300(Landroid/webkit/WebView;)Landroid/webkit/ZoomManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/ZoomManager;->getMultiTouchGestureDetector()Landroid/webkit/WebviewScaleGestureDetector;

    move-result-object v1

    .line 13344
    .local v1, detector:Landroid/webkit/WebviewScaleGestureDetector;
    sget-boolean v2, Landroid/webkit/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v2, :cond_1

    .line 13345
    const-string/jumbo v2, "webview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleQueuedMotionEvent  detector.isInProgress() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/webkit/WebviewScaleGestureDetector;->isInProgress()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  action= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  mForcelyCreatedScaleDetector = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    iget-boolean v4, v4, Landroid/webkit/WebView;->mForcelyCreatedScaleDetector:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13346
    :cond_1
    invoke-virtual {v1}, Landroid/webkit/WebviewScaleGestureDetector;->isInProgress()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 13347
    iget-object v2, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2, p1}, Landroid/webkit/WebView;->handleMultiTouchInWebView(Landroid/view/MotionEvent;)V

    .line 13359
    :goto_0
    return-void

    .line 13350
    :cond_2
    if-eqz v1, :cond_3

    iget-object v2, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    iget-boolean v2, v2, Landroid/webkit/WebView;->mForcelyCreatedScaleDetector:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mPreventDefault:I
    invoke-static {v2}, Landroid/webkit/WebView;->access$3900(Landroid/webkit/WebView;)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    .line 13354
    invoke-virtual {v1}, Landroid/webkit/WebviewScaleGestureDetector;->execute()V

    .line 13357
    :cond_3
    iget-object v2, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v2, p1, v0, v3, v4}, Landroid/webkit/WebView;->handleTouchEventCommon(Landroid/view/MotionEvent;III)Z

    goto :goto_0
.end method

.method private handleQueuedTouch(Landroid/webkit/WebView$QueuedTouch;)V
    .locals 4
    .parameter "qt"

    .prologue
    .line 13323
    sget-boolean v0, Landroid/webkit/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v0, :cond_0

    .line 13324
    const-string/jumbo v0, "webview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleQueuedTouch qt.mSequence = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Landroid/webkit/WebView$QueuedTouch;->mSequence:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " qt.mTed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/webkit/WebView$QueuedTouch;->mTed:Landroid/webkit/WebViewCore$TouchEventData;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13328
    :cond_0
    iget-object v0, p1, Landroid/webkit/WebView$QueuedTouch;->mTed:Landroid/webkit/WebViewCore$TouchEventData;

    if-eqz v0, :cond_1

    .line 13329
    iget-object v0, p1, Landroid/webkit/WebView$QueuedTouch;->mTed:Landroid/webkit/WebViewCore$TouchEventData;

    invoke-direct {p0, v0}, Landroid/webkit/WebView$TouchEventQueue;->handleQueuedTouchEventData(Landroid/webkit/WebViewCore$TouchEventData;)V

    .line 13334
    :goto_0
    return-void

    .line 13331
    :cond_1
    iget-object v0, p1, Landroid/webkit/WebView$QueuedTouch;->mEvent:Landroid/view/MotionEvent;

    invoke-direct {p0, v0}, Landroid/webkit/WebView$TouchEventQueue;->handleQueuedMotionEvent(Landroid/view/MotionEvent;)V

    .line 13332
    iget-object v0, p1, Landroid/webkit/WebView$QueuedTouch;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0
.end method

.method private handleQueuedTouchEventData(Landroid/webkit/WebViewCore$TouchEventData;)V
    .locals 16
    .parameter "ted"

    .prologue
    .line 13363
    sget-boolean v1, Landroid/webkit/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v1, :cond_0

    .line 13364
    const-string/jumbo v1, "webview"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleQueuedTouchEventData ted.mReprocess ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-boolean v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mReprocess:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mPreventDefault = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mPreventDefault:I
    invoke-static {v3}, Landroid/webkit/WebView;->access$3900(Landroid/webkit/WebView;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13367
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mPreventDefault:I
    invoke-static {v1}, Landroid/webkit/WebView;->access$3900(Landroid/webkit/WebView;)I

    move-result v12

    .line 13369
    .local v12, oldPreventDefault:I
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/webkit/WebViewCore$TouchEventData;->mMotionEvent:Landroid/view/MotionEvent;

    if-eqz v1, :cond_1

    .line 13370
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/webkit/WebViewCore$TouchEventData;->mMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    move-object/from16 v0, p0

    iput-wide v1, v0, Landroid/webkit/WebView$TouchEventQueue;->mLastEventTime:J

    .line 13372
    :cond_1
    move-object/from16 v0, p1

    iget-boolean v1, v0, Landroid/webkit/WebViewCore$TouchEventData;->mReprocess:Z

    if-nez v1, :cond_b

    .line 13375
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mHandleTouchEventBeforePreventDefault:Z
    invoke-static {v1}, Landroid/webkit/WebView;->access$3800(Landroid/webkit/WebView;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mIsHandlingTouchEventBeforePreventDefault:Z
    invoke-static {v1}, Landroid/webkit/WebView;->access$4000(Landroid/webkit/WebView;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 13377
    sget-boolean v1, Landroid/webkit/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v1, :cond_2

    .line 13378
    const-string/jumbo v1, "webview"

    const-string v2, "handleQueuedTouchEventData : handling events before mPreventDefault, do nothing"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13552
    :cond_2
    :goto_0
    return-void

    .line 13382
    :cond_3
    move-object/from16 v0, p1

    iget v1, v0, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    if-nez v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mPreventDefault:I
    invoke-static {v1}, Landroid/webkit/WebView;->access$3900(Landroid/webkit/WebView;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    .line 13387
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p1

    iget-boolean v1, v0, Landroid/webkit/WebViewCore$TouchEventData;->mNativeResult:Z

    if-eqz v1, :cond_7

    const/4 v1, 0x3

    :goto_1
    #setter for: Landroid/webkit/WebView;->mPreventDefault:I
    invoke-static {v2, v1}, Landroid/webkit/WebView;->access$3902(Landroid/webkit/WebView;I)I

    .line 13390
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mPreventDefault:I
    invoke-static {v1}, Landroid/webkit/WebView;->access$3900(Landroid/webkit/WebView;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    iget-boolean v1, v1, Landroid/webkit/WebView;->mBlockWebViewUpdate:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 13392
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setBlockWebViewUpdate(Z)V

    .line 13417
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mHandleTouchEventBeforePreventDefault:Z
    invoke-static {v1}, Landroid/webkit/WebView;->access$3800(Landroid/webkit/WebView;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mPreventDefault:I
    invoke-static {v1}, Landroid/webkit/WebView;->access$3900(Landroid/webkit/WebView;)I

    move-result v1

    if-eq v12, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mPreventDefault:I
    invoke-static {v1}, Landroid/webkit/WebView;->access$3900(Landroid/webkit/WebView;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_6

    .line 13420
    sget-boolean v1, Landroid/webkit/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v1, :cond_5

    .line 13421
    const-string/jumbo v1, "webview"

    const-string v2, "handleQueuedTouchEventData : mPreventDefault has been changed to PREVENT_DEFAULT_YES"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13424
    :cond_5
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/webkit/WebViewCore;->resumePriority(I)V

    .line 13425
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v13

    .line 13426
    .local v13, webSettings:Landroid/webkit/WebSettings;
    sget-object v1, Landroid/webkit/WebSettings$RenderPriority;->NORMAL:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v13, v1}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 13428
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/webkit/WebView;->access$4602(Z)Z

    .line 13429
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v1}, Landroid/webkit/WebView;->access$800(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 13430
    sget-boolean v1, Landroid/webkit/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v1, :cond_6

    .line 13431
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    const/4 v2, 0x0

    #calls: Landroid/webkit/WebView;->nativeSetIsScrolling(Z)V
    invoke-static {v1, v2}, Landroid/webkit/WebView;->access$4700(Landroid/webkit/WebView;Z)V

    .line 13435
    .end local v13           #webSettings:Landroid/webkit/WebSettings;
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mPreventDefault:I
    invoke-static {v1}, Landroid/webkit/WebView;->access$3900(Landroid/webkit/WebView;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 13439
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->removeTouchHighlight()V
    invoke-static {v1}, Landroid/webkit/WebView;->access$3600(Landroid/webkit/WebView;)V

    goto/16 :goto_0

    .line 13387
    :cond_7
    const/4 v1, 0x2

    goto/16 :goto_1

    .line 13394
    :cond_8
    move-object/from16 v0, p1

    iget v1, v0, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mPreventDefault:I
    invoke-static {v1}, Landroid/webkit/WebView;->access$3900(Landroid/webkit/WebView;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 13399
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p1

    iget-boolean v1, v0, Landroid/webkit/WebViewCore$TouchEventData;->mNativeResult:Z

    if-eqz v1, :cond_a

    const/4 v1, 0x3

    :goto_3
    #setter for: Landroid/webkit/WebView;->mPreventDefault:I
    invoke-static {v2, v1}, Landroid/webkit/WebView;->access$3902(Landroid/webkit/WebView;I)I

    .line 13402
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mPreventDefault:I
    invoke-static {v1}, Landroid/webkit/WebView;->access$3900(Landroid/webkit/WebView;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    iget-boolean v1, v1, Landroid/webkit/WebView;->mBlockWebViewUpdate:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_9

    .line 13404
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setBlockWebViewUpdate(Z)V

    .line 13407
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mHandleTouchEventBeforePreventDefault:Z
    invoke-static {v1}, Landroid/webkit/WebView;->access$3800(Landroid/webkit/WebView;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 13408
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    const/4 v2, 0x0

    #setter for: Landroid/webkit/WebView;->mIsWaitingPreventDefault:Z
    invoke-static {v1, v2}, Landroid/webkit/WebView;->access$4502(Landroid/webkit/WebView;Z)Z

    goto/16 :goto_2

    .line 13399
    :cond_a
    const/4 v1, 0x0

    goto :goto_3

    .line 13443
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v1}, Landroid/webkit/WebView;->access$1300(Landroid/webkit/WebView;)Landroid/webkit/ZoomManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/ZoomManager;->getMultiTouchGestureDetector()Landroid/webkit/WebviewScaleGestureDetector;

    move-result-object v10

    .line 13444
    .local v10, detector:Landroid/webkit/WebviewScaleGestureDetector;
    invoke-virtual {v10}, Landroid/webkit/WebviewScaleGestureDetector;->isInProgress()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 13447
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mHandleTouchEventBeforePreventDefault:Z
    invoke-static {v1}, Landroid/webkit/WebView;->access$3800(Landroid/webkit/WebView;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_d

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mIsHandlingTouchEventBeforePreventDefault:Z
    invoke-static {v1}, Landroid/webkit/WebView;->access$4000(Landroid/webkit/WebView;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_d

    .line 13449
    sget-boolean v1, Landroid/webkit/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v1, :cond_c

    .line 13450
    const-string/jumbo v1, "webview"

    const-string v2, "handleQueuedTouchEventData : handling events before mPreventDefault, just call handleMultiTouchInWebView"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13451
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/webkit/WebViewCore$TouchEventData;->mMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->handleMultiTouchInWebView(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 13455
    :cond_d
    move-object/from16 v0, p1

    iget-boolean v1, v0, Landroid/webkit/WebViewCore$TouchEventData;->mNativeResult:Z

    if-nez v1, :cond_f

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mPreventDefault:I
    invoke-static {v1}, Landroid/webkit/WebView;->access$3900(Landroid/webkit/WebView;)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_f

    .line 13456
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    const/4 v2, 0x0

    #setter for: Landroid/webkit/WebView;->mPreventDefault:I
    invoke-static {v1, v2}, Landroid/webkit/WebView;->access$3902(Landroid/webkit/WebView;I)I

    .line 13459
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mHandleTouchEventBeforePreventDefault:Z
    invoke-static {v1}, Landroid/webkit/WebView;->access$3800(Landroid/webkit/WebView;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_e

    .line 13461
    sget-boolean v1, Landroid/webkit/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v1, :cond_2

    .line 13462
    const-string/jumbo v1, "webview"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleQueuedTouchEventData : We don\'t need to handle this ted event because it was already handled ted.mAction= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ted.mSequence = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-wide v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mSequence:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 13467
    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/webkit/WebViewCore$TouchEventData;->mMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->handleMultiTouchInWebView(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 13469
    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    const/4 v2, 0x3

    #setter for: Landroid/webkit/WebView;->mPreventDefault:I
    invoke-static {v1, v2}, Landroid/webkit/WebView;->access$3902(Landroid/webkit/WebView;I)I

    .line 13471
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    iget-boolean v1, v1, Landroid/webkit/WebView;->mBlockWebViewUpdate:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 13473
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setBlockWebViewUpdate(Z)V

    goto/16 :goto_0

    .line 13482
    :cond_10
    move-object/from16 v0, p1

    iget-boolean v1, v0, Landroid/webkit/WebViewCore$TouchEventData;->mNativeResult:Z

    if-nez v1, :cond_2

    .line 13484
    move-object/from16 v0, p1

    iget v1, v0, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    .line 13486
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPointsInView:[Landroid/graphics/Point;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    #setter for: Landroid/webkit/WebView;->mLastDeferTouchX:F
    invoke-static {v1, v2}, Landroid/webkit/WebView;->access$4802(Landroid/webkit/WebView;F)F

    .line 13487
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPointsInView:[Landroid/graphics/Point;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    #setter for: Landroid/webkit/WebView;->mLastDeferTouchY:F
    invoke-static {v1, v2}, Landroid/webkit/WebView;->access$4902(Landroid/webkit/WebView;F)F

    .line 13488
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    const/4 v2, 0x1

    #setter for: Landroid/webkit/WebView;->mDeferTouchMode:I
    invoke-static {v1, v2}, Landroid/webkit/WebView;->access$5002(Landroid/webkit/WebView;I)I

    goto/16 :goto_0

    .line 13492
    :sswitch_1
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPointsInView:[Landroid/graphics/Point;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget v14, v1, Landroid/graphics/Point;->x:I

    .line 13493
    .local v14, x:I
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPointsInView:[Landroid/graphics/Point;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget v15, v1, Landroid/graphics/Point;->y:I

    .line 13495
    .local v15, y:I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mDeferTouchMode:I
    invoke-static {v1}, Landroid/webkit/WebView;->access$5000(Landroid/webkit/WebView;)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_11

    .line 13496
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    const/4 v2, 0x3

    #setter for: Landroid/webkit/WebView;->mDeferTouchMode:I
    invoke-static {v1, v2}, Landroid/webkit/WebView;->access$5002(Landroid/webkit/WebView;I)I

    .line 13497
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    int-to-float v2, v14

    #setter for: Landroid/webkit/WebView;->mLastDeferTouchX:F
    invoke-static {v1, v2}, Landroid/webkit/WebView;->access$4802(Landroid/webkit/WebView;F)F

    .line 13498
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    int-to-float v2, v15

    #setter for: Landroid/webkit/WebView;->mLastDeferTouchY:F
    invoke-static {v1, v2}, Landroid/webkit/WebView;->access$4902(Landroid/webkit/WebView;F)F

    .line 13499
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    int-to-float v2, v14

    int-to-float v3, v15

    #calls: Landroid/webkit/WebView;->startScrollingLayer(FF)V
    invoke-static {v1, v2, v3}, Landroid/webkit/WebView;->access$5100(Landroid/webkit/WebView;FF)V

    .line 13500
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->startDrag()V
    invoke-static {v1}, Landroid/webkit/WebView;->access$5200(Landroid/webkit/WebView;)V

    .line 13502
    :cond_11
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/view/View;->mScrollX:I
    invoke-static {v2}, Landroid/webkit/WebView;->access$5300(Landroid/webkit/WebView;)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mLastDeferTouchX:F
    invoke-static {v3}, Landroid/webkit/WebView;->access$4800(Landroid/webkit/WebView;)F

    move-result v3

    add-float/2addr v2, v3

    int-to-float v3, v14

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->pinLocX(I)I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/view/View;->mScrollX:I
    invoke-static {v2}, Landroid/webkit/WebView;->access$5400(Landroid/webkit/WebView;)I

    move-result v2

    sub-int v8, v1, v2

    .line 13505
    .local v8, deltaX:I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/view/View;->mScrollY:I
    invoke-static {v2}, Landroid/webkit/WebView;->access$5500(Landroid/webkit/WebView;)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mLastDeferTouchY:F
    invoke-static {v3}, Landroid/webkit/WebView;->access$4900(Landroid/webkit/WebView;)F

    move-result v3

    add-float/2addr v2, v3

    int-to-float v3, v15

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->pinLocY(I)I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/view/View;->mScrollY:I
    invoke-static {v2}, Landroid/webkit/WebView;->access$5600(Landroid/webkit/WebView;)I

    move-result v2

    sub-int v9, v1, v2

    .line 13508
    .local v9, deltaY:I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->doDrag(II)V
    invoke-static {v1, v8, v9}, Landroid/webkit/WebView;->access$5700(Landroid/webkit/WebView;II)V

    .line 13509
    if-eqz v8, :cond_12

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    int-to-float v2, v14

    #setter for: Landroid/webkit/WebView;->mLastDeferTouchX:F
    invoke-static {v1, v2}, Landroid/webkit/WebView;->access$4802(Landroid/webkit/WebView;F)F

    .line 13510
    :cond_12
    if-eqz v9, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    int-to-float v2, v15

    #setter for: Landroid/webkit/WebView;->mLastDeferTouchY:F
    invoke-static {v1, v2}, Landroid/webkit/WebView;->access$4902(Landroid/webkit/WebView;F)F

    goto/16 :goto_0

    .line 13515
    .end local v8           #deltaX:I
    .end local v9           #deltaY:I
    .end local v14           #x:I
    .end local v15           #y:I
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mDeferTouchMode:I
    invoke-static {v1}, Landroid/webkit/WebView;->access$5000(Landroid/webkit/WebView;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_13

    .line 13517
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/view/View;->mScrollX:I
    invoke-static {v2}, Landroid/webkit/WebView;->access$5800(Landroid/webkit/WebView;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/view/View;->mScrollY:I
    invoke-static {v3}, Landroid/webkit/WebView;->access$5900(Landroid/webkit/WebView;)I

    move-result v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v7}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v7

    invoke-virtual/range {v1 .. v7}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    .line 13520
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->invalidate()V

    .line 13523
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/webkit/WebViewCore;->resumePriority(I)V

    .line 13524
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v13

    .line 13525
    .restart local v13       #webSettings:Landroid/webkit/WebSettings;
    sget-object v1, Landroid/webkit/WebSettings$RenderPriority;->NORMAL:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v13, v1}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 13527
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v1}, Landroid/webkit/WebView;->access$800(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 13529
    .end local v13           #webSettings:Landroid/webkit/WebSettings;
    :cond_13
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    const/4 v2, 0x7

    #setter for: Landroid/webkit/WebView;->mDeferTouchMode:I
    invoke-static {v1, v2}, Landroid/webkit/WebView;->access$5002(Landroid/webkit/WebView;I)I

    goto/16 :goto_0

    .line 13533
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPointsInView:[Landroid/graphics/Point;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    #setter for: Landroid/webkit/WebView;->mLastDeferTouchX:F
    invoke-static {v1, v2}, Landroid/webkit/WebView;->access$4802(Landroid/webkit/WebView;F)F

    .line 13534
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPointsInView:[Landroid/graphics/Point;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    #setter for: Landroid/webkit/WebView;->mLastDeferTouchY:F
    invoke-static {v1, v2}, Landroid/webkit/WebView;->access$4902(Landroid/webkit/WebView;F)F

    .line 13535
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v1}, Landroid/webkit/WebView;->access$1300(Landroid/webkit/WebView;)Landroid/webkit/ZoomManager;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mLastTouchX:I
    invoke-static {v2}, Landroid/webkit/WebView;->access$4200(Landroid/webkit/WebView;)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mLastTouchY:I
    invoke-static {v3}, Landroid/webkit/WebView;->access$4300(Landroid/webkit/WebView;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/webkit/ZoomManager;->handleDoubleTap(FF)V

    .line 13536
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    const/4 v2, 0x7

    #setter for: Landroid/webkit/WebView;->mDeferTouchMode:I
    invoke-static {v1, v2}, Landroid/webkit/WebView;->access$5002(Landroid/webkit/WebView;I)I

    goto/16 :goto_0

    .line 13539
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v11

    .line 13541
    .local v11, hitTest:Landroid/webkit/WebView$HitTestResult;
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v2

    if-eq v1, v2, :cond_14

    if-eqz v11, :cond_15

    #getter for: Landroid/webkit/WebView$HitTestResult;->mType:I
    invoke-static {v11}, Landroid/webkit/WebView$HitTestResult;->access$1700(Landroid/webkit/WebView$HitTestResult;)I

    move-result v1

    if-eqz v1, :cond_15

    .line 13544
    :cond_14
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    const/4 v2, 0x0

    #setter for: Landroid/webkit/WebView;->mEnterKeyLongPress:I
    invoke-static {v1, v2}, Landroid/webkit/WebView;->access$6002(Landroid/webkit/WebView;I)I

    .line 13545
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->performLongClick()Z

    .line 13547
    :cond_15
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    const/4 v2, 0x7

    #setter for: Landroid/webkit/WebView;->mDeferTouchMode:I
    invoke-static {v1, v2}, Landroid/webkit/WebView;->access$5002(Landroid/webkit/WebView;I)I

    goto/16 :goto_0

    .line 13484
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_2
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x100 -> :sswitch_4
        0x200 -> :sswitch_3
    .end sparse-switch
.end method

.method private handleTouchEventsBeforePreventDefault(Z)V
    .locals 3
    .parameter "bForce"

    .prologue
    .line 13157
    sget-boolean v0, Landroid/webkit/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v0, :cond_0

    .line 13158
    const-string/jumbo v0, "webview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleTouchEventsBeforePreventDefault  mPreventDefault = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mPreventDefault:I
    invoke-static {v2}, Landroid/webkit/WebView;->access$3900(Landroid/webkit/WebView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13162
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mHandleTouchEventBeforePreventDefault:Z
    invoke-static {v0}, Landroid/webkit/WebView;->access$3800(Landroid/webkit/WebView;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 13176
    :cond_1
    :goto_0
    return-void

    .line 13167
    :cond_2
    iget-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mPreventDefault:I
    invoke-static {v0}, Landroid/webkit/WebView;->access$3900(Landroid/webkit/WebView;)I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mPreventDefault:I
    invoke-static {v0}, Landroid/webkit/WebView;->access$3900(Landroid/webkit/WebView;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    :cond_3
    if-eqz p1, :cond_1

    .line 13170
    :cond_4
    iget-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    const/4 v1, 0x1

    #setter for: Landroid/webkit/WebView;->mIsHandlingTouchEventBeforePreventDefault:Z
    invoke-static {v0, v1}, Landroid/webkit/WebView;->access$4002(Landroid/webkit/WebView;Z)Z

    .line 13172
    invoke-direct {p0}, Landroid/webkit/WebView$TouchEventQueue;->runQueuedAndPreQueuedEvents()V

    .line 13174
    iget-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    const/4 v1, 0x0

    #setter for: Landroid/webkit/WebView;->mIsHandlingTouchEventBeforePreventDefault:Z
    invoke-static {v0, v1}, Landroid/webkit/WebView;->access$4002(Landroid/webkit/WebView;Z)Z

    goto :goto_0
.end method

.method private obtainQueuedTouch()Landroid/webkit/WebView$QueuedTouch;
    .locals 2

    .prologue
    .line 12932
    iget-object v1, p0, Landroid/webkit/WebView$TouchEventQueue;->mQueuedTouchRecycleBin:Landroid/webkit/WebView$QueuedTouch;

    if-eqz v1, :cond_0

    .line 12933
    iget-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->mQueuedTouchRecycleBin:Landroid/webkit/WebView$QueuedTouch;

    .line 12934
    .local v0, result:Landroid/webkit/WebView$QueuedTouch;
    iget-object v1, v0, Landroid/webkit/WebView$QueuedTouch;->mNext:Landroid/webkit/WebView$QueuedTouch;

    iput-object v1, p0, Landroid/webkit/WebView$TouchEventQueue;->mQueuedTouchRecycleBin:Landroid/webkit/WebView$QueuedTouch;

    .line 12935
    iget v1, p0, Landroid/webkit/WebView$TouchEventQueue;->mQueuedTouchRecycleCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/webkit/WebView$TouchEventQueue;->mQueuedTouchRecycleCount:I

    .line 12938
    .end local v0           #result:Landroid/webkit/WebView$QueuedTouch;
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/webkit/WebView$QueuedTouch;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/webkit/WebView$QueuedTouch;-><init>(Landroid/webkit/WebView$1;)V

    goto :goto_0
.end method

.method private recycleQueuedTouch(Landroid/webkit/WebView$QueuedTouch;)V
    .locals 2
    .parameter "qd"

    .prologue
    .line 13013
    iget v0, p0, Landroid/webkit/WebView$TouchEventQueue;->mQueuedTouchRecycleCount:I

    const/16 v1, 0xf

    if-ge v0, v1, :cond_0

    .line 13014
    iget-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->mQueuedTouchRecycleBin:Landroid/webkit/WebView$QueuedTouch;

    iput-object v0, p1, Landroid/webkit/WebView$QueuedTouch;->mNext:Landroid/webkit/WebView$QueuedTouch;

    .line 13015
    iput-object p1, p0, Landroid/webkit/WebView$TouchEventQueue;->mQueuedTouchRecycleBin:Landroid/webkit/WebView$QueuedTouch;

    .line 13016
    iget v0, p0, Landroid/webkit/WebView$TouchEventQueue;->mQueuedTouchRecycleCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/webkit/WebView$TouchEventQueue;->mQueuedTouchRecycleCount:I

    .line 13018
    :cond_0
    return-void
.end method

.method private runNextQueuedEvents()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x1

    .line 13236
    sget-boolean v2, Landroid/webkit/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v2, :cond_0

    .line 13237
    const-string/jumbo v2, "webview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "runNextQueuedEvents called  mLastHandledTouchSequence = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Landroid/webkit/WebView$TouchEventQueue;->mLastHandledTouchSequence:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13240
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->mTouchEventQueue:Landroid/webkit/WebView$QueuedTouch;

    .line 13241
    .local v0, qd:Landroid/webkit/WebView$QueuedTouch;
    :goto_0
    if-eqz v0, :cond_1

    iget-wide v2, v0, Landroid/webkit/WebView$QueuedTouch;->mSequence:J

    iget-wide v4, p0, Landroid/webkit/WebView$TouchEventQueue;->mLastHandledTouchSequence:J

    add-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 13242
    invoke-direct {p0, v0}, Landroid/webkit/WebView$TouchEventQueue;->handleQueuedTouch(Landroid/webkit/WebView$QueuedTouch;)V

    .line 13243
    move-object v1, v0

    .line 13244
    .local v1, recycleMe:Landroid/webkit/WebView$QueuedTouch;
    iget-object v0, v0, Landroid/webkit/WebView$QueuedTouch;->mNext:Landroid/webkit/WebView$QueuedTouch;

    .line 13245
    invoke-direct {p0, v1}, Landroid/webkit/WebView$TouchEventQueue;->recycleQueuedTouch(Landroid/webkit/WebView$QueuedTouch;)V

    .line 13246
    iget-wide v2, p0, Landroid/webkit/WebView$TouchEventQueue;->mLastHandledTouchSequence:J

    add-long/2addr v2, v6

    iput-wide v2, p0, Landroid/webkit/WebView$TouchEventQueue;->mLastHandledTouchSequence:J

    goto :goto_0

    .line 13248
    .end local v1           #recycleMe:Landroid/webkit/WebView$QueuedTouch;
    :cond_1
    iput-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->mTouchEventQueue:Landroid/webkit/WebView$QueuedTouch;

    .line 13250
    sget-boolean v2, Landroid/webkit/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v2, :cond_2

    .line 13251
    const-string/jumbo v2, "webview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "runNextQueuedEvents exit  mLastHandledTouchSequence = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Landroid/webkit/WebView$TouchEventQueue;->mLastHandledTouchSequence:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13254
    :cond_2
    return-void
.end method

.method private runQueuedAndPreQueuedEvents()V
    .locals 15

    .prologue
    const-wide v7, 0x7fffffffffffffffL

    const-wide/16 v13, 0x1

    .line 12952
    iget-object v5, p0, Landroid/webkit/WebView$TouchEventQueue;->mPreQueue:Landroid/webkit/WebView$QueuedTouch;

    .line 12953
    .local v5, qd:Landroid/webkit/WebView$QueuedTouch;
    const/4 v0, 0x1

    .line 12955
    .local v0, fromPreQueue:Z
    sget-boolean v9, Landroid/webkit/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v9, :cond_0

    .line 12956
    const-string/jumbo v9, "webview"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "runQueuedAndPreQueuedEvents start > mLastHandledTouchSequence = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, p0, Landroid/webkit/WebView$TouchEventQueue;->mLastHandledTouchSequence:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 12961
    :cond_0
    :goto_0
    if-eqz v5, :cond_6

    iget-wide v9, v5, Landroid/webkit/WebView$QueuedTouch;->mSequence:J

    iget-wide v11, p0, Landroid/webkit/WebView$TouchEventQueue;->mLastHandledTouchSequence:J

    add-long/2addr v11, v13

    cmp-long v9, v9, v11

    if-nez v9, :cond_6

    .line 12962
    invoke-direct {p0, v5}, Landroid/webkit/WebView$TouchEventQueue;->handleQueuedTouch(Landroid/webkit/WebView$QueuedTouch;)V

    .line 12963
    move-object v6, v5

    .line 12964
    .local v6, recycleMe:Landroid/webkit/WebView$QueuedTouch;
    if-eqz v0, :cond_1

    .line 12965
    iget-object v9, v5, Landroid/webkit/WebView$QueuedTouch;->mNext:Landroid/webkit/WebView$QueuedTouch;

    iput-object v9, p0, Landroid/webkit/WebView$TouchEventQueue;->mPreQueue:Landroid/webkit/WebView$QueuedTouch;

    .line 12969
    :goto_1
    invoke-direct {p0, v6}, Landroid/webkit/WebView$TouchEventQueue;->recycleQueuedTouch(Landroid/webkit/WebView$QueuedTouch;)V

    .line 12970
    iget-wide v9, p0, Landroid/webkit/WebView$TouchEventQueue;->mLastHandledTouchSequence:J

    add-long/2addr v9, v13

    iput-wide v9, p0, Landroid/webkit/WebView$TouchEventQueue;->mLastHandledTouchSequence:J

    .line 12972
    iget-object v9, p0, Landroid/webkit/WebView$TouchEventQueue;->mPreQueue:Landroid/webkit/WebView$QueuedTouch;

    if-eqz v9, :cond_2

    iget-object v9, p0, Landroid/webkit/WebView$TouchEventQueue;->mPreQueue:Landroid/webkit/WebView$QueuedTouch;

    iget-wide v1, v9, Landroid/webkit/WebView$QueuedTouch;->mSequence:J

    .line 12973
    .local v1, nextPre:J
    :goto_2
    iget-object v9, p0, Landroid/webkit/WebView$TouchEventQueue;->mTouchEventQueue:Landroid/webkit/WebView$QueuedTouch;

    if-eqz v9, :cond_3

    iget-object v9, p0, Landroid/webkit/WebView$TouchEventQueue;->mTouchEventQueue:Landroid/webkit/WebView$QueuedTouch;

    iget-wide v3, v9, Landroid/webkit/WebView$QueuedTouch;->mSequence:J

    .line 12975
    .local v3, nextQueued:J
    :goto_3
    cmp-long v9, v1, v3

    if-gez v9, :cond_4

    const/4 v0, 0x1

    .line 12976
    :goto_4
    if-eqz v0, :cond_5

    iget-object v5, p0, Landroid/webkit/WebView$TouchEventQueue;->mPreQueue:Landroid/webkit/WebView$QueuedTouch;

    .line 12977
    :goto_5
    goto :goto_0

    .line 12967
    .end local v1           #nextPre:J
    .end local v3           #nextQueued:J
    :cond_1
    iget-object v9, v5, Landroid/webkit/WebView$QueuedTouch;->mNext:Landroid/webkit/WebView$QueuedTouch;

    iput-object v9, p0, Landroid/webkit/WebView$TouchEventQueue;->mTouchEventQueue:Landroid/webkit/WebView$QueuedTouch;

    goto :goto_1

    :cond_2
    move-wide v1, v7

    .line 12972
    goto :goto_2

    .restart local v1       #nextPre:J
    :cond_3
    move-wide v3, v7

    .line 12973
    goto :goto_3

    .line 12975
    .restart local v3       #nextQueued:J
    :cond_4
    const/4 v0, 0x0

    goto :goto_4

    .line 12976
    :cond_5
    iget-object v5, p0, Landroid/webkit/WebView$TouchEventQueue;->mTouchEventQueue:Landroid/webkit/WebView$QueuedTouch;

    goto :goto_5

    .line 12979
    .end local v1           #nextPre:J
    .end local v3           #nextQueued:J
    .end local v6           #recycleMe:Landroid/webkit/WebView$QueuedTouch;
    :cond_6
    sget-boolean v7, Landroid/webkit/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v7, :cond_7

    .line 12980
    const-string/jumbo v7, "webview"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "runQueuedAndPreQueuedEvents end < mLastHandledTouchSequence = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, p0, Landroid/webkit/WebView$TouchEventQueue;->mLastHandledTouchSequence:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 12984
    :cond_7
    return-void
.end method


# virtual methods
.method public dropStaleGestures(Landroid/view/MotionEvent;J)Z
    .locals 12
    .parameter "ev"
    .parameter "sequence"

    .prologue
    .line 13257
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    iget-object v8, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mConfirmMove:Z
    invoke-static {v8}, Landroid/webkit/WebView;->access$4100(Landroid/webkit/WebView;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 13262
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iget-object v9, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mLastTouchX:I
    invoke-static {v9}, Landroid/webkit/WebView;->access$4200(Landroid/webkit/WebView;)I

    move-result v9

    sub-int v0, v8, v9

    .line 13263
    .local v0, dx:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iget-object v9, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mLastTouchY:I
    invoke-static {v9}, Landroid/webkit/WebView;->access$4300(Landroid/webkit/WebView;)I

    move-result v9

    sub-int v1, v8, v9

    .line 13264
    .local v1, dy:I
    mul-int v8, v0, v0

    mul-int v9, v1, v1

    add-int/2addr v8, v9

    iget-object v9, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mTouchSlopSquare:I
    invoke-static {v9}, Landroid/webkit/WebView;->access$4400(Landroid/webkit/WebView;)I

    move-result v9

    if-le v8, v9, :cond_0

    .line 13265
    iget-object v8, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    iget-object v8, v8, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 13266
    iget-object v8, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    iget-object v8, v8, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 13270
    .end local v0           #dx:I
    .end local v1           #dy:I
    :cond_0
    iget-object v8, p0, Landroid/webkit/WebView$TouchEventQueue;->mTouchEventQueue:Landroid/webkit/WebView$QueuedTouch;

    if-nez v8, :cond_2

    .line 13271
    iget-wide v8, p0, Landroid/webkit/WebView$TouchEventQueue;->mLastHandledTouchSequence:J

    cmp-long v8, p2, v8

    if-gtz v8, :cond_1

    const/4 v8, 0x1

    .line 13318
    :goto_0
    return v8

    .line 13271
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 13276
    :cond_2
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-nez v8, :cond_4

    .line 13277
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    .line 13278
    .local v2, eventTime:J
    iget-wide v4, p0, Landroid/webkit/WebView$TouchEventQueue;->mLastEventTime:J

    .line 13279
    .local v4, lastHandledEventTime:J
    const-wide/16 v8, 0x3e8

    add-long/2addr v8, v4

    cmp-long v8, v2, v8

    if-lez v8, :cond_4

    .line 13280
    const-string/jumbo v8, "webview"

    const-string v9, "Got ACTION_DOWN but still waiting on stale event. Catching up."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13282
    invoke-direct {p0}, Landroid/webkit/WebView$TouchEventQueue;->runQueuedAndPreQueuedEvents()V

    .line 13285
    iget-object v6, p0, Landroid/webkit/WebView$TouchEventQueue;->mTouchEventQueue:Landroid/webkit/WebView$QueuedTouch;

    .line 13286
    .local v6, qd:Landroid/webkit/WebView$QueuedTouch;
    :goto_1
    if-eqz v6, :cond_3

    iget-wide v8, v6, Landroid/webkit/WebView$QueuedTouch;->mSequence:J

    cmp-long v8, v8, p2

    if-gez v8, :cond_3

    .line 13287
    move-object v7, v6

    .line 13288
    .local v7, recycleMe:Landroid/webkit/WebView$QueuedTouch;
    iget-object v6, v6, Landroid/webkit/WebView$QueuedTouch;->mNext:Landroid/webkit/WebView$QueuedTouch;

    .line 13289
    invoke-direct {p0, v7}, Landroid/webkit/WebView$TouchEventQueue;->recycleQueuedTouch(Landroid/webkit/WebView$QueuedTouch;)V

    goto :goto_1

    .line 13291
    .end local v7           #recycleMe:Landroid/webkit/WebView$QueuedTouch;
    :cond_3
    iput-object v6, p0, Landroid/webkit/WebView$TouchEventQueue;->mTouchEventQueue:Landroid/webkit/WebView$QueuedTouch;

    .line 13292
    const-wide/16 v8, 0x1

    sub-long v8, p2, v8

    iput-wide v8, p0, Landroid/webkit/WebView$TouchEventQueue;->mLastHandledTouchSequence:J

    .line 13296
    .end local v2           #eventTime:J
    .end local v4           #lastHandledEventTime:J
    .end local v6           #qd:Landroid/webkit/WebView$QueuedTouch;
    :cond_4
    iget-wide v8, p0, Landroid/webkit/WebView$TouchEventQueue;->mIgnoreUntilSequence:J

    const-wide/16 v10, 0x1

    sub-long/2addr v8, v10

    iget-wide v10, p0, Landroid/webkit/WebView$TouchEventQueue;->mLastHandledTouchSequence:J

    cmp-long v8, v8, v10

    if-lez v8, :cond_6

    .line 13297
    iget-object v6, p0, Landroid/webkit/WebView$TouchEventQueue;->mTouchEventQueue:Landroid/webkit/WebView$QueuedTouch;

    .line 13298
    .restart local v6       #qd:Landroid/webkit/WebView$QueuedTouch;
    :goto_2
    if-eqz v6, :cond_5

    iget-wide v8, v6, Landroid/webkit/WebView$QueuedTouch;->mSequence:J

    iget-wide v10, p0, Landroid/webkit/WebView$TouchEventQueue;->mIgnoreUntilSequence:J

    cmp-long v8, v8, v10

    if-gez v8, :cond_5

    .line 13299
    move-object v7, v6

    .line 13300
    .restart local v7       #recycleMe:Landroid/webkit/WebView$QueuedTouch;
    iget-object v6, v6, Landroid/webkit/WebView$QueuedTouch;->mNext:Landroid/webkit/WebView$QueuedTouch;

    .line 13301
    invoke-direct {p0, v7}, Landroid/webkit/WebView$TouchEventQueue;->recycleQueuedTouch(Landroid/webkit/WebView$QueuedTouch;)V

    goto :goto_2

    .line 13303
    .end local v7           #recycleMe:Landroid/webkit/WebView$QueuedTouch;
    :cond_5
    iput-object v6, p0, Landroid/webkit/WebView$TouchEventQueue;->mTouchEventQueue:Landroid/webkit/WebView$QueuedTouch;

    .line 13304
    iget-wide v8, p0, Landroid/webkit/WebView$TouchEventQueue;->mIgnoreUntilSequence:J

    const-wide/16 v10, 0x1

    sub-long/2addr v8, v10

    iput-wide v8, p0, Landroid/webkit/WebView$TouchEventQueue;->mLastHandledTouchSequence:J

    .line 13307
    .end local v6           #qd:Landroid/webkit/WebView$QueuedTouch;
    :cond_6
    iget-object v8, p0, Landroid/webkit/WebView$TouchEventQueue;->mPreQueue:Landroid/webkit/WebView$QueuedTouch;

    if-eqz v8, :cond_8

    .line 13309
    iget-object v6, p0, Landroid/webkit/WebView$TouchEventQueue;->mPreQueue:Landroid/webkit/WebView$QueuedTouch;

    .line 13310
    .restart local v6       #qd:Landroid/webkit/WebView$QueuedTouch;
    :goto_3
    if-eqz v6, :cond_7

    iget-wide v8, v6, Landroid/webkit/WebView$QueuedTouch;->mSequence:J

    iget-wide v10, p0, Landroid/webkit/WebView$TouchEventQueue;->mIgnoreUntilSequence:J

    cmp-long v8, v8, v10

    if-gez v8, :cond_7

    .line 13311
    move-object v7, v6

    .line 13312
    .restart local v7       #recycleMe:Landroid/webkit/WebView$QueuedTouch;
    iget-object v6, v6, Landroid/webkit/WebView$QueuedTouch;->mNext:Landroid/webkit/WebView$QueuedTouch;

    .line 13313
    invoke-direct {p0, v7}, Landroid/webkit/WebView$TouchEventQueue;->recycleQueuedTouch(Landroid/webkit/WebView$QueuedTouch;)V

    goto :goto_3

    .line 13315
    .end local v7           #recycleMe:Landroid/webkit/WebView$QueuedTouch;
    :cond_7
    iput-object v6, p0, Landroid/webkit/WebView$TouchEventQueue;->mPreQueue:Landroid/webkit/WebView$QueuedTouch;

    .line 13318
    .end local v6           #qd:Landroid/webkit/WebView$QueuedTouch;
    :cond_8
    iget-wide v8, p0, Landroid/webkit/WebView$TouchEventQueue;->mLastHandledTouchSequence:J

    cmp-long v8, p2, v8

    if-gtz v8, :cond_9

    const/4 v8, 0x1

    goto/16 :goto_0

    :cond_9
    const/4 v8, 0x0

    goto/16 :goto_0
.end method

.method public enqueueTouchEvent(Landroid/view/MotionEvent;)V
    .locals 8
    .parameter "ev"

    .prologue
    const-wide/16 v6, 0x1

    .line 13190
    invoke-virtual {p0}, Landroid/webkit/WebView$TouchEventQueue;->nextTouchSequence()J

    move-result-wide v1

    .line 13192
    .local v1, sequence:J
    sget-boolean v3, Landroid/webkit/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v3, :cond_0

    .line 13193
    const-string/jumbo v3, "webview"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enqueueTouchEvent"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mTouchMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mTouchMode:I
    invoke-static {v5}, Landroid/webkit/WebView;->access$1400(Landroid/webkit/WebView;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " numPointers="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13197
    :cond_0
    invoke-virtual {p0, p1, v1, v2}, Landroid/webkit/WebView$TouchEventQueue;->dropStaleGestures(Landroid/view/MotionEvent;J)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 13232
    :cond_1
    :goto_0
    return-void

    .line 13203
    :cond_2
    invoke-direct {p0}, Landroid/webkit/WebView$TouchEventQueue;->runNextQueuedEvents()V

    .line 13206
    iget-object v3, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mHandleTouchEventBeforePreventDefault:Z
    invoke-static {v3}, Landroid/webkit/WebView;->access$3800(Landroid/webkit/WebView;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 13207
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Landroid/webkit/WebView$TouchEventQueue;->handleTouchEventsBeforePreventDefault(Z)V

    .line 13210
    :cond_3
    iget-wide v3, p0, Landroid/webkit/WebView$TouchEventQueue;->mLastHandledTouchSequence:J

    add-long/2addr v3, v6

    cmp-long v3, v3, v1

    if-nez v3, :cond_5

    .line 13211
    invoke-direct {p0, p1}, Landroid/webkit/WebView$TouchEventQueue;->handleQueuedMotionEvent(Landroid/view/MotionEvent;)V

    .line 13213
    iget-wide v3, p0, Landroid/webkit/WebView$TouchEventQueue;->mLastHandledTouchSequence:J

    add-long/2addr v3, v6

    iput-wide v3, p0, Landroid/webkit/WebView$TouchEventQueue;->mLastHandledTouchSequence:J

    .line 13215
    sget-boolean v3, Landroid/webkit/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v3, :cond_4

    .line 13216
    const-string/jumbo v3, "webview"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enqueueTouchEvent is processed directly sequence = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mLastHandledTouchSequence =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Landroid/webkit/WebView$TouchEventQueue;->mLastHandledTouchSequence:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13221
    :cond_4
    invoke-direct {p0}, Landroid/webkit/WebView$TouchEventQueue;->runNextQueuedEvents()V

    goto :goto_0

    .line 13223
    :cond_5
    invoke-direct {p0}, Landroid/webkit/WebView$TouchEventQueue;->obtainQueuedTouch()Landroid/webkit/WebView$QueuedTouch;

    move-result-object v3

    invoke-virtual {v3, p1, v1, v2}, Landroid/webkit/WebView$QueuedTouch;->set(Landroid/view/MotionEvent;J)Landroid/webkit/WebView$QueuedTouch;

    move-result-object v0

    .line 13224
    .local v0, qd:Landroid/webkit/WebView$QueuedTouch;
    iget-object v3, p0, Landroid/webkit/WebView$TouchEventQueue;->mTouchEventQueue:Landroid/webkit/WebView$QueuedTouch;

    if-nez v3, :cond_6

    .end local v0           #qd:Landroid/webkit/WebView$QueuedTouch;
    :goto_1
    iput-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->mTouchEventQueue:Landroid/webkit/WebView$QueuedTouch;

    .line 13226
    sget-boolean v3, Landroid/webkit/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v3, :cond_1

    .line 13227
    const-string/jumbo v3, "webview"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enqueueTouchEvent is added to mTouchEventQueue sequence = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mLastHandledTouchSequence =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Landroid/webkit/WebView$TouchEventQueue;->mLastHandledTouchSequence:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 13224
    .restart local v0       #qd:Landroid/webkit/WebView$QueuedTouch;
    :cond_6
    iget-object v3, p0, Landroid/webkit/WebView$TouchEventQueue;->mTouchEventQueue:Landroid/webkit/WebView$QueuedTouch;

    invoke-virtual {v3, v0}, Landroid/webkit/WebView$QueuedTouch;->add(Landroid/webkit/WebView$QueuedTouch;)Landroid/webkit/WebView$QueuedTouch;

    move-result-object v0

    goto :goto_1
.end method

.method public enqueueTouchEvent(Landroid/webkit/WebViewCore$TouchEventData;)Z
    .locals 11
    .parameter "ted"

    .prologue
    const-wide/16 v9, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 13061
    sget-boolean v5, Landroid/webkit/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v5, :cond_0

    .line 13062
    const-string/jumbo v5, "webview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "enqueueTouchEvent TED "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p1, Landroid/webkit/WebViewCore$TouchEventData;->mSequence:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mTouchMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mTouchMode:I
    invoke-static {v7}, Landroid/webkit/WebView;->access$1400(Landroid/webkit/WebView;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13068
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->mPreQueue:Landroid/webkit/WebView$QueuedTouch;

    .line 13069
    .local v0, preQueue:Landroid/webkit/WebView$QueuedTouch;
    if-eqz v0, :cond_1

    .line 13072
    iget-wide v5, v0, Landroid/webkit/WebView$QueuedTouch;->mSequence:J

    iget-wide v7, p1, Landroid/webkit/WebViewCore$TouchEventData;->mSequence:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_4

    .line 13073
    iget-object v5, v0, Landroid/webkit/WebView$QueuedTouch;->mNext:Landroid/webkit/WebView$QueuedTouch;

    iput-object v5, p0, Landroid/webkit/WebView$TouchEventQueue;->mPreQueue:Landroid/webkit/WebView$QueuedTouch;

    .line 13089
    :cond_1
    :goto_0
    iget-wide v5, p1, Landroid/webkit/WebViewCore$TouchEventData;->mSequence:J

    iget-wide v7, p0, Landroid/webkit/WebView$TouchEventQueue;->mLastHandledTouchSequence:J

    cmp-long v5, v5, v7

    if-gez v5, :cond_7

    .line 13091
    const-string/jumbo v5, "webview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Stale touch event "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    invoke-static {v7}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " received from webcore; ignoring"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13098
    iget-object v5, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mHandleTouchEventBeforePreventDefault:Z
    invoke-static {v5}, Landroid/webkit/WebView;->access$3800(Landroid/webkit/WebView;)Z

    move-result v5

    if-ne v5, v3, :cond_6

    .line 13099
    iget-object v5, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mPreventDefault:I
    invoke-static {v5}, Landroid/webkit/WebView;->access$3900(Landroid/webkit/WebView;)I

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mPreventDefault:I
    invoke-static {v5}, Landroid/webkit/WebView;->access$3900(Landroid/webkit/WebView;)I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_6

    iget-object v5, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mPreventDefault:I
    invoke-static {v5}, Landroid/webkit/WebView;->access$3900(Landroid/webkit/WebView;)I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_6

    .line 13102
    sget-boolean v4, Landroid/webkit/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v4, :cond_2

    .line 13103
    const-string/jumbo v4, "webview"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enqueueTouchEvent TED before handle stales events mPreventDefault = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/webkit/WebView$TouchEventQueue;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mPreventDefault:I
    invoke-static {v6}, Landroid/webkit/WebView;->access$3900(Landroid/webkit/WebView;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ted.mSequence = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p1, Landroid/webkit/WebViewCore$TouchEventData;->mSequence:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mLastHandledTouchSequence = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Landroid/webkit/WebView$TouchEventQueue;->mLastHandledTouchSequence:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13107
    :cond_2
    invoke-direct {p0, p1}, Landroid/webkit/WebView$TouchEventQueue;->handleQueuedTouchEventData(Landroid/webkit/WebViewCore$TouchEventData;)V

    .line 13148
    :cond_3
    :goto_1
    return v3

    .line 13075
    :cond_4
    move-object v1, v0

    .line 13076
    .local v1, prev:Landroid/webkit/WebView$QueuedTouch;
    const/4 v0, 0x0

    .line 13077
    :goto_2
    iget-object v5, v1, Landroid/webkit/WebView$QueuedTouch;->mNext:Landroid/webkit/WebView$QueuedTouch;

    if-eqz v5, :cond_1

    .line 13078
    iget-object v5, v1, Landroid/webkit/WebView$QueuedTouch;->mNext:Landroid/webkit/WebView$QueuedTouch;

    iget-wide v5, v5, Landroid/webkit/WebView$QueuedTouch;->mSequence:J

    iget-wide v7, p1, Landroid/webkit/WebViewCore$TouchEventData;->mSequence:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_5

    .line 13079
    iget-object v0, v1, Landroid/webkit/WebView$QueuedTouch;->mNext:Landroid/webkit/WebView$QueuedTouch;

    .line 13080
    iget-object v5, v0, Landroid/webkit/WebView$QueuedTouch;->mNext:Landroid/webkit/WebView$QueuedTouch;

    iput-object v5, v1, Landroid/webkit/WebView$QueuedTouch;->mNext:Landroid/webkit/WebView$QueuedTouch;

    goto/16 :goto_0

    .line 13083
    :cond_5
    iget-object v1, v1, Landroid/webkit/WebView$QueuedTouch;->mNext:Landroid/webkit/WebView$QueuedTouch;

    goto :goto_2

    .end local v1           #prev:Landroid/webkit/WebView$QueuedTouch;
    :cond_6
    move v3, v4

    .line 13114
    goto :goto_1

    .line 13117
    :cond_7
    iget-object v5, p1, Landroid/webkit/WebViewCore$TouchEventData;->mMotionEvent:Landroid/view/MotionEvent;

    iget-wide v6, p1, Landroid/webkit/WebViewCore$TouchEventData;->mSequence:J

    invoke-virtual {p0, v5, v6, v7}, Landroid/webkit/WebView$TouchEventQueue;->dropStaleGestures(Landroid/view/MotionEvent;J)Z

    move-result v5

    if-eqz v5, :cond_8

    move v3, v4

    .line 13118
    goto :goto_1

    .line 13123
    :cond_8
    invoke-direct {p0}, Landroid/webkit/WebView$TouchEventQueue;->runNextQueuedEvents()V

    .line 13125
    iget-wide v4, p0, Landroid/webkit/WebView$TouchEventQueue;->mLastHandledTouchSequence:J

    add-long/2addr v4, v9

    iget-wide v6, p1, Landroid/webkit/WebViewCore$TouchEventData;->mSequence:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_b

    .line 13126
    if-eqz v0, :cond_9

    .line 13127
    invoke-direct {p0, v0}, Landroid/webkit/WebView$TouchEventQueue;->recycleQueuedTouch(Landroid/webkit/WebView$QueuedTouch;)V

    .line 13128
    const/4 v0, 0x0

    .line 13130
    :cond_9
    invoke-direct {p0, p1}, Landroid/webkit/WebView$TouchEventQueue;->handleQueuedTouchEventData(Landroid/webkit/WebViewCore$TouchEventData;)V

    .line 13132
    iget-wide v4, p0, Landroid/webkit/WebView$TouchEventQueue;->mLastHandledTouchSequence:J

    add-long/2addr v4, v9

    iput-wide v4, p0, Landroid/webkit/WebView$TouchEventQueue;->mLastHandledTouchSequence:J

    .line 13134
    sget-boolean v4, Landroid/webkit/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v4, :cond_a

    .line 13135
    const-string/jumbo v4, "webview"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enqueueTouchEvent TED"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p1, Landroid/webkit/WebViewCore$TouchEventData;->mSequence:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is processed directly, mLastHandledTouchSequence =  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Landroid/webkit/WebView$TouchEventQueue;->mLastHandledTouchSequence:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13138
    :cond_a
    invoke-direct {p0}, Landroid/webkit/WebView$TouchEventQueue;->runNextQueuedEvents()V

    goto :goto_1

    .line 13141
    :cond_b
    if-eqz v0, :cond_c

    move-object v2, v0

    .line 13142
    .local v2, qd:Landroid/webkit/WebView$QueuedTouch;
    :goto_3
    iget-object v4, p0, Landroid/webkit/WebView$TouchEventQueue;->mTouchEventQueue:Landroid/webkit/WebView$QueuedTouch;

    if-nez v4, :cond_d

    .end local v2           #qd:Landroid/webkit/WebView$QueuedTouch;
    :goto_4
    iput-object v2, p0, Landroid/webkit/WebView$TouchEventQueue;->mTouchEventQueue:Landroid/webkit/WebView$QueuedTouch;

    .line 13144
    sget-boolean v4, Landroid/webkit/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v4, :cond_3

    .line 13145
    const-string/jumbo v4, "webview"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enqueueTouchEvent TED"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p1, Landroid/webkit/WebViewCore$TouchEventData;->mSequence:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is added queue, mLastHandledTouchSequence =  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Landroid/webkit/WebView$TouchEventQueue;->mLastHandledTouchSequence:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 13141
    :cond_c
    invoke-direct {p0}, Landroid/webkit/WebView$TouchEventQueue;->obtainQueuedTouch()Landroid/webkit/WebView$QueuedTouch;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/webkit/WebView$QueuedTouch;->set(Landroid/webkit/WebViewCore$TouchEventData;)Landroid/webkit/WebView$QueuedTouch;

    move-result-object v2

    goto :goto_3

    .line 13142
    .restart local v2       #qd:Landroid/webkit/WebView$QueuedTouch;
    :cond_d
    iget-object v4, p0, Landroid/webkit/WebView$TouchEventQueue;->mTouchEventQueue:Landroid/webkit/WebView$QueuedTouch;

    invoke-virtual {v4, v2}, Landroid/webkit/WebView$QueuedTouch;->add(Landroid/webkit/WebView$QueuedTouch;)Landroid/webkit/WebView$QueuedTouch;

    move-result-object v2

    goto :goto_4
.end method

.method public ignoreCurrentlyMissingEvents()V
    .locals 2

    .prologue
    .line 12945
    iget-wide v0, p0, Landroid/webkit/WebView$TouchEventQueue;->mNextTouchSequence:J

    iput-wide v0, p0, Landroid/webkit/WebView$TouchEventQueue;->mIgnoreUntilSequence:J

    .line 12948
    invoke-direct {p0}, Landroid/webkit/WebView$TouchEventQueue;->runQueuedAndPreQueuedEvents()V

    .line 12949
    return-void
.end method

.method public nextTouchSequence()J
    .locals 4

    .prologue
    .line 13045
    iget-wide v0, p0, Landroid/webkit/WebView$TouchEventQueue;->mNextTouchSequence:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Landroid/webkit/WebView$TouchEventQueue;->mNextTouchSequence:J

    return-wide v0
.end method

.method public preQueueTouchEventData(Landroid/webkit/WebViewCore$TouchEventData;)V
    .locals 6
    .parameter "ted"

    .prologue
    .line 12998
    invoke-direct {p0}, Landroid/webkit/WebView$TouchEventQueue;->obtainQueuedTouch()Landroid/webkit/WebView$QueuedTouch;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/webkit/WebView$QueuedTouch;->set(Landroid/webkit/WebViewCore$TouchEventData;)Landroid/webkit/WebView$QueuedTouch;

    move-result-object v1

    .line 12999
    .local v1, newTouch:Landroid/webkit/WebView$QueuedTouch;
    iget-object v2, p0, Landroid/webkit/WebView$TouchEventQueue;->mPreQueue:Landroid/webkit/WebView$QueuedTouch;

    if-nez v2, :cond_0

    .line 13000
    iput-object v1, p0, Landroid/webkit/WebView$TouchEventQueue;->mPreQueue:Landroid/webkit/WebView$QueuedTouch;

    .line 13010
    :goto_0
    return-void

    .line 13002
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->mPreQueue:Landroid/webkit/WebView$QueuedTouch;

    .line 13004
    .local v0, insertionPoint:Landroid/webkit/WebView$QueuedTouch;
    :goto_1
    iget-object v2, v0, Landroid/webkit/WebView$QueuedTouch;->mNext:Landroid/webkit/WebView$QueuedTouch;

    if-eqz v2, :cond_1

    iget-object v2, v0, Landroid/webkit/WebView$QueuedTouch;->mNext:Landroid/webkit/WebView$QueuedTouch;

    iget-wide v2, v2, Landroid/webkit/WebView$QueuedTouch;->mSequence:J

    iget-wide v4, v1, Landroid/webkit/WebView$QueuedTouch;->mSequence:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 13005
    iget-object v0, v0, Landroid/webkit/WebView$QueuedTouch;->mNext:Landroid/webkit/WebView$QueuedTouch;

    goto :goto_1

    .line 13007
    :cond_1
    iget-object v2, v0, Landroid/webkit/WebView$QueuedTouch;->mNext:Landroid/webkit/WebView$QueuedTouch;

    iput-object v2, v1, Landroid/webkit/WebView$QueuedTouch;->mNext:Landroid/webkit/WebView$QueuedTouch;

    .line 13008
    iput-object v1, v0, Landroid/webkit/WebView$QueuedTouch;->mNext:Landroid/webkit/WebView$QueuedTouch;

    goto :goto_0
.end method

.method public reset()V
    .locals 5

    .prologue
    const-wide v3, -0x7fffffffffffffffL

    .line 13025
    iput-wide v3, p0, Landroid/webkit/WebView$TouchEventQueue;->mNextTouchSequence:J

    .line 13026
    const-wide/high16 v1, -0x8000

    iput-wide v1, p0, Landroid/webkit/WebView$TouchEventQueue;->mLastHandledTouchSequence:J

    .line 13027
    iput-wide v3, p0, Landroid/webkit/WebView$TouchEventQueue;->mIgnoreUntilSequence:J

    .line 13028
    :goto_0
    iget-object v1, p0, Landroid/webkit/WebView$TouchEventQueue;->mTouchEventQueue:Landroid/webkit/WebView$QueuedTouch;

    if-eqz v1, :cond_0

    .line 13029
    iget-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->mTouchEventQueue:Landroid/webkit/WebView$QueuedTouch;

    .line 13030
    .local v0, recycleMe:Landroid/webkit/WebView$QueuedTouch;
    iget-object v1, p0, Landroid/webkit/WebView$TouchEventQueue;->mTouchEventQueue:Landroid/webkit/WebView$QueuedTouch;

    iget-object v1, v1, Landroid/webkit/WebView$QueuedTouch;->mNext:Landroid/webkit/WebView$QueuedTouch;

    iput-object v1, p0, Landroid/webkit/WebView$TouchEventQueue;->mTouchEventQueue:Landroid/webkit/WebView$QueuedTouch;

    .line 13031
    invoke-direct {p0, v0}, Landroid/webkit/WebView$TouchEventQueue;->recycleQueuedTouch(Landroid/webkit/WebView$QueuedTouch;)V

    goto :goto_0

    .line 13033
    .end local v0           #recycleMe:Landroid/webkit/WebView$QueuedTouch;
    :cond_0
    :goto_1
    iget-object v1, p0, Landroid/webkit/WebView$TouchEventQueue;->mPreQueue:Landroid/webkit/WebView$QueuedTouch;

    if-eqz v1, :cond_1

    .line 13034
    iget-object v0, p0, Landroid/webkit/WebView$TouchEventQueue;->mPreQueue:Landroid/webkit/WebView$QueuedTouch;

    .line 13035
    .restart local v0       #recycleMe:Landroid/webkit/WebView$QueuedTouch;
    iget-object v1, p0, Landroid/webkit/WebView$TouchEventQueue;->mPreQueue:Landroid/webkit/WebView$QueuedTouch;

    iget-object v1, v1, Landroid/webkit/WebView$QueuedTouch;->mNext:Landroid/webkit/WebView$QueuedTouch;

    iput-object v1, p0, Landroid/webkit/WebView$TouchEventQueue;->mPreQueue:Landroid/webkit/WebView$QueuedTouch;

    .line 13036
    invoke-direct {p0, v0}, Landroid/webkit/WebView$TouchEventQueue;->recycleQueuedTouch(Landroid/webkit/WebView$QueuedTouch;)V

    goto :goto_1

    .line 13038
    .end local v0           #recycleMe:Landroid/webkit/WebView$QueuedTouch;
    :cond_1
    return-void
.end method
