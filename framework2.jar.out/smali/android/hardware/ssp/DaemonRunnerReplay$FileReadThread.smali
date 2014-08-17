.class Landroid/hardware/ssp/DaemonRunnerReplay$FileReadThread;
.super Ljava/lang/Thread;
.source "DaemonRunnerReplay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/ssp/DaemonRunnerReplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileReadThread"
.end annotation


# instance fields
.field private stopFlag:Z

.field final synthetic this$0:Landroid/hardware/ssp/DaemonRunnerReplay;


# direct methods
.method private constructor <init>(Landroid/hardware/ssp/DaemonRunnerReplay;)V
    .locals 1
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Landroid/hardware/ssp/DaemonRunnerReplay$FileReadThread;->this$0:Landroid/hardware/ssp/DaemonRunnerReplay;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 171
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/ssp/DaemonRunnerReplay$FileReadThread;->stopFlag:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/ssp/DaemonRunnerReplay;Landroid/hardware/ssp/DaemonRunnerReplay$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 169
    invoke-direct {p0, p1}, Landroid/hardware/ssp/DaemonRunnerReplay$FileReadThread;-><init>(Landroid/hardware/ssp/DaemonRunnerReplay;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 179
    const/4 v3, 0x0

    .line 183
    .local v3, line:Ljava/lang/String;
    :goto_0
    :try_start_0
    iget-boolean v4, p0, Landroid/hardware/ssp/DaemonRunnerReplay$FileReadThread;->stopFlag:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v4, :cond_1

    .line 212
    :cond_0
    :goto_1
    iget-object v4, p0, Landroid/hardware/ssp/DaemonRunnerReplay$FileReadThread;->this$0:Landroid/hardware/ssp/DaemonRunnerReplay;

    invoke-virtual {v4}, Landroid/hardware/ssp/DaemonRunnerReplay;->stopRunner()Z

    .line 213
    return-void

    .line 187
    :cond_1
    :try_start_1
    iget-object v4, p0, Landroid/hardware/ssp/DaemonRunnerReplay$FileReadThread;->this$0:Landroid/hardware/ssp/DaemonRunnerReplay;

    #getter for: Landroid/hardware/ssp/DaemonRunnerReplay;->mbufferReader:Ljava/io/BufferedReader;
    invoke-static {v4}, Landroid/hardware/ssp/DaemonRunnerReplay;->access$100(Landroid/hardware/ssp/DaemonRunnerReplay;)Ljava/io/BufferedReader;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 191
    invoke-static {}, Landroid/hardware/ssp/SSPLogger;->trace()V

    .line 193
    iget-object v4, p0, Landroid/hardware/ssp/DaemonRunnerReplay$FileReadThread;->this$0:Landroid/hardware/ssp/DaemonRunnerReplay;

    #getter for: Landroid/hardware/ssp/DaemonRunnerReplay;->mbufferReader:Ljava/io/BufferedReader;
    invoke-static {v4}, Landroid/hardware/ssp/DaemonRunnerReplay;->access$100(Landroid/hardware/ssp/DaemonRunnerReplay;)Ljava/io/BufferedReader;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 194
    if-eqz v3, :cond_0

    .line 198
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerOperation;->getInstance()Landroid/hardware/ssp/DaemonManagerOperation;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/ssp/DaemonManagerOperation;->getService()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/ssp/DaemonConstants$SSPServices;

    .line 200
    .local v1, i:Landroid/hardware/ssp/DaemonConstants$SSPServices;
    iget-object v4, p0, Landroid/hardware/ssp/DaemonRunnerReplay$FileReadThread;->this$0:Landroid/hardware/ssp/DaemonRunnerReplay;

    invoke-virtual {v1}, Landroid/hardware/ssp/DaemonConstants$SSPServices;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Landroid/hardware/ssp/DaemonRunnerReplay;->updateContext(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v3, v5}, Landroid/hardware/ssp/DaemonRunnerReplay;->access$200(Landroid/hardware/ssp/DaemonRunnerReplay;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 205
    .end local v1           #i:Landroid/hardware/ssp/DaemonConstants$SSPServices;
    .end local v2           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 206
    .local v0, e:Ljava/lang/InterruptedException;
    goto :goto_1

    .line 203
    .end local v0           #e:Ljava/lang/InterruptedException;
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_2
    const-wide/16 v4, 0x3e8

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 207
    .end local v2           #i$:Ljava/util/Iterator;
    :catch_1
    move-exception v0

    .line 208
    .local v0, e:Ljava/io/IOException;
    goto :goto_1
.end method

.method stopThread()V
    .locals 1

    .prologue
    .line 216
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/ssp/DaemonRunnerReplay$FileReadThread;->stopFlag:Z

    .line 217
    return-void
.end method
