.class Landroid/hardware/ssp/DaemonRunnerGPS$1;
.super Ljava/lang/Object;
.source "DaemonRunnerGPS.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/ssp/DaemonRunnerGPS;->enableGPS()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/ssp/DaemonRunnerGPS;


# direct methods
.method constructor <init>(Landroid/hardware/ssp/DaemonRunnerGPS;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Landroid/hardware/ssp/DaemonRunnerGPS$1;->this$0:Landroid/hardware/ssp/DaemonRunnerGPS;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunnerGPS$1;->this$0:Landroid/hardware/ssp/DaemonRunnerGPS;

    #getter for: Landroid/hardware/ssp/DaemonRunnerGPS;->mGPSManager:Landroid/location/LocationManager;
    invoke-static {v0}, Landroid/hardware/ssp/DaemonRunnerGPS;->access$100(Landroid/hardware/ssp/DaemonRunnerGPS;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/ssp/DaemonRunnerGPS$1;->this$0:Landroid/hardware/ssp/DaemonRunnerGPS;

    #getter for: Landroid/hardware/ssp/DaemonRunnerGPS;->mGPSStatusListener:Landroid/location/GpsStatus$Listener;
    invoke-static {v1}, Landroid/hardware/ssp/DaemonRunnerGPS;->access$000(Landroid/hardware/ssp/DaemonRunnerGPS;)Landroid/location/GpsStatus$Listener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    .line 88
    return-void
.end method
