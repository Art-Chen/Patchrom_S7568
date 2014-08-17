.class final Landroid/hardware/ssp/SSPService$EventPool;
.super Ljava/lang/Object;
.source "SSPService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/ssp/SSPService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EventPool"
.end annotation


# static fields
.field private static final POOL_SIZE:I = 0xa


# instance fields
.field private final lockEventPool:Ljava/lang/Object;

.field private sspEvents:[Landroid/hardware/ssp/SSPEvent;

.field final synthetic this$0:Landroid/hardware/ssp/SSPService;


# direct methods
.method public constructor <init>(Landroid/hardware/ssp/SSPService;)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0xa

    .line 525
    iput-object p1, p0, Landroid/hardware/ssp/SSPService$EventPool;->this$0:Landroid/hardware/ssp/SSPService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 526
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/hardware/ssp/SSPService$EventPool;->lockEventPool:Ljava/lang/Object;

    .line 527
    new-array v1, v3, [Landroid/hardware/ssp/SSPEvent;

    iput-object v1, p0, Landroid/hardware/ssp/SSPService$EventPool;->sspEvents:[Landroid/hardware/ssp/SSPEvent;

    .line 529
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 530
    iget-object v1, p0, Landroid/hardware/ssp/SSPService$EventPool;->sspEvents:[Landroid/hardware/ssp/SSPEvent;

    new-instance v2, Landroid/hardware/ssp/SSPEvent;

    invoke-direct {v2}, Landroid/hardware/ssp/SSPEvent;-><init>()V

    aput-object v2, v1, v0

    .line 529
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 532
    :cond_0
    return-void
.end method


# virtual methods
.method public obtain()Landroid/hardware/ssp/SSPEvent;
    .locals 5

    .prologue
    .line 540
    const/4 v0, 0x0

    .line 542
    .local v0, event:Landroid/hardware/ssp/SSPEvent;
    iget-object v3, p0, Landroid/hardware/ssp/SSPService$EventPool;->lockEventPool:Ljava/lang/Object;

    monitor-enter v3

    .line 543
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 544
    :try_start_0
    iget-object v2, p0, Landroid/hardware/ssp/SSPService$EventPool;->sspEvents:[Landroid/hardware/ssp/SSPEvent;

    aget-object v2, v2, v1

    if-eqz v2, :cond_2

    .line 545
    iget-object v2, p0, Landroid/hardware/ssp/SSPService$EventPool;->sspEvents:[Landroid/hardware/ssp/SSPEvent;

    aget-object v0, v2, v1

    .line 546
    iget-object v2, p0, Landroid/hardware/ssp/SSPService$EventPool;->sspEvents:[Landroid/hardware/ssp/SSPEvent;

    const/4 v4, 0x0

    aput-object v4, v2, v1

    .line 550
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 552
    if-nez v0, :cond_1

    .line 553
    new-instance v0, Landroid/hardware/ssp/SSPEvent;

    .end local v0           #event:Landroid/hardware/ssp/SSPEvent;
    invoke-direct {v0}, Landroid/hardware/ssp/SSPEvent;-><init>()V

    .line 555
    .restart local v0       #event:Landroid/hardware/ssp/SSPEvent;
    :cond_1
    return-object v0

    .line 543
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 550
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public recycle(Landroid/hardware/ssp/SSPEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 565
    iget-object v2, p0, Landroid/hardware/ssp/SSPService$EventPool;->lockEventPool:Ljava/lang/Object;

    monitor-enter v2

    .line 566
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 567
    :try_start_0
    iget-object v1, p0, Landroid/hardware/ssp/SSPService$EventPool;->sspEvents:[Landroid/hardware/ssp/SSPEvent;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    .line 568
    iget-object v1, p0, Landroid/hardware/ssp/SSPService$EventPool;->sspEvents:[Landroid/hardware/ssp/SSPEvent;

    aput-object p1, v1, v0

    .line 572
    :cond_0
    monitor-exit v2

    .line 573
    return-void

    .line 566
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 572
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
