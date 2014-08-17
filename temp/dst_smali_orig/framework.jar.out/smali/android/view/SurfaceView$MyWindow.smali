.class Landroid/view/SurfaceView$MyWindow;
.super Lcom/android/internal/view/BaseIWindow;
.source "SurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyWindow"
.end annotation


# instance fields
.field mCurHeight:I

.field mCurWidth:I

.field private final mSurfaceView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/SurfaceView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/SurfaceView;)V
    .locals 1
    .parameter "surfaceView"

    .prologue
    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/android/internal/view/BaseIWindow;-><init>()V

    iput v0, p0, Landroid/view/SurfaceView$MyWindow;->mCurWidth:I

    iput v0, p0, Landroid/view/SurfaceView$MyWindow;->mCurHeight:I

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/view/SurfaceView$MyWindow;->mSurfaceView:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic access$100(Landroid/view/SurfaceView$MyWindow;)Ljava/lang/ref/WeakReference;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/view/SurfaceView$MyWindow;->mSurfaceView:Ljava/lang/ref/WeakReference;

    return-object v0
.end method


# virtual methods
.method public dispatchAppVisibility(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    return-void
.end method

.method public dispatchGetNewSurface()V
    .locals 4

    .prologue
    iget-object v2, p0, Landroid/view/SurfaceView$MyWindow;->mSurfaceView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceView;

    .local v1, surfaceView:Landroid/view/SurfaceView;
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/view/SurfaceView;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    iget-object v2, v1, Landroid/view/SurfaceView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public executeCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .locals 0
    .parameter "command"
    .parameter "parameters"
    .parameter "out"

    .prologue
    return-void
.end method

.method public resized(IILandroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/content/res/Configuration;)V
    .locals 8
    .parameter "w"
    .parameter "h"
    .parameter "coveredInsets"
    .parameter "visibleInsets"
    .parameter "reportDraw"
    .parameter "newConfig"

    .prologue
    move v2, p1

    .local v2, _w:I
    move v0, p2

    .local v0, _h:I
    move v1, p5

    .local v1, _reportDraw:Z
    new-instance v3, Landroid/view/SurfaceView$MyWindow$1;

    invoke-direct {v3, p0, v2, v0, v1}, Landroid/view/SurfaceView$MyWindow$1;-><init>(Landroid/view/SurfaceView$MyWindow;IIZ)V

    .local v3, resizedJob:Ljava/lang/Runnable;
    invoke-static {}, Landroid/view/SurfaceView$MyWindow;->getCallingPid()I

    move-result v6

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    if-ne v6, v7, :cond_1

    const/4 v4, 0x1

    .local v4, runningInSystemProcess:Z
    :goto_0
    if-eqz v4, :cond_2

    const-string v6, "SurfaceView"

    const-string v7, "SurfaceView.MyWindow.resized() is call in system process."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Landroid/view/SurfaceView$MyWindow;->mSurfaceView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/SurfaceView;

    .local v5, surfaceView:Landroid/view/SurfaceView;
    if-eqz v5, :cond_0

    invoke-virtual {v5, v3}, Landroid/view/SurfaceView;->post(Ljava/lang/Runnable;)Z

    .end local v5           #surfaceView:Landroid/view/SurfaceView;
    :cond_0
    :goto_1
    return-void

    .end local v4           #runningInSystemProcess:Z
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .restart local v4       #runningInSystemProcess:Z
    :cond_2
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    goto :goto_1
.end method

.method public windowFocusChanged(ZZ)V
    .locals 3
    .parameter "hasFocus"
    .parameter "touchEnabled"

    .prologue
    const-string v0, "SurfaceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected focus in surface: focus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", touchEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
