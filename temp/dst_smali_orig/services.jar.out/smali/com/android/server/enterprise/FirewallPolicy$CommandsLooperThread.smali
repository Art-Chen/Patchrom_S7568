.class Lcom/android/server/enterprise/FirewallPolicy$CommandsLooperThread;
.super Ljava/lang/Thread;
.source "FirewallPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/FirewallPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CommandsLooperThread"
.end annotation


# instance fields
.field public mHandler:Lcom/android/server/enterprise/FirewallPolicy$CommandsHandler;

.field final synthetic this$0:Lcom/android/server/enterprise/FirewallPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/FirewallPolicy;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/FirewallPolicy$CommandsLooperThread;->this$0:Lcom/android/server/enterprise/FirewallPolicy;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v0, Lcom/android/server/enterprise/FirewallPolicy$CommandsHandler;

    iget-object v1, p0, Lcom/android/server/enterprise/FirewallPolicy$CommandsLooperThread;->this$0:Lcom/android/server/enterprise/FirewallPolicy;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/FirewallPolicy$CommandsHandler;-><init>(Lcom/android/server/enterprise/FirewallPolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/FirewallPolicy$CommandsLooperThread;->mHandler:Lcom/android/server/enterprise/FirewallPolicy$CommandsHandler;

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
