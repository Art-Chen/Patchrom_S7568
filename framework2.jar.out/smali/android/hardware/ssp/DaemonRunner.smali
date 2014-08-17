.class Landroid/hardware/ssp/DaemonRunner;
.super Ljava/lang/Object;
.source "DaemonRunner.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLooper:Landroid/os/Looper;

.field private mRunnerName:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 0
    .parameter "context"
    .parameter "looper"

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p0, p1}, Landroid/hardware/ssp/DaemonRunner;->setContext(Landroid/content/Context;)V

    .line 44
    invoke-virtual {p0, p2}, Landroid/hardware/ssp/DaemonRunner;->setLooper(Landroid/os/Looper;)V

    .line 45
    return-void
.end method


# virtual methods
.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunner;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected getLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunner;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method protected getRunnerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunner;->mRunnerName:Ljava/lang/String;

    return-object v0
.end method

.method protected setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 82
    iput-object p1, p0, Landroid/hardware/ssp/DaemonRunner;->mContext:Landroid/content/Context;

    .line 83
    return-void
.end method

.method protected setLooper(Landroid/os/Looper;)V
    .locals 0
    .parameter "looper"

    .prologue
    .line 101
    iput-object p1, p0, Landroid/hardware/ssp/DaemonRunner;->mLooper:Landroid/os/Looper;

    .line 102
    return-void
.end method

.method protected setRunnerName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 63
    iput-object p1, p0, Landroid/hardware/ssp/DaemonRunner;->mRunnerName:Ljava/lang/String;

    .line 64
    return-void
.end method
