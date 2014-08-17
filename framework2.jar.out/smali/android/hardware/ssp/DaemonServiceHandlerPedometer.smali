.class Landroid/hardware/ssp/DaemonServiceHandlerPedometer;
.super Landroid/hardware/ssp/ADaemonService;
.source "DaemonServiceHandlerPedometer.java"


# static fields
.field private static final SERVICE_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    sget-object v0, Landroid/hardware/ssp/DaemonConstants$SSPServices;->PEDOMETER:Landroid/hardware/ssp/DaemonConstants$SSPServices;

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonConstants$SSPServices;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/ssp/DaemonServiceHandlerPedometer;->SERVICE_NAME:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/hardware/ssp/ADaemonService;-><init>()V

    return-void
.end method


# virtual methods
.method public setServiceName()V
    .locals 2

    .prologue
    .line 84
    invoke-super {p0}, Landroid/hardware/ssp/ADaemonService;->getService()Landroid/hardware/ssp/DaemonService;

    move-result-object v0

    sget-object v1, Landroid/hardware/ssp/DaemonServiceHandlerPedometer;->SERVICE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/ssp/DaemonService;->setServiceName(Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public startService()Z
    .locals 2

    .prologue
    .line 34
    invoke-super {p0}, Landroid/hardware/ssp/ADaemonService;->startService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    const/4 v0, 0x0

    .line 41
    :goto_0
    return v0

    .line 38
    :cond_0
    invoke-static {}, Landroid/hardware/ssp/DaemonProviderGeneralMsg;->getInstance()Landroid/hardware/ssp/DaemonProviderGeneralMsg;

    move-result-object v0

    const-string v1, "SSP Pedometer Service is Started."

    invoke-virtual {v0, v1}, Landroid/hardware/ssp/DaemonProviderGeneralMsg;->notifyGeneralConetxt(Ljava/lang/String;)V

    .line 41
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public stopService()Z
    .locals 2

    .prologue
    .line 51
    invoke-super {p0}, Landroid/hardware/ssp/ADaemonService;->stopService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    const/4 v0, 0x0

    .line 58
    :goto_0
    return v0

    .line 55
    :cond_0
    invoke-static {}, Landroid/hardware/ssp/DaemonProviderGeneralMsg;->getInstance()Landroid/hardware/ssp/DaemonProviderGeneralMsg;

    move-result-object v0

    const-string v1, "SSP Pedometer Service is Stopped."

    invoke-virtual {v0, v1}, Landroid/hardware/ssp/DaemonProviderGeneralMsg;->notifyGeneralConetxt(Ljava/lang/String;)V

    .line 58
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected updatePedometerContext(Landroid/hardware/ssp/DaemonContexts$SSPPedometer;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 69
    if-nez p1, :cond_0

    .line 74
    :goto_0
    return-void

    .line 73
    :cond_0
    const/4 v0, 0x5

    invoke-super {p0, v0, p1}, Landroid/hardware/ssp/ADaemonService;->reportContext(ILandroid/hardware/ssp/IDaemonContexts;)V

    goto :goto_0
.end method
