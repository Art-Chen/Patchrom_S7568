.class public final Lcom/android/server/wm/InputWindowHandle;
.super Ljava/lang/Object;
.source "InputWindowHandle.java"


# instance fields
.field public canReceiveKeys:Z

.field public dispatchingTimeoutNanos:J

.field public frameBottom:I

.field public frameLeft:I

.field public frameRight:I

.field public frameTop:I

.field public hasFocus:Z

.field public hasWallpaper:Z

.field public final inputApplicationHandle:Lcom/android/server/wm/InputApplicationHandle;

.field public inputChannel:Landroid/view/InputChannel;

.field public inputFeatures:I

.field public layer:I

.field public layoutParamsFlags:I

.field public layoutParamsType:I

.field public name:Ljava/lang/String;

.field public ownerPid:I

.field public ownerUid:I

.field public paused:Z

.field private ptr:I

.field public scaleFactor:F

.field public final touchableRegion:Landroid/graphics/Region;

.field public visible:Z

.field public final windowState:Landroid/view/WindowManagerPolicy$WindowState;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/InputApplicationHandle;Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 1
    .parameter "inputApplicationHandle"
    .parameter "windowState"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    iput-object p1, p0, Lcom/android/server/wm/InputWindowHandle;->inputApplicationHandle:Lcom/android/server/wm/InputApplicationHandle;

    iput-object p2, p0, Lcom/android/server/wm/InputWindowHandle;->windowState:Landroid/view/WindowManagerPolicy$WindowState;

    return-void
.end method

.method private native nativeDispose()V
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wm/InputWindowHandle;->nativeDispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
