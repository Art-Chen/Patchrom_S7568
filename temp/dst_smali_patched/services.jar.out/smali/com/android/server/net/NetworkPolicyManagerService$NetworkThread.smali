.class Lcom/android/server/net/NetworkPolicyManagerService$NetworkThread;
.super Ljava/lang/Thread;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NetworkThread"
.end annotation


# static fields
.field static final CONNECTIVITY_IMMEDIATE:I = 0x2

.field static final NETWORK_STATS_UPDATED:I = 0x1

.field static final THREAD_NAME:Ljava/lang/String; = "NetworkPolicyNetwork"


# instance fields
.field mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 1
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkThread;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    const-string v0, "NetworkPolicyNetwork"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkThread$1;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$NetworkThread$1;-><init>(Lcom/android/server/net/NetworkPolicyManagerService$NetworkThread;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkThread;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
