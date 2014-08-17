.class Landroid/hardware/scontext/SContextDaemonServiceMotion$1;
.super Ljava/lang/Object;
.source "SContextDaemonServiceMotion.java"

# interfaces
.implements Landroid/hardware/ssp/SSPListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/scontext/SContextDaemonServiceMotion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/scontext/SContextDaemonServiceMotion;


# direct methods
.method constructor <init>(Landroid/hardware/scontext/SContextDaemonServiceMotion;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Landroid/hardware/scontext/SContextDaemonServiceMotion$1;->this$0:Landroid/hardware/scontext/SContextDaemonServiceMotion;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContextChanged(Landroid/hardware/ssp/SSPEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    .line 54
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 55
    .local v0, timestamp:J
    invoke-virtual {p1}, Landroid/hardware/ssp/SSPEvent;->getEvent()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 63
    :goto_0
    return-void

    .line 57
    :pswitch_0
    iget-object v2, p0, Landroid/hardware/scontext/SContextDaemonServiceMotion$1;->this$0:Landroid/hardware/scontext/SContextDaemonServiceMotion;

    #getter for: Landroid/hardware/scontext/SContextDaemonServiceMotion;->mSContextMotion:Landroid/hardware/scontext/SContextDaemonContexts$SContextMotionContext;
    invoke-static {v2}, Landroid/hardware/scontext/SContextDaemonServiceMotion;->access$000(Landroid/hardware/scontext/SContextDaemonServiceMotion;)Landroid/hardware/scontext/SContextDaemonContexts$SContextMotionContext;

    move-result-object v2

    invoke-virtual {p1}, Landroid/hardware/ssp/SSPEvent;->getMotionContext()Landroid/hardware/ssp/SSPMotionContext;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/ssp/SSPMotionContext;->getType()I

    move-result v3

    iput v3, v2, Landroid/hardware/scontext/SContextDaemonContexts$SContextMotionContext;->motion:I

    .line 58
    iget-object v2, p0, Landroid/hardware/scontext/SContextDaemonServiceMotion$1;->this$0:Landroid/hardware/scontext/SContextDaemonServiceMotion;

    #getter for: Landroid/hardware/scontext/SContextDaemonServiceMotion;->mSContextMotion:Landroid/hardware/scontext/SContextDaemonContexts$SContextMotionContext;
    invoke-static {v2}, Landroid/hardware/scontext/SContextDaemonServiceMotion;->access$000(Landroid/hardware/scontext/SContextDaemonServiceMotion;)Landroid/hardware/scontext/SContextDaemonContexts$SContextMotionContext;

    move-result-object v2

    iput-wide v0, v2, Landroid/hardware/scontext/SContextDaemonContexts$SContextMotionContext;->timestamp:J

    .line 59
    iget-object v2, p0, Landroid/hardware/scontext/SContextDaemonServiceMotion$1;->this$0:Landroid/hardware/scontext/SContextDaemonServiceMotion;

    const/4 v3, 0x2

    iget-object v4, p0, Landroid/hardware/scontext/SContextDaemonServiceMotion$1;->this$0:Landroid/hardware/scontext/SContextDaemonServiceMotion;

    #getter for: Landroid/hardware/scontext/SContextDaemonServiceMotion;->mSContextMotion:Landroid/hardware/scontext/SContextDaemonContexts$SContextMotionContext;
    invoke-static {v4}, Landroid/hardware/scontext/SContextDaemonServiceMotion;->access$000(Landroid/hardware/scontext/SContextDaemonServiceMotion;)Landroid/hardware/scontext/SContextDaemonContexts$SContextMotionContext;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/hardware/scontext/SContextDaemonServiceMotion;->updateContext(ILandroid/hardware/scontext/ISContextDaemonContexts;)V

    goto :goto_0

    .line 55
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method
