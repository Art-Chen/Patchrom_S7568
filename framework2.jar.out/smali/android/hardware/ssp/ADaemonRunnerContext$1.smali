.class Landroid/hardware/ssp/ADaemonRunnerContext$1;
.super Ljava/lang/Object;
.source "ADaemonRunnerContext.java"

# interfaces
.implements Landroid/hardware/sensorhub/SensorHubEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/ssp/ADaemonRunnerContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/ssp/ADaemonRunnerContext;


# direct methods
.method constructor <init>(Landroid/hardware/ssp/ADaemonRunnerContext;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Landroid/hardware/ssp/ADaemonRunnerContext$1;->this$0:Landroid/hardware/ssp/ADaemonRunnerContext;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetSensorHubData(Landroid/hardware/sensorhub/SensorHubEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGetSensorHubData Event [event buffer len :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/hardware/sensorhub/SensorHubEvent;->length:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/ssp/SSPLogger;->debug(Ljava/lang/String;)V

    .line 64
    iget v0, p1, Landroid/hardware/sensorhub/SensorHubEvent;->length:I

    if-gtz v0, :cond_0

    .line 65
    const-string v0, "Event buffer size is zero."

    invoke-static {v0}, Landroid/hardware/ssp/SSPLogger;->error(Ljava/lang/String;)V

    .line 68
    :cond_0
    iget-object v0, p0, Landroid/hardware/ssp/ADaemonRunnerContext$1;->this$0:Landroid/hardware/ssp/ADaemonRunnerContext;

    invoke-virtual {v0, p1}, Landroid/hardware/ssp/ADaemonRunnerContext;->run(Landroid/hardware/sensorhub/SensorHubEvent;)V

    .line 69
    return-void
.end method
