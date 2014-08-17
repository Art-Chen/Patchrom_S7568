.class Lcom/android/server/sec/MultiWindowModule$3;
.super Ljava/lang/Object;
.source "MultiWindowModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sec/MultiWindowModule;->callEnsureActivity()V
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
    .line 2628
    iput-object p1, p0, Lcom/android/server/sec/MultiWindowModule$3;->this$0:Lcom/android/server/sec/MultiWindowModule;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2632
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    .line 2633
    .local v0, amsSelf:Lcom/android/server/am/ActivityManagerService;
    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->mwEnsureActivitiesVisible()V

    .line 2634
    return-void
.end method
