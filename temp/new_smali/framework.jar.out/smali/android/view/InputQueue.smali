.class public final Landroid/view/InputQueue;
.super Ljava/lang/Object;
.source "InputQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/InputQueue$FinishedCallback;,
        Landroid/view/InputQueue$Callback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "InputQueue"

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field final mChannel:Landroid/view/InputChannel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/InputQueue;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/view/InputChannel;)V
    .locals 0
    .parameter "channel"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/InputQueue;->mChannel:Landroid/view/InputChannel;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    sget-object v0, Landroid/view/InputQueue;->sLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(JZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-static {p0, p1, p2}, Landroid/view/InputQueue;->nativeFinished(JZ)V

    return-void
.end method

.method private static dispatchKeyEvent(Landroid/view/InputHandler;Landroid/view/KeyEvent;J)V
    .locals 1
    .parameter "inputHandler"
    .parameter "event"
    .parameter "finishedToken"

    .prologue
    invoke-static {p2, p3}, Landroid/view/InputQueue$FinishedCallback;->obtain(J)Landroid/view/InputQueue$FinishedCallback;

    move-result-object v0

    .local v0, finishedCallback:Landroid/view/InputQueue$FinishedCallback;
    invoke-interface {p0, p1, v0}, Landroid/view/InputHandler;->handleKey(Landroid/view/KeyEvent;Landroid/view/InputQueue$FinishedCallback;)V

    return-void
.end method

.method private static dispatchMotionEvent(Landroid/view/InputHandler;Landroid/view/MotionEvent;J)V
    .locals 1
    .parameter "inputHandler"
    .parameter "event"
    .parameter "finishedToken"

    .prologue
    invoke-static {p2, p3}, Landroid/view/InputQueue$FinishedCallback;->obtain(J)Landroid/view/InputQueue$FinishedCallback;

    move-result-object v0

    .local v0, finishedCallback:Landroid/view/InputQueue$FinishedCallback;
    invoke-interface {p0, p1, v0}, Landroid/view/InputHandler;->handleMotion(Landroid/view/MotionEvent;Landroid/view/InputQueue$FinishedCallback;)V

    return-void
.end method

.method private static native nativeFinished(JZ)V
.end method

.method private static native nativeRegisterInputChannel(Landroid/view/InputChannel;Landroid/view/InputHandler;Landroid/os/MessageQueue;)V
.end method

.method private static native nativeUnregisterInputChannel(Landroid/view/InputChannel;)V
.end method

.method public static registerInputChannel(Landroid/view/InputChannel;Landroid/view/InputHandler;Landroid/os/MessageQueue;)V
    .locals 2
    .parameter "inputChannel"
    .parameter "inputHandler"
    .parameter "messageQueue"

    .prologue
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inputChannel must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inputHandler must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "messageQueue must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    sget-object v1, Landroid/view/InputQueue;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {p0, p1, p2}, Landroid/view/InputQueue;->nativeRegisterInputChannel(Landroid/view/InputChannel;Landroid/view/InputHandler;Landroid/os/MessageQueue;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static unregisterInputChannel(Landroid/view/InputChannel;)V
    .locals 2
    .parameter "inputChannel"

    .prologue
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inputChannel must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v1, Landroid/view/InputQueue;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Landroid/view/InputQueue;->nativeUnregisterInputChannel(Landroid/view/InputChannel;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public getInputChannel()Landroid/view/InputChannel;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/InputQueue;->mChannel:Landroid/view/InputChannel;

    return-object v0
.end method
