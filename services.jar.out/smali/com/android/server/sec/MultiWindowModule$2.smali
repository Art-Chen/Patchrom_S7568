.class Lcom/android/server/sec/MultiWindowModule$2;
.super Ljava/lang/Object;
.source "MultiWindowModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sec/MultiWindowModule;->finish(Landroid/content/ComponentName;IZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sec/MultiWindowModule;

.field final synthetic val$className:Landroid/content/ComponentName;

.field final synthetic val$replace:Z

.field final synthetic val$taskId:I


# direct methods
.method constructor <init>(Lcom/android/server/sec/MultiWindowModule;IZLandroid/content/ComponentName;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1912
    iput-object p1, p0, Lcom/android/server/sec/MultiWindowModule$2;->this$0:Lcom/android/server/sec/MultiWindowModule;

    iput p2, p0, Lcom/android/server/sec/MultiWindowModule$2;->val$taskId:I

    iput-boolean p3, p0, Lcom/android/server/sec/MultiWindowModule$2;->val$replace:Z

    iput-object p4, p0, Lcom/android/server/sec/MultiWindowModule$2;->val$className:Landroid/content/ComponentName;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1915
    iget v1, p0, Lcom/android/server/sec/MultiWindowModule$2;->val$taskId:I

    if-ltz v1, :cond_0

    .line 1916
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    .line 1917
    .local v0, amsSelf:Lcom/android/server/am/ActivityManagerService;
    iget v1, p0, Lcom/android/server/sec/MultiWindowModule$2;->val$taskId:I

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/android/server/sec/MultiWindowModule$2;->val$replace:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->removeTask(IIZ)Z

    .line 1922
    .end local v0           #amsSelf:Lcom/android/server/am/ActivityManagerService;
    :goto_0
    return-void

    .line 1919
    :cond_0
    iget-object v1, p0, Lcom/android/server/sec/MultiWindowModule$2;->this$0:Lcom/android/server/sec/MultiWindowModule;

    iget-object v1, v1, Lcom/android/server/sec/MultiWindowModule;->mActivityManager:Landroid/app/ActivityManager;

    iget-object v2, p0, Lcom/android/server/sec/MultiWindowModule$2;->val$className:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->removeTask(Ljava/lang/String;)Z

    goto :goto_0
.end method
