.class Landroid/hardware/ssp/DaemonServiceHandlerGeneral;
.super Landroid/hardware/ssp/ADaemonService;
.source "DaemonServiceHandlerGeneral.java"

# interfaces
.implements Landroid/hardware/ssp/IDaemonListenerProviderGeneralMsg;


# static fields
.field private static final SERVICE_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    sget-object v0, Landroid/hardware/ssp/DaemonConstants$SSPServices;->GENERAL:Landroid/hardware/ssp/DaemonConstants$SSPServices;

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonConstants$SSPServices;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/ssp/DaemonServiceHandlerGeneral;->SERVICE_NAME:Ljava/lang/String;

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
    .line 52
    invoke-super {p0}, Landroid/hardware/ssp/ADaemonService;->getService()Landroid/hardware/ssp/DaemonService;

    move-result-object v0

    sget-object v1, Landroid/hardware/ssp/DaemonServiceHandlerGeneral;->SERVICE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/ssp/DaemonService;->setServiceName(Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public updateGeneralContext(Landroid/hardware/ssp/DaemonContexts$SSPGeneral;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 37
    if-nez p1, :cond_0

    .line 42
    :goto_0
    return-void

    .line 41
    :cond_0
    const/4 v0, 0x1

    invoke-super {p0, v0, p1}, Landroid/hardware/ssp/ADaemonService;->reportContext(ILandroid/hardware/ssp/IDaemonContexts;)V

    goto :goto_0
.end method
