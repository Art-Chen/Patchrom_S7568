.class Lcom/android/server/PowerManagerService$DVFSLockList;
.super Ljava/util/ArrayList;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DVFSLockList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/server/PowerManagerService$DVFSLock;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 4881
    iput-object p1, p0, Lcom/android/server/PowerManagerService$DVFSLockList;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4881
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService$DVFSLockList;-><init>(Lcom/android/server/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method addLock(Lcom/android/server/PowerManagerService$DVFSLock;)V
    .locals 2
    .parameter "wl"

    .prologue
    .line 4885
    iget-object v1, p1, Lcom/android/server/PowerManagerService$DVFSLock;->binder:Landroid/os/IBinder;

    invoke-virtual {p0, v1}, Lcom/android/server/PowerManagerService$DVFSLockList;->getIndex(Landroid/os/IBinder;)I

    move-result v0

    .line 4886
    .local v0, index:I
    if-gez v0, :cond_0

    .line 4887
    invoke-virtual {p0, p1}, Lcom/android/server/PowerManagerService$DVFSLockList;->add(Ljava/lang/Object;)Z

    .line 4889
    :cond_0
    return-void
.end method

.method dumpDVFSLockList()V
    .locals 10

    .prologue
    .line 4997
    iget-object v2, p0, Lcom/android/server/PowerManagerService$DVFSLockList;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mDVFSLocks:Lcom/android/server/PowerManagerService$DVFSLockList;
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$9700(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$DVFSLockList;

    move-result-object v3

    monitor-enter v3

    .line 4998
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService$DVFSLockList;->size()I

    move-result v0

    .line 4999
    .local v0, N:I
    if-nez v0, :cond_0

    .line 5000
    monitor-exit v3

    .line 5025
    :goto_0
    return-void

    .line 5003
    :cond_0
    const-string v2, "PowerManagerService"

    const-string v4, "dumpDVFSLockList : DVFS_MAX_LIMIT"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5004
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 5005
    invoke-virtual {p0, v1}, Lcom/android/server/PowerManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/PowerManagerService$DVFSLock;

    iget v2, v2, Lcom/android/server/PowerManagerService$DVFSLock;->type:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    .line 5006
    const-string v4, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " : tag : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Lcom/android/server/PowerManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/PowerManagerService$DVFSLock;

    iget-object v2, v2, Lcom/android/server/PowerManagerService$DVFSLock;->tag:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "  frequency : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Lcom/android/server/PowerManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/PowerManagerService$DVFSLock;

    iget v2, v2, Lcom/android/server/PowerManagerService$DVFSLock;->frequency:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "  elapsed time : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {p0, v1}, Lcom/android/server/PowerManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/PowerManagerService$DVFSLock;

    iget-wide v8, v2, Lcom/android/server/PowerManagerService$DVFSLock;->acqTime:J

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5004
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5010
    :cond_2
    const-string v2, "PowerManagerService"

    const-string v4, "dumpDVFSLockList : DVFS_MIN_LIMIT"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5011
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_4

    .line 5012
    invoke-virtual {p0, v1}, Lcom/android/server/PowerManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/PowerManagerService$DVFSLock;

    iget v2, v2, Lcom/android/server/PowerManagerService$DVFSLock;->type:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_3

    .line 5013
    const-string v4, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " : tag : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Lcom/android/server/PowerManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/PowerManagerService$DVFSLock;

    iget-object v2, v2, Lcom/android/server/PowerManagerService$DVFSLock;->tag:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "  frequency : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Lcom/android/server/PowerManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/PowerManagerService$DVFSLock;

    iget v2, v2, Lcom/android/server/PowerManagerService$DVFSLock;->frequency:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "  elapsed time : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {p0, v1}, Lcom/android/server/PowerManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/PowerManagerService$DVFSLock;

    iget-wide v8, v2, Lcom/android/server/PowerManagerService$DVFSLock;->acqTime:J

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5011
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 5018
    :cond_4
    iget-object v2, p0, Lcom/android/server/PowerManagerService$DVFSLockList;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mCurrentDVFSMaxLock:Lcom/android/server/PowerManagerService$DVFSLock;
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$9900(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$DVFSLock;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 5019
    const-string v2, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dumpDVFSLockList : mCurrentDVFSMaxLock : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/PowerManagerService$DVFSLockList;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mCurrentDVFSMaxLock:Lcom/android/server/PowerManagerService$DVFSLock;
    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$9900(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$DVFSLock;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/PowerManagerService$DVFSLock;->binder:Landroid/os/IBinder;

    invoke-virtual {p0, v5}, Lcom/android/server/PowerManagerService$DVFSLockList;->getIndex(Landroid/os/IBinder;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5021
    :cond_5
    iget-object v2, p0, Lcom/android/server/PowerManagerService$DVFSLockList;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mCurrentDVFSMinLock:Lcom/android/server/PowerManagerService$DVFSLock;
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$10000(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$DVFSLock;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 5022
    const-string v2, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dumpDVFSLockList : mCurrentDVFSMinLock : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/PowerManagerService$DVFSLockList;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mCurrentDVFSMinLock:Lcom/android/server/PowerManagerService$DVFSLock;
    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$10000(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$DVFSLock;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/PowerManagerService$DVFSLock;->binder:Landroid/os/IBinder;

    invoke-virtual {p0, v5}, Lcom/android/server/PowerManagerService$DVFSLockList;->getIndex(Landroid/os/IBinder;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5024
    :cond_6
    monitor-exit v3

    goto/16 :goto_0

    .end local v0           #N:I
    .end local v1           #i:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method getIndex(Landroid/os/IBinder;)I
    .locals 3
    .parameter "binder"

    .prologue
    .line 4903
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService$DVFSLockList;->size()I

    move-result v0

    .line 4904
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 4905
    invoke-virtual {p0, v1}, Lcom/android/server/PowerManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/PowerManagerService$DVFSLock;

    iget-object v2, v2, Lcom/android/server/PowerManagerService$DVFSLock;->binder:Landroid/os/IBinder;

    if-ne v2, p1, :cond_0

    .line 4909
    .end local v1           #i:I
    :goto_1
    return v1

    .line 4904
    .restart local v1       #i:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4909
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method getMaxOfMinLock()Lcom/android/server/PowerManagerService$DVFSLock;
    .locals 8

    .prologue
    .line 4913
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService$DVFSLockList;->size()I

    move-result v0

    .line 4914
    .local v0, N:I
    const/4 v3, -0x1

    .line 4915
    .local v3, indexMaxFrequency:I
    const/4 v4, -0x1

    .line 4919
    .local v4, maxFrequency:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 4920
    invoke-virtual {p0, v2}, Lcom/android/server/PowerManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/PowerManagerService$DVFSLock;

    iget v6, v6, Lcom/android/server/PowerManagerService$DVFSLock;->type:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 4921
    invoke-virtual {p0, v2}, Lcom/android/server/PowerManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/PowerManagerService$DVFSLock;

    iget v1, v6, Lcom/android/server/PowerManagerService$DVFSLock;->frequency:I

    .line 4925
    .local v1, frequency:I
    const/4 v6, -0x1

    if-ne v4, v6, :cond_1

    .line 4926
    move v4, v1

    .line 4927
    move v3, v2

    .line 4919
    .end local v1           #frequency:I
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4930
    .restart local v1       #frequency:I
    :cond_1
    if-le v1, v4, :cond_0

    .line 4931
    move v4, v1

    .line 4932
    move v3, v2

    goto :goto_1

    .line 4938
    .end local v1           #frequency:I
    :cond_2
    if-ltz v3, :cond_3

    .line 4939
    invoke-virtual {p0, v3}, Lcom/android/server/PowerManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/PowerManagerService$DVFSLock;

    .line 4951
    .local v5, maxOfMinLock:Lcom/android/server/PowerManagerService$DVFSLock;
    :goto_2
    return-object v5

    .line 4945
    .end local v5           #maxOfMinLock:Lcom/android/server/PowerManagerService$DVFSLock;
    :cond_3
    const/4 v5, 0x0

    .restart local v5       #maxOfMinLock:Lcom/android/server/PowerManagerService$DVFSLock;
    goto :goto_2
.end method

.method getMinOfMaxLock()Lcom/android/server/PowerManagerService$DVFSLock;
    .locals 8

    .prologue
    .line 4955
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService$DVFSLockList;->size()I

    move-result v0

    .line 4956
    .local v0, N:I
    const/4 v3, -0x1

    .line 4957
    .local v3, indexMinFrequency:I
    const/4 v4, -0x1

    .line 4961
    .local v4, minFrequency:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 4962
    invoke-virtual {p0, v2}, Lcom/android/server/PowerManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/PowerManagerService$DVFSLock;

    iget v6, v6, Lcom/android/server/PowerManagerService$DVFSLock;->type:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 4963
    invoke-virtual {p0, v2}, Lcom/android/server/PowerManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/PowerManagerService$DVFSLock;

    iget v1, v6, Lcom/android/server/PowerManagerService$DVFSLock;->frequency:I

    .line 4967
    .local v1, frequency:I
    const/4 v6, -0x1

    if-ne v4, v6, :cond_1

    .line 4968
    move v4, v1

    .line 4969
    move v3, v2

    .line 4961
    .end local v1           #frequency:I
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4972
    .restart local v1       #frequency:I
    :cond_1
    if-ge v1, v4, :cond_0

    .line 4973
    move v4, v1

    .line 4974
    move v3, v2

    goto :goto_1

    .line 4980
    .end local v1           #frequency:I
    :cond_2
    if-ltz v3, :cond_3

    .line 4981
    invoke-virtual {p0, v3}, Lcom/android/server/PowerManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/PowerManagerService$DVFSLock;

    .line 4993
    .local v5, minOfMaxLock:Lcom/android/server/PowerManagerService$DVFSLock;
    :goto_2
    return-object v5

    .line 4987
    .end local v5           #minOfMaxLock:Lcom/android/server/PowerManagerService$DVFSLock;
    :cond_3
    const/4 v5, 0x0

    .restart local v5       #minOfMaxLock:Lcom/android/server/PowerManagerService$DVFSLock;
    goto :goto_2
.end method

.method removeLock(Landroid/os/IBinder;)Lcom/android/server/PowerManagerService$DVFSLock;
    .locals 2
    .parameter "binder"

    .prologue
    .line 4893
    invoke-virtual {p0, p1}, Lcom/android/server/PowerManagerService$DVFSLockList;->getIndex(Landroid/os/IBinder;)I

    move-result v0

    .line 4894
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 4895
    invoke-virtual {p0, v0}, Lcom/android/server/PowerManagerService$DVFSLockList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/PowerManagerService$DVFSLock;

    .line 4897
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
