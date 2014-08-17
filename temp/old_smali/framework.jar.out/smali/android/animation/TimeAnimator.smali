.class public Landroid/animation/TimeAnimator;
.super Landroid/animation/ValueAnimator;
.source "TimeAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/animation/TimeAnimator$TimeListener;
    }
.end annotation


# instance fields
.field private mListener:Landroid/animation/TimeAnimator$TimeListener;

.field private mPreviousTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/animation/TimeAnimator;->mPreviousTime:J

    return-void
.end method


# virtual methods
.method animateValue(F)V
    .locals 0
    .parameter "fraction"

    .prologue
    return-void
.end method

.method animationFrame(J)Z
    .locals 6
    .parameter "currentTime"

    .prologue
    const-wide/16 v4, 0x0

    iget v0, p0, Landroid/animation/TimeAnimator;->mPlayingState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Landroid/animation/TimeAnimator;->mPlayingState:I

    iget-wide v0, p0, Landroid/animation/TimeAnimator;->mSeekTime:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_2

    iput-wide p1, p0, Landroid/animation/TimeAnimator;->mStartTime:J

    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/animation/TimeAnimator;->mListener:Landroid/animation/TimeAnimator$TimeListener;

    if-eqz v0, :cond_1

    iget-wide v0, p0, Landroid/animation/TimeAnimator;->mStartTime:J

    sub-long v2, p1, v0

    .local v2, totalTime:J
    iget-wide v0, p0, Landroid/animation/TimeAnimator;->mPreviousTime:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_3

    .local v4, deltaTime:J
    :goto_1
    iput-wide p1, p0, Landroid/animation/TimeAnimator;->mPreviousTime:J

    iget-object v0, p0, Landroid/animation/TimeAnimator;->mListener:Landroid/animation/TimeAnimator$TimeListener;

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Landroid/animation/TimeAnimator$TimeListener;->onTimeUpdate(Landroid/animation/TimeAnimator;JJ)V

    .end local v2           #totalTime:J
    .end local v4           #deltaTime:J
    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    iget-wide v0, p0, Landroid/animation/TimeAnimator;->mSeekTime:J

    sub-long v0, p1, v0

    iput-wide v0, p0, Landroid/animation/TimeAnimator;->mStartTime:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/animation/TimeAnimator;->mSeekTime:J

    goto :goto_0

    .restart local v2       #totalTime:J
    :cond_3
    iget-wide v0, p0, Landroid/animation/TimeAnimator;->mPreviousTime:J

    sub-long v4, p1, v0

    goto :goto_1
.end method

.method initAnimation()V
    .locals 0

    .prologue
    return-void
.end method

.method public setTimeListener(Landroid/animation/TimeAnimator$TimeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    iput-object p1, p0, Landroid/animation/TimeAnimator;->mListener:Landroid/animation/TimeAnimator$TimeListener;

    return-void
.end method
