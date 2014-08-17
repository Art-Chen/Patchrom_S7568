.class public Lcom/android/internal/policy/impl/CircleUnlockRipple;
.super Landroid/opengl/GLSurfaceView;
.source "CircleUnlockRipple.java"

# interfaces
.implements Lcom/android/internal/policy/impl/CircleUnlockWidget;


# static fields
.field private static final AWAKE_INTERVAL_DEFAULT_MS:I = 0x2710

.field private static final MAX_AWAKE_TIME:I = 0x7530


# instance fields
.field private final DBG:Z

.field private final TAG:Ljava/lang/String;

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mContext:Landroid/content/Context;

.field private mIsFirst:Z

.field private mOnCircleTouchListener:Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleTouchListener;

.field private mOnCircleUnlockListener:Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleUnlockListener;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mRenderer:Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;

.field private mResumedTimeMillis:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 8
    .parameter "context"
    .parameter "callback"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v1, 0x8

    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/CircleUnlockRipple;->DBG:Z

    const-string v0, "CircleUnlockRipple"

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRipple;->TAG:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRipple;->mIsFirst:Z

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRipple;->mResumedTimeMillis:J

    iput-object p1, p0, Lcom/android/internal/policy/impl/CircleUnlockRipple;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/internal/policy/impl/CircleUnlockRipple;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRipple;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRipple;->mPowerManager:Landroid/os/PowerManager;

    new-instance v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;

    invoke-direct {v0, p1, p0, p2}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRipple;->mRenderer:Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRipple;->mRenderer:Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;

    const/high16 v2, 0x110

    const v3, 0x1100008

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->setSoundRID(II)V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleUnlockRipple;->detectOpenGLES20()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/CircleUnlockRipple;->setEGLContextClientVersion(I)V

    const/16 v5, 0x10

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/policy/impl/CircleUnlockRipple;->setEGLConfigChooser(IIIIII)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRipple;->mRenderer:Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/CircleUnlockRipple;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/CircleUnlockRipple;->setRenderMode(I)V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleUnlockRipple;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRipple;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isDualLCDDevice(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/CircleUnlockRipple;->setDrawingOnWindowResize(Z)V

    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRipple;->mResumedTimeMillis:J

    return-void

    :cond_1
    const-string v0, "WaterEffect"

    const-string v1, "this machine does not support OpenGL ES2.0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private detectOpenGLES20()Z
    .locals 4

    .prologue
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRipple;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v1

    .local v1, info:Landroid/content/pm/ConfigurationInfo;
    iget v2, v1, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    const/high16 v3, 0x2

    if-lt v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private pokeWakelockWithTimeCheck()V
    .locals 11

    .prologue
    const-wide/16 v9, 0x7530

    const-wide/16 v7, 0x4e20

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .local v2, now:J
    iget-wide v4, p0, Lcom/android/internal/policy/impl/CircleUnlockRipple;->mResumedTimeMillis:J

    sub-long v0, v2, v4

    .local v0, diff:J
    const-string v4, "CircleUnlockRipple"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pokeWakelockWithTimeCheck time diffence = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v4, v0, v7

    if-gtz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleUnlockRipple;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v5, 0x2710

    invoke-interface {v4, v5}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    const-string v4, "CircleUnlockRipple"

    const-string v5, "pokeWakelockWithTimeCheck mCallback.pokeWakelock(AWAKE_INTERVAL_DEFAULT_MS)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    cmp-long v4, v0, v7

    if-lez v4, :cond_1

    cmp-long v4, v0, v9

    if-gez v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleUnlockRipple;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    long-to-int v5, v0

    rsub-int v5, v5, 0x7530

    invoke-interface {v4, v5}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    const-string v4, "CircleUnlockRipple"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pokeWakelockWithTimeCheck mCallback.pokeWakelock("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v6, v9, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v4, "CircleUnlockRipple"

    const-string v5, "pokeWakelockWithTimeCheck do nothing"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRipple;->mRenderer:Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->cleanUp()V

    return-void
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 1
    .parameter "region"

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public handleTickerTouchEvent(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleUnlockRipple;->getRenderMode()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/CircleUnlockRipple;->setRenderMode(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRipple;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRipple;->mRenderer:Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tikerRippleForMove(F)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRipple;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRipple;->mRenderer:Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tikerRippleForMove(F)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRipple;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "view"
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    const-string v1, "CircleUnlockRipple"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleTouchEvent event : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRipple;->mRenderer:Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mouseMove(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    .local v0, result:Z
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRipple;->mIsFirst:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRipple;->mIsFirst:Z

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRipple;->mOnCircleUnlockListener:Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleUnlockListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRipple;->mOnCircleUnlockListener:Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleUnlockListener;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleUnlockListener;->onCircleUnlocked(Landroid/view/View;)V

    :cond_1
    return v4

    .end local v0           #result:Z
    :pswitch_0
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/CircleUnlockRipple;->mIsFirst:Z

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/CircleUnlockRipple;->setRenderMode(I)V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleUnlockRipple;->pokeWakelockWithTimeCheck()V

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRipple;->mOnCircleTouchListener:Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleTouchListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRipple;->mOnCircleTouchListener:Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleTouchListener;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleTouchListener;->onCircleTouchDown(Landroid/view/View;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleUnlockRipple;->pokeWakelockWithTimeCheck()V

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRipple;->mOnCircleTouchListener:Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleTouchListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRipple;->mOnCircleTouchListener:Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleTouchListener;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleTouchListener;->onCircleTouchMove(Landroid/view/View;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleUnlockRipple;->pokeWakelockWithTimeCheck()V

    :pswitch_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRipple;->mOnCircleTouchListener:Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleTouchListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRipple;->mOnCircleTouchListener:Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleTouchListener;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleTouchListener;->onCircleTouchUp(Landroid/view/View;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/CircleUnlockRipple;->setRenderMode(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRipple;->mRenderer:Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRipple;->mRenderer:Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->onResume()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRipple;->mResumedTimeMillis:J

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0
    .parameter "visibility"

    .prologue
    if-nez p1, :cond_0

    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->onWindowVisibilityChanged(I)V

    :cond_0
    return-void
.end method

.method public setOnCircleTouchListener(Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleTouchListener;)V
    .locals 0
    .parameter "onCircleTouchListener"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/CircleUnlockRipple;->mOnCircleTouchListener:Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleTouchListener;

    return-void
.end method

.method public setOnCircleUnlockListener(Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleUnlockListener;)V
    .locals 0
    .parameter "onCircleUnlockListener"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/CircleUnlockRipple;->mOnCircleUnlockListener:Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleUnlockListener;

    return-void
.end method

.method public setStartLocation(I)V
    .locals 3
    .parameter "startLocation"

    .prologue
    const-string v0, "CircleUnlockRipple"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStartLocation ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRipple;->mRenderer:Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->setStartLocation(I)V

    return-void
.end method

.method public tikerRippleForClose()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleUnlockRipple;->getRenderMode()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/CircleUnlockRipple;->setRenderMode(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRipple;->mRenderer:Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tikerRippleForClose()V

    return-void
.end method

.method public tikerRippleForOpen()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleUnlockRipple;->getRenderMode()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/CircleUnlockRipple;->setRenderMode(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRipple;->mRenderer:Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tikerRippleForOpen()V

    return-void
.end method
