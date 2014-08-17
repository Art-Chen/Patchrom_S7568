.class public Lcom/android/server/sec/MultiWindowModule$TimerFinish;
.super Ljava/util/TimerTask;
.source "MultiWindowModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sec/MultiWindowModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "TimerFinish"
.end annotation


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mTaskId:I

.field private sPackageNames:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/ActivityManager;Ljava/lang/String;)V
    .locals 1
    .parameter "am"
    .parameter "sPackageName"

    .prologue
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/sec/MultiWindowModule$TimerFinish;->mTaskId:I

    iput-object p1, p0, Lcom/android/server/sec/MultiWindowModule$TimerFinish;->mActivityManager:Landroid/app/ActivityManager;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/sec/MultiWindowModule$TimerFinish;->sPackageNames:Ljava/util/Queue;

    iget-object v0, p0, Lcom/android/server/sec/MultiWindowModule$TimerFinish;->sPackageNames:Ljava/util/Queue;

    invoke-interface {v0, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/app/ActivityManager;Ljava/lang/String;I)V
    .locals 1
    .parameter "am"
    .parameter "sPackageName"
    .parameter "taskId"

    .prologue
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/sec/MultiWindowModule$TimerFinish;->mTaskId:I

    iput-object p1, p0, Lcom/android/server/sec/MultiWindowModule$TimerFinish;->mActivityManager:Landroid/app/ActivityManager;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/sec/MultiWindowModule$TimerFinish;->sPackageNames:Ljava/util/Queue;

    iget-object v0, p0, Lcom/android/server/sec/MultiWindowModule$TimerFinish;->sPackageNames:Ljava/util/Queue;

    invoke-interface {v0, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iput p3, p0, Lcom/android/server/sec/MultiWindowModule$TimerFinish;->mTaskId:I

    return-void
.end method

.method public constructor <init>(Landroid/app/ActivityManager;Ljava/util/List;)V
    .locals 5
    .parameter "am"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityManager;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/sec/MWPackageItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, mwObjList:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/sec/MWPackageItem;>;"
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/sec/MultiWindowModule$TimerFinish;->mTaskId:I

    const-string v2, "MultiWindowModule"

    const-string v3, "[TimerFinish]"

    invoke-static {v2, v3}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/sec/MultiWindowModule$TimerFinish;->mActivityManager:Landroid/app/ActivityManager;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/android/server/sec/MultiWindowModule$TimerFinish;->sPackageNames:Ljava/util/Queue;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sec/MWPackageItem;

    .local v1, item:Lcom/android/server/sec/MWPackageItem;
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowModule$TimerFinish;->sPackageNames:Ljava/util/Queue;

    invoke-virtual {v1}, Lcom/android/server/sec/MWPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    const-string v2, "MultiWindowModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[TimerFinish] cancel out : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/server/sec/MWPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1           #item:Lcom/android/server/sec/MWPackageItem;
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowModule$TimerFinish;->sPackageNames:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, sPackageName:Ljava/lang/String;
    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowModule$TimerFinish;->cancel()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget v2, p0, Lcom/android/server/sec/MultiWindowModule$TimerFinish;->mTaskId:I

    if-ltz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/sec/MultiWindowModule$TimerFinish;->mActivityManager:Landroid/app/ActivityManager;

    iget v3, p0, Lcom/android/server/sec/MultiWindowModule$TimerFinish;->mTaskId:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/ActivityManager;->removeTask(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string v2, "MultiWindowModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[TimerFinish] cancel out : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/sec/MultiWindowModule$TimerFinish;->sPackageNames:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowModule$TimerFinish;->cancel()Z

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowModule$TimerFinish;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v2, v1}, Landroid/app/ActivityManager;->removeTask(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v2, "MultiWindowModule"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
