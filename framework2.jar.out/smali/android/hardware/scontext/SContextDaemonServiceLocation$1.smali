.class Landroid/hardware/scontext/SContextDaemonServiceLocation$1;
.super Ljava/lang/Object;
.source "SContextDaemonServiceLocation.java"

# interfaces
.implements Landroid/hardware/ssp/SSPListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/scontext/SContextDaemonServiceLocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/scontext/SContextDaemonServiceLocation;


# direct methods
.method constructor <init>(Landroid/hardware/scontext/SContextDaemonServiceLocation;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Landroid/hardware/scontext/SContextDaemonServiceLocation$1;->this$0:Landroid/hardware/scontext/SContextDaemonServiceLocation;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContextChanged(Landroid/hardware/ssp/SSPEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 50
    invoke-virtual {p1}, Landroid/hardware/ssp/SSPEvent;->getEvent()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 63
    :goto_0
    return-void

    .line 52
    :pswitch_0
    invoke-virtual {p1}, Landroid/hardware/ssp/SSPEvent;->getLocationContext()Landroid/hardware/ssp/SSPLocationContext;

    move-result-object v0

    .line 54
    .local v0, locationContext:Landroid/hardware/ssp/SSPLocationContext;
    iget-object v1, p0, Landroid/hardware/scontext/SContextDaemonServiceLocation$1;->this$0:Landroid/hardware/scontext/SContextDaemonServiceLocation;

    #getter for: Landroid/hardware/scontext/SContextDaemonServiceLocation;->mSContextLocation:Landroid/hardware/scontext/SContextDaemonContexts$SContextLocationContext;
    invoke-static {v1}, Landroid/hardware/scontext/SContextDaemonServiceLocation;->access$000(Landroid/hardware/scontext/SContextDaemonServiceLocation;)Landroid/hardware/scontext/SContextDaemonContexts$SContextLocationContext;

    move-result-object v1

    invoke-virtual {v0}, Landroid/hardware/ssp/SSPLocationContext;->getLatitude()D

    move-result-wide v2

    iput-wide v2, v1, Landroid/hardware/scontext/SContextDaemonContexts$SContextLocationContext;->latitude:D

    .line 55
    iget-object v1, p0, Landroid/hardware/scontext/SContextDaemonServiceLocation$1;->this$0:Landroid/hardware/scontext/SContextDaemonServiceLocation;

    #getter for: Landroid/hardware/scontext/SContextDaemonServiceLocation;->mSContextLocation:Landroid/hardware/scontext/SContextDaemonContexts$SContextLocationContext;
    invoke-static {v1}, Landroid/hardware/scontext/SContextDaemonServiceLocation;->access$000(Landroid/hardware/scontext/SContextDaemonServiceLocation;)Landroid/hardware/scontext/SContextDaemonContexts$SContextLocationContext;

    move-result-object v1

    invoke-virtual {v0}, Landroid/hardware/ssp/SSPLocationContext;->getLatitude()D

    move-result-wide v2

    iput-wide v2, v1, Landroid/hardware/scontext/SContextDaemonContexts$SContextLocationContext;->longitude:D

    .line 56
    iget-object v1, p0, Landroid/hardware/scontext/SContextDaemonServiceLocation$1;->this$0:Landroid/hardware/scontext/SContextDaemonServiceLocation;

    #getter for: Landroid/hardware/scontext/SContextDaemonServiceLocation;->mSContextLocation:Landroid/hardware/scontext/SContextDaemonContexts$SContextLocationContext;
    invoke-static {v1}, Landroid/hardware/scontext/SContextDaemonServiceLocation;->access$000(Landroid/hardware/scontext/SContextDaemonServiceLocation;)Landroid/hardware/scontext/SContextDaemonContexts$SContextLocationContext;

    move-result-object v1

    invoke-virtual {v0}, Landroid/hardware/ssp/SSPLocationContext;->getTimeStamp()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/hardware/scontext/SContextDaemonContexts$SContextLocationContext;->timestamp:J

    .line 57
    iget-object v1, p0, Landroid/hardware/scontext/SContextDaemonServiceLocation$1;->this$0:Landroid/hardware/scontext/SContextDaemonServiceLocation;

    const/4 v2, 0x3

    iget-object v3, p0, Landroid/hardware/scontext/SContextDaemonServiceLocation$1;->this$0:Landroid/hardware/scontext/SContextDaemonServiceLocation;

    #getter for: Landroid/hardware/scontext/SContextDaemonServiceLocation;->mSContextLocation:Landroid/hardware/scontext/SContextDaemonContexts$SContextLocationContext;
    invoke-static {v3}, Landroid/hardware/scontext/SContextDaemonServiceLocation;->access$000(Landroid/hardware/scontext/SContextDaemonServiceLocation;)Landroid/hardware/scontext/SContextDaemonContexts$SContextLocationContext;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/scontext/SContextDaemonServiceLocation;->updateContext(ILandroid/hardware/scontext/ISContextDaemonContexts;)V

    goto :goto_0

    .line 50
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
