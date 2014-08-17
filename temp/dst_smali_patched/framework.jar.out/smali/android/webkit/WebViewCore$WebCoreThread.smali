.class Landroid/webkit/WebViewCore$WebCoreThread;
.super Ljava/lang/Object;
.source "WebViewCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WebCoreThread"
.end annotation


# static fields
.field private static final INITIALIZE:I = 0x0

.field private static final REDUCE_PRIORITY:I = 0x1

.field private static final RESUME_PRIORITY:I = 0x2


# instance fields
.field private core:Landroid/webkit/WebViewCore;

.field private tid:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebViewCore$WebCoreThread;->core:Landroid/webkit/WebViewCore;

    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/WebViewCore$WebCoreThread;->tid:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/WebViewCore$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebViewCore$WebCoreThread;-><init>()V

    return-void
.end method

.method static synthetic access$500(Landroid/webkit/WebViewCore$WebCoreThread;)Landroid/webkit/WebViewCore;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/webkit/WebViewCore$WebCoreThread;->core:Landroid/webkit/WebViewCore;

    return-object v0
.end method

.method static synthetic access$502(Landroid/webkit/WebViewCore$WebCoreThread;Landroid/webkit/WebViewCore;)Landroid/webkit/WebViewCore;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Landroid/webkit/WebViewCore$WebCoreThread;->core:Landroid/webkit/WebViewCore;

    return-object p1
.end method

.method static synthetic access$700(Landroid/webkit/WebViewCore$WebCoreThread;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/webkit/WebViewCore$WebCoreThread;->tid:I

    return v0
.end method

.method static synthetic access$702(Landroid/webkit/WebViewCore$WebCoreThread;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Landroid/webkit/WebViewCore$WebCoreThread;->tid:I

    return p1
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    invoke-static {}, Landroid/os/Looper;->prepare()V

    invoke-static {}, Landroid/webkit/WebViewCore;->access$400()Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Ljunit/framework/Assert;->assertNull(Ljava/lang/Object;)V

    const-class v1, Landroid/webkit/WebViewCore;

    monitor-enter v1

    :try_start_0
    new-instance v0, Landroid/webkit/WebViewCore$WebCoreThread$1;

    invoke-direct {v0, p0}, Landroid/webkit/WebViewCore$WebCoreThread$1;-><init>(Landroid/webkit/WebViewCore$WebCoreThread;)V

    invoke-static {v0}, Landroid/webkit/WebViewCore;->access$402(Landroid/os/Handler;)Landroid/os/Handler;

    const-class v0, Landroid/webkit/WebViewCore;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
