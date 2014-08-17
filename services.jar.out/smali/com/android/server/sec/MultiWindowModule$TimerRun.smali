.class public Lcom/android/server/sec/MultiWindowModule$TimerRun;
.super Ljava/util/TimerTask;
.source "MultiWindowModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sec/MultiWindowModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "TimerRun"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private mAppList:Lcom/android/server/sec/MultiWindowModule$RunAppList;

.field private mItemList:Lcom/android/server/sec/IMultiWindowList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/sec/MultiWindowModule$RunAppList;Lcom/android/server/sec/IMultiWindowList;)V
    .locals 2
    .parameter "context"
    .parameter "list"
    .parameter "itemList"

    .prologue
    .line 1446
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 1447
    iput-object p1, p0, Lcom/android/server/sec/MultiWindowModule$TimerRun;->context:Landroid/content/Context;

    .line 1448
    iput-object p2, p0, Lcom/android/server/sec/MultiWindowModule$TimerRun;->mAppList:Lcom/android/server/sec/MultiWindowModule$RunAppList;

    .line 1449
    iput-object p3, p0, Lcom/android/server/sec/MultiWindowModule$TimerRun;->mItemList:Lcom/android/server/sec/IMultiWindowList;

    .line 1450
    const-string v0, "MultiWindowModule"

    const-string v1, "TimerRun : Create"

    invoke-static {v0, v1}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 1459
    const/4 v4, 0x0

    .line 1461
    .local v4, runItem:Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/server/sec/MultiWindowModule$TimerRun;->mAppList:Lcom/android/server/sec/MultiWindowModule$RunAppList;

    monitor-enter v6

    .line 1462
    :try_start_0
    iget-object v5, p0, Lcom/android/server/sec/MultiWindowModule$TimerRun;->mAppList:Lcom/android/server/sec/MultiWindowModule$RunAppList;

    invoke-virtual {v5}, Lcom/android/server/sec/MultiWindowModule$RunAppList;->poll()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/content/Intent;

    move-object v4, v0

    .line 1463
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1465
    if-nez v4, :cond_1

    .line 1466
    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowModule$TimerRun;->cancel()Z

    .line 1492
    :cond_0
    :goto_0
    return-void

    .line 1463
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 1470
    :cond_1
    const-string v5, "MultiWindowModule"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TimerRun :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    invoke-virtual {v4}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 1474
    .local v3, intent:Landroid/content/Intent;
    :try_start_2
    iget-object v5, p0, Lcom/android/server/sec/MultiWindowModule$TimerRun;->context:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1483
    :goto_1
    const/4 v2, 0x0

    .line 1484
    .local v2, iSize:I
    iget-object v6, p0, Lcom/android/server/sec/MultiWindowModule$TimerRun;->mAppList:Lcom/android/server/sec/MultiWindowModule$RunAppList;

    monitor-enter v6

    .line 1485
    :try_start_3
    iget-object v5, p0, Lcom/android/server/sec/MultiWindowModule$TimerRun;->mAppList:Lcom/android/server/sec/MultiWindowModule$RunAppList;

    invoke-virtual {v5}, Lcom/android/server/sec/MultiWindowModule$RunAppList;->size()I

    move-result v2

    .line 1486
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1488
    const/4 v5, 0x1

    if-ge v2, v5, :cond_0

    .line 1489
    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowModule$TimerRun;->cancel()Z

    .line 1490
    const-string v5, "MultiWindowModule"

    const-string v6, "TimerRun : STOP"

    invoke-static {v5, v6}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1475
    .end local v2           #iSize:I
    :catch_0
    move-exception v1

    .line 1476
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "MultiWindowModule"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    iget-object v6, p0, Lcom/android/server/sec/MultiWindowModule$TimerRun;->mItemList:Lcom/android/server/sec/IMultiWindowList;

    monitor-enter v6

    .line 1479
    :try_start_4
    iget-object v5, p0, Lcom/android/server/sec/MultiWindowModule$TimerRun;->mItemList:Lcom/android/server/sec/IMultiWindowList;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    const/4 v8, -0x1

    invoke-interface {v5, v7, v8}, Lcom/android/server/sec/IMultiWindowList;->realRemoveItem(Landroid/content/ComponentName;I)Z

    .line 1480
    monitor-exit v6

    goto :goto_1

    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v5

    .line 1486
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #iSize:I
    :catchall_2
    move-exception v5

    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v5
.end method
