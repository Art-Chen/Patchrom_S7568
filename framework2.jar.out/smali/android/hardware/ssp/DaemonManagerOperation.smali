.class Landroid/hardware/ssp/DaemonManagerOperation;
.super Ljava/lang/Object;
.source "DaemonManagerOperation.java"


# static fields
.field private static volatile instance:Landroid/hardware/ssp/DaemonManagerOperation;


# instance fields
.field private mbOperation:Z

.field private services:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/hardware/ssp/DaemonConstants$SSPServices;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/ssp/DaemonManagerOperation;->mbOperation:Z

    .line 31
    const-class v0, Landroid/hardware/ssp/DaemonConstants$SSPServices;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/ssp/DaemonManagerOperation;->services:Ljava/util/Set;

    return-void
.end method

.method protected static getInstance()Landroid/hardware/ssp/DaemonManagerOperation;
    .locals 2

    .prologue
    .line 42
    sget-object v0, Landroid/hardware/ssp/DaemonManagerOperation;->instance:Landroid/hardware/ssp/DaemonManagerOperation;

    if-nez v0, :cond_1

    .line 43
    const-class v1, Landroid/hardware/ssp/DaemonManagerOperation;

    monitor-enter v1

    .line 44
    :try_start_0
    sget-object v0, Landroid/hardware/ssp/DaemonManagerOperation;->instance:Landroid/hardware/ssp/DaemonManagerOperation;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Landroid/hardware/ssp/DaemonManagerOperation;

    invoke-direct {v0}, Landroid/hardware/ssp/DaemonManagerOperation;-><init>()V

    sput-object v0, Landroid/hardware/ssp/DaemonManagerOperation;->instance:Landroid/hardware/ssp/DaemonManagerOperation;

    .line 47
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :cond_1
    sget-object v0, Landroid/hardware/ssp/DaemonManagerOperation;->instance:Landroid/hardware/ssp/DaemonManagerOperation;

    return-object v0

    .line 47
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method protected addService(Ljava/util/Set;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Landroid/hardware/ssp/DaemonConstants$SSPServices;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, services:Ljava/util/Set;,"Ljava/util/Set<Landroid/hardware/ssp/DaemonConstants$SSPServices;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    iget-object v0, p0, Landroid/hardware/ssp/DaemonManagerOperation;->services:Ljava/util/Set;

    if-nez v0, :cond_2

    .line 83
    const-class v0, Landroid/hardware/ssp/DaemonConstants$SSPServices;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/ssp/DaemonManagerOperation;->services:Ljava/util/Set;

    .line 86
    :cond_2
    iget-object v0, p0, Landroid/hardware/ssp/DaemonManagerOperation;->services:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method protected getService()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/hardware/ssp/DaemonConstants$SSPServices;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Landroid/hardware/ssp/DaemonManagerOperation;->services:Ljava/util/Set;

    check-cast v0, Ljava/util/EnumSet;

    return-object v0
.end method

.method protected isRun()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Landroid/hardware/ssp/DaemonManagerOperation;->mbOperation:Z

    return v0
.end method

.method protected removeService(Ljava/util/Set;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Landroid/hardware/ssp/DaemonConstants$SSPServices;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p1, services:Ljava/util/Set;,"Ljava/util/Set<Landroid/hardware/ssp/DaemonConstants$SSPServices;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    iget-object v0, p0, Landroid/hardware/ssp/DaemonManagerOperation;->services:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method protected setOperation(Z)V
    .locals 0
    .parameter "opStatus"

    .prologue
    .line 59
    iput-boolean p1, p0, Landroid/hardware/ssp/DaemonManagerOperation;->mbOperation:Z

    .line 60
    return-void
.end method
