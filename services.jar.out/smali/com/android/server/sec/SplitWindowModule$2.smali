.class Lcom/android/server/sec/SplitWindowModule$2;
.super Ljava/lang/Object;
.source "SplitWindowModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sec/SplitWindowModule;->finishOtherStateChanged(Landroid/content/ComponentName;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sec/SplitWindowModule;


# direct methods
.method constructor <init>(Lcom/android/server/sec/SplitWindowModule;)V
    .locals 0
    .parameter

    .prologue
    .line 520
    iput-object p1, p0, Lcom/android/server/sec/SplitWindowModule$2;->this$0:Lcom/android/server/sec/SplitWindowModule;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 525
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 526
    .local v0, cloneRemoveItem:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/sec/SplitWindowModule$MultiWindowKey;>;"
    iget-object v3, p0, Lcom/android/server/sec/SplitWindowModule$2;->this$0:Lcom/android/server/sec/SplitWindowModule;

    iget-object v3, v3, Lcom/android/server/sec/SplitWindowModule;->mRemoveItem:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 527
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sec/SplitWindowModule$MultiWindowKey;

    .line 528
    .local v2, mwKey:Lcom/android/server/sec/SplitWindowModule$MultiWindowKey;
    iget-object v3, p0, Lcom/android/server/sec/SplitWindowModule$2;->this$0:Lcom/android/server/sec/SplitWindowModule;

    iget-object v3, v3, Lcom/android/server/sec/SplitWindowModule;->mTargetName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Lcom/android/server/sec/SplitWindowModule$MultiWindowKey;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 529
    iget-object v3, p0, Lcom/android/server/sec/SplitWindowModule$2;->this$0:Lcom/android/server/sec/SplitWindowModule;

    invoke-virtual {v2}, Lcom/android/server/sec/SplitWindowModule$MultiWindowKey;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/server/sec/SplitWindowModule$MultiWindowKey;->getTaskId()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/sec/SplitWindowModule;->finish(Landroid/content/ComponentName;IZ)Z

    goto :goto_0

    .line 531
    .end local v2           #mwKey:Lcom/android/server/sec/SplitWindowModule$MultiWindowKey;
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 532
    iget-object v3, p0, Lcom/android/server/sec/SplitWindowModule$2;->this$0:Lcom/android/server/sec/SplitWindowModule;

    iget-object v3, v3, Lcom/android/server/sec/SplitWindowModule;->mRemoveItem:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 533
    return-void
.end method
