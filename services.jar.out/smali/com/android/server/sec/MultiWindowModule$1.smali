.class Lcom/android/server/sec/MultiWindowModule$1;
.super Ljava/lang/Object;
.source "MultiWindowModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sec/MultiWindowModule;->finishAllWindow()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sec/MultiWindowModule;


# direct methods
.method constructor <init>(Lcom/android/server/sec/MultiWindowModule;)V
    .locals 0
    .parameter

    .prologue
    .line 1048
    iput-object p1, p0, Lcom/android/server/sec/MultiWindowModule$1;->this$0:Lcom/android/server/sec/MultiWindowModule;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1051
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowModule$1;->this$0:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2}, Lcom/android/server/sec/MultiWindowModule;->getList()Lcom/android/server/sec/IMultiWindowList;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/sec/IMultiWindowList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sec/MWPackageItem;

    .line 1052
    .local v0, i:Lcom/android/server/sec/MWPackageItem;
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowModule$1;->this$0:Lcom/android/server/sec/MultiWindowModule;

    iget-object v2, v2, Lcom/android/server/sec/MultiWindowModule;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Lcom/android/server/sec/MWPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ActivityManager;->removeTask(Ljava/lang/String;)Z

    goto :goto_0

    .line 1054
    .end local v0           #i:Lcom/android/server/sec/MWPackageItem;
    :cond_0
    return-void
.end method
