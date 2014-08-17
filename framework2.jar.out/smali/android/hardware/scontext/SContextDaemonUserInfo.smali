.class Landroid/hardware/scontext/SContextDaemonUserInfo;
.super Ljava/lang/Object;
.source "SContextDaemonUserInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SContextDaemonUserInfo"

.field private static instance:Landroid/hardware/scontext/SContextDaemonUserInfo;


# instance fields
.field private mStepCount:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/hardware/scontext/SContextDaemonUserInfo;
    .locals 2

    .prologue
    .line 19
    sget-object v0, Landroid/hardware/scontext/SContextDaemonUserInfo;->instance:Landroid/hardware/scontext/SContextDaemonUserInfo;

    if-nez v0, :cond_1

    .line 20
    const-class v1, Landroid/hardware/scontext/SContextDaemonUserInfo;

    monitor-enter v1

    .line 21
    :try_start_0
    sget-object v0, Landroid/hardware/scontext/SContextDaemonUserInfo;->instance:Landroid/hardware/scontext/SContextDaemonUserInfo;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Landroid/hardware/scontext/SContextDaemonUserInfo;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextDaemonUserInfo;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextDaemonUserInfo;->instance:Landroid/hardware/scontext/SContextDaemonUserInfo;

    .line 24
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :cond_1
    sget-object v0, Landroid/hardware/scontext/SContextDaemonUserInfo;->instance:Landroid/hardware/scontext/SContextDaemonUserInfo;

    return-object v0

    .line 24
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getStepCount()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Landroid/hardware/scontext/SContextDaemonUserInfo;->mStepCount:I

    return v0
.end method

.method public setStepCount(I)V
    .locals 0
    .parameter "stepcount"

    .prologue
    .line 30
    iput p1, p0, Landroid/hardware/scontext/SContextDaemonUserInfo;->mStepCount:I

    .line 31
    return-void
.end method
