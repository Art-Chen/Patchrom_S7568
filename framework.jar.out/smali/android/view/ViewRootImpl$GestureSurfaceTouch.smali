.class final Landroid/view/ViewRootImpl$GestureSurfaceTouch;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "GestureSurfaceTouch"
.end annotation


# instance fields
.field private final TOUCH_DISABLE:I

.field private final TOUCH_ENABLE:I

.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor <init>(Landroid/view/ViewRootImpl;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "baseContext"

    .prologue
    .line 469
    iput-object p1, p0, Landroid/view/ViewRootImpl$GestureSurfaceTouch;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 466
    const/4 v0, 0x1

    iput v0, p0, Landroid/view/ViewRootImpl$GestureSurfaceTouch;->TOUCH_DISABLE:I

    .line 467
    const/4 v0, 0x2

    iput v0, p0, Landroid/view/ViewRootImpl$GestureSurfaceTouch;->TOUCH_ENABLE:I

    .line 470
    iput-object p2, p0, Landroid/view/ViewRootImpl$GestureSurfaceTouch;->mContext:Landroid/content/Context;

    .line 471
    return-void
.end method


# virtual methods
.method public onInitSweep(I)Z
    .locals 1
    .parameter "status"

    .prologue
    .line 502
    const/4 v0, 0x0

    return v0
.end method

.method public onPalm(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 521
    const/4 v0, 0x0

    return v0
.end method

.method public onSweepDown(I)Z
    .locals 1
    .parameter "direction"

    .prologue
    .line 490
    const/4 v0, 0x0

    return v0
.end method

.method public onTwist(Landroid/view/MotionEvent;Landroid/view/MotionEvent;F)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "angle"

    .prologue
    .line 537
    const/4 v0, 0x0

    return v0
.end method
