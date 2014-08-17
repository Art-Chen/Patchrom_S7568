.class Landroid/hardware/ssp/DaemonServiceHandlerLocation;
.super Landroid/hardware/ssp/ADaemonService;
.source "DaemonServiceHandlerLocation.java"


# static fields
.field private static final SERVICE_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    sget-object v0, Landroid/hardware/ssp/DaemonConstants$SSPServices;->LOCATION:Landroid/hardware/ssp/DaemonConstants$SSPServices;

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonConstants$SSPServices;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/ssp/DaemonServiceHandlerLocation;->SERVICE_NAME:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/hardware/ssp/ADaemonService;-><init>()V

    return-void
.end method


# virtual methods
.method public setServiceName()V
    .locals 2

    .prologue
    .line 83
    invoke-super {p0}, Landroid/hardware/ssp/ADaemonService;->getService()Landroid/hardware/ssp/DaemonService;

    move-result-object v0

    sget-object v1, Landroid/hardware/ssp/DaemonServiceHandlerLocation;->SERVICE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/ssp/DaemonService;->setServiceName(Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public startService()Z
    .locals 2

    .prologue
    .line 35
    invoke-super {p0}, Landroid/hardware/ssp/ADaemonService;->startService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    const/4 v0, 0x0

    .line 42
    :goto_0
    return v0

    .line 39
    :cond_0
    invoke-static {}, Landroid/hardware/ssp/DaemonProviderGeneralMsg;->getInstance()Landroid/hardware/ssp/DaemonProviderGeneralMsg;

    move-result-object v0

    const-string v1, "SSP Location Service is Started."

    invoke-virtual {v0, v1}, Landroid/hardware/ssp/DaemonProviderGeneralMsg;->notifyGeneralConetxt(Ljava/lang/String;)V

    .line 42
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public stopService()Z
    .locals 2

    .prologue
    .line 52
    invoke-super {p0}, Landroid/hardware/ssp/ADaemonService;->stopService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    const/4 v0, 0x0

    .line 59
    :goto_0
    return v0

    .line 56
    :cond_0
    invoke-static {}, Landroid/hardware/ssp/DaemonProviderGeneralMsg;->getInstance()Landroid/hardware/ssp/DaemonProviderGeneralMsg;

    move-result-object v0

    const-string v1, "SSP Location Service is Stopped."

    invoke-virtual {v0, v1}, Landroid/hardware/ssp/DaemonProviderGeneralMsg;->notifyGeneralConetxt(Ljava/lang/String;)V

    .line 59
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected updateLocationContext(Landroid/hardware/ssp/DaemonContexts$SSPLocation;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 69
    if-nez p1, :cond_0

    .line 73
    :goto_0
    return-void

    .line 72
    :cond_0
    const/4 v0, 0x2

    invoke-super {p0, v0, p1}, Landroid/hardware/ssp/ADaemonService;->reportContext(ILandroid/hardware/ssp/IDaemonContexts;)V

    goto :goto_0
.end method
