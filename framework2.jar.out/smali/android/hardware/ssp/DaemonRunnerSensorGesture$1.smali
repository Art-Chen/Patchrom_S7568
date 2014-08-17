.class Landroid/hardware/ssp/DaemonRunnerSensorGesture$1;
.super Ljava/lang/Object;
.source "DaemonRunnerSensorGesture.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/ssp/DaemonRunnerSensorGesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/ssp/DaemonRunnerSensorGesture;


# direct methods
.method constructor <init>(Landroid/hardware/ssp/DaemonRunnerSensorGesture;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Landroid/hardware/ssp/DaemonRunnerSensorGesture$1;->this$0:Landroid/hardware/ssp/DaemonRunnerSensorGesture;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 43
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 46
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunnerSensorGesture$1;->this$0:Landroid/hardware/ssp/DaemonRunnerSensorGesture;

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonRunnerSensorGesture;->isRun()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 60
    :goto_0
    return-void

    .line 50
    :cond_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    goto :goto_0
.end method
