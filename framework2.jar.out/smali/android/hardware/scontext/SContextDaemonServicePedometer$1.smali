.class Landroid/hardware/scontext/SContextDaemonServicePedometer$1;
.super Ljava/lang/Object;
.source "SContextDaemonServicePedometer.java"

# interfaces
.implements Landroid/hardware/ssp/SSPListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/scontext/SContextDaemonServicePedometer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/scontext/SContextDaemonServicePedometer;


# direct methods
.method constructor <init>(Landroid/hardware/scontext/SContextDaemonServicePedometer;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Landroid/hardware/scontext/SContextDaemonServicePedometer$1;->this$0:Landroid/hardware/scontext/SContextDaemonServicePedometer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContextChanged(Landroid/hardware/ssp/SSPEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 52
    invoke-virtual {p1}, Landroid/hardware/ssp/SSPEvent;->getEvent()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 69
    :goto_0
    return-void

    .line 54
    :pswitch_0
    invoke-virtual {p1}, Landroid/hardware/ssp/SSPEvent;->getPedometerContext()Landroid/hardware/ssp/SSPPedometerContext;

    move-result-object v0

    .line 56
    .local v0, pedometerContext:Landroid/hardware/ssp/SSPPedometerContext;
    iget-object v1, p0, Landroid/hardware/scontext/SContextDaemonServicePedometer$1;->this$0:Landroid/hardware/scontext/SContextDaemonServicePedometer;

    #getter for: Landroid/hardware/scontext/SContextDaemonServicePedometer;->mSContextPedometer:Landroid/hardware/scontext/SContextDaemonContexts$SContextPedometerContext;
    invoke-static {v1}, Landroid/hardware/scontext/SContextDaemonServicePedometer;->access$000(Landroid/hardware/scontext/SContextDaemonServicePedometer;)Landroid/hardware/scontext/SContextDaemonContexts$SContextPedometerContext;

    move-result-object v1

    invoke-virtual {v0}, Landroid/hardware/ssp/SSPPedometerContext;->getStepCount()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/hardware/scontext/SContextDaemonContexts$SContextPedometerContext;->stepCount:J

    .line 57
    iget-object v1, p0, Landroid/hardware/scontext/SContextDaemonServicePedometer$1;->this$0:Landroid/hardware/scontext/SContextDaemonServicePedometer;

    #getter for: Landroid/hardware/scontext/SContextDaemonServicePedometer;->mSContextPedometer:Landroid/hardware/scontext/SContextDaemonContexts$SContextPedometerContext;
    invoke-static {v1}, Landroid/hardware/scontext/SContextDaemonServicePedometer;->access$000(Landroid/hardware/scontext/SContextDaemonServicePedometer;)Landroid/hardware/scontext/SContextDaemonContexts$SContextPedometerContext;

    move-result-object v1

    invoke-virtual {v0}, Landroid/hardware/ssp/SSPPedometerContext;->getCalorie()D

    move-result-wide v2

    iput-wide v2, v1, Landroid/hardware/scontext/SContextDaemonContexts$SContextPedometerContext;->calorie:D

    .line 58
    iget-object v1, p0, Landroid/hardware/scontext/SContextDaemonServicePedometer$1;->this$0:Landroid/hardware/scontext/SContextDaemonServicePedometer;

    #getter for: Landroid/hardware/scontext/SContextDaemonServicePedometer;->mSContextPedometer:Landroid/hardware/scontext/SContextDaemonContexts$SContextPedometerContext;
    invoke-static {v1}, Landroid/hardware/scontext/SContextDaemonServicePedometer;->access$000(Landroid/hardware/scontext/SContextDaemonServicePedometer;)Landroid/hardware/scontext/SContextDaemonContexts$SContextPedometerContext;

    move-result-object v1

    invoke-virtual {v0}, Landroid/hardware/ssp/SSPPedometerContext;->getDistance()D

    move-result-wide v2

    iput-wide v2, v1, Landroid/hardware/scontext/SContextDaemonContexts$SContextPedometerContext;->distance:D

    .line 59
    iget-object v1, p0, Landroid/hardware/scontext/SContextDaemonServicePedometer$1;->this$0:Landroid/hardware/scontext/SContextDaemonServicePedometer;

    #getter for: Landroid/hardware/scontext/SContextDaemonServicePedometer;->mSContextPedometer:Landroid/hardware/scontext/SContextDaemonContexts$SContextPedometerContext;
    invoke-static {v1}, Landroid/hardware/scontext/SContextDaemonServicePedometer;->access$000(Landroid/hardware/scontext/SContextDaemonServicePedometer;)Landroid/hardware/scontext/SContextDaemonContexts$SContextPedometerContext;

    move-result-object v1

    invoke-virtual {v0}, Landroid/hardware/ssp/SSPPedometerContext;->getSpeed()D

    move-result-wide v2

    iput-wide v2, v1, Landroid/hardware/scontext/SContextDaemonContexts$SContextPedometerContext;->speed:D

    .line 60
    iget-object v1, p0, Landroid/hardware/scontext/SContextDaemonServicePedometer$1;->this$0:Landroid/hardware/scontext/SContextDaemonServicePedometer;

    #getter for: Landroid/hardware/scontext/SContextDaemonServicePedometer;->mSContextPedometer:Landroid/hardware/scontext/SContextDaemonContexts$SContextPedometerContext;
    invoke-static {v1}, Landroid/hardware/scontext/SContextDaemonServicePedometer;->access$000(Landroid/hardware/scontext/SContextDaemonServicePedometer;)Landroid/hardware/scontext/SContextDaemonContexts$SContextPedometerContext;

    move-result-object v1

    invoke-virtual {v0}, Landroid/hardware/ssp/SSPPedometerContext;->getStepStatusST()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroid/hardware/scontext/SContextDaemonContexts$SContextPedometerContext;->stepStatusST:I

    .line 61
    iget-object v1, p0, Landroid/hardware/scontext/SContextDaemonServicePedometer$1;->this$0:Landroid/hardware/scontext/SContextDaemonServicePedometer;

    #getter for: Landroid/hardware/scontext/SContextDaemonServicePedometer;->mSContextPedometer:Landroid/hardware/scontext/SContextDaemonContexts$SContextPedometerContext;
    invoke-static {v1}, Landroid/hardware/scontext/SContextDaemonServicePedometer;->access$000(Landroid/hardware/scontext/SContextDaemonServicePedometer;)Landroid/hardware/scontext/SContextDaemonContexts$SContextPedometerContext;

    move-result-object v1

    invoke-virtual {v0}, Landroid/hardware/ssp/SSPPedometerContext;->getStepStatusLT()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroid/hardware/scontext/SContextDaemonContexts$SContextPedometerContext;->stepStatusLT:I

    .line 63
    iget-object v1, p0, Landroid/hardware/scontext/SContextDaemonServicePedometer$1;->this$0:Landroid/hardware/scontext/SContextDaemonServicePedometer;

    const/4 v2, 0x5

    iget-object v3, p0, Landroid/hardware/scontext/SContextDaemonServicePedometer$1;->this$0:Landroid/hardware/scontext/SContextDaemonServicePedometer;

    #getter for: Landroid/hardware/scontext/SContextDaemonServicePedometer;->mSContextPedometer:Landroid/hardware/scontext/SContextDaemonContexts$SContextPedometerContext;
    invoke-static {v3}, Landroid/hardware/scontext/SContextDaemonServicePedometer;->access$000(Landroid/hardware/scontext/SContextDaemonServicePedometer;)Landroid/hardware/scontext/SContextDaemonContexts$SContextPedometerContext;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/scontext/SContextDaemonServicePedometer;->updateContext(ILandroid/hardware/scontext/ISContextDaemonContexts;)V

    goto :goto_0

    .line 52
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method
