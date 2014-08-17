.class final enum Landroid/hardware/ssp/SSPLogger$Level$1;
.super Landroid/hardware/ssp/SSPLogger$Level;
.source "SSPLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/ssp/SSPLogger$Level;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/hardware/ssp/SSPLogger$Level;-><init>(Ljava/lang/String;ILandroid/hardware/ssp/SSPLogger$1;)V

    return-void
.end method


# virtual methods
.method consoleLogging(Ljava/lang/String;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-static {}, Landroid/hardware/ssp/SSPLogger;->access$100()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Landroid/hardware/ssp/SSPLogger;->access$200()I

    move-result v2

    invoke-virtual {p0}, Landroid/hardware/ssp/SSPLogger$Level$1;->ordinal()I

    move-result v3

    if-gt v2, v3, :cond_1

    const/4 v0, 0x1

    .line 58
    .local v0, usable:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 59
    const-string v2, "SSP"

    #calls: Landroid/hardware/ssp/SSPLogger$Level;->getCallerInfo(Z)Ljava/lang/String;
    invoke-static {v1}, Landroid/hardware/ssp/SSPLogger$Level;->access$300(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_0
    return-void

    .end local v0           #usable:Z
    :cond_1
    move v0, v1

    .line 56
    goto :goto_0
.end method

.method fileLogging(Ljava/lang/String;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-static {}, Landroid/hardware/ssp/SSPLogger;->access$400()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Landroid/hardware/ssp/SSPLogger;->access$200()I

    move-result v2

    invoke-virtual {p0}, Landroid/hardware/ssp/SSPLogger$Level$1;->ordinal()I

    move-result v3

    if-gt v2, v3, :cond_1

    const/4 v0, 0x1

    .line 67
    .local v0, usable:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 68
    invoke-static {}, Landroid/hardware/ssp/DaemonProviderFileLogging;->getInstance()Landroid/hardware/ssp/DaemonProviderFileLogging;

    move-result-object v2

    const-string v3, "SSPLogger"

    const-string v4, "T"

    const-string v5, "SSP"

    #calls: Landroid/hardware/ssp/SSPLogger$Level;->getCallerInfo(Z)Ljava/lang/String;
    invoke-static {v1}, Landroid/hardware/ssp/SSPLogger$Level;->access$300(Z)Ljava/lang/String;

    move-result-object v1

    #calls: Landroid/hardware/ssp/SSPLogger;->getFilePattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v4, v5, v1, p1}, Landroid/hardware/ssp/SSPLogger;->access$500(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/hardware/ssp/DaemonProviderFileLogging;->logging(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :cond_0
    return-void

    .end local v0           #usable:Z
    :cond_1
    move v0, v1

    .line 65
    goto :goto_0
.end method
