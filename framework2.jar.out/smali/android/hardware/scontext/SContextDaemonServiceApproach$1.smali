.class Landroid/hardware/scontext/SContextDaemonServiceApproach$1;
.super Ljava/lang/Object;
.source "SContextDaemonServiceApproach.java"

# interfaces
.implements Landroid/hardware/ssp/SSPListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/scontext/SContextDaemonServiceApproach;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/scontext/SContextDaemonServiceApproach;


# direct methods
.method constructor <init>(Landroid/hardware/scontext/SContextDaemonServiceApproach;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Landroid/hardware/scontext/SContextDaemonServiceApproach$1;->this$0:Landroid/hardware/scontext/SContextDaemonServiceApproach;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContextChanged(Landroid/hardware/ssp/SSPEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    .line 49
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 50
    .local v0, timestamp:J
    invoke-virtual {p1}, Landroid/hardware/ssp/SSPEvent;->getEvent()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 59
    :goto_0
    return-void

    .line 52
    :pswitch_0
    iget-object v2, p0, Landroid/hardware/scontext/SContextDaemonServiceApproach$1;->this$0:Landroid/hardware/scontext/SContextDaemonServiceApproach;

    #getter for: Landroid/hardware/scontext/SContextDaemonServiceApproach;->mSContextApproach:Landroid/hardware/scontext/SContextDaemonContexts$SContextApproachContext;
    invoke-static {v2}, Landroid/hardware/scontext/SContextDaemonServiceApproach;->access$000(Landroid/hardware/scontext/SContextDaemonServiceApproach;)Landroid/hardware/scontext/SContextDaemonContexts$SContextApproachContext;

    move-result-object v2

    iput v4, v2, Landroid/hardware/scontext/SContextDaemonContexts$SContextApproachContext;->approach:I

    .line 53
    iget-object v2, p0, Landroid/hardware/scontext/SContextDaemonServiceApproach$1;->this$0:Landroid/hardware/scontext/SContextDaemonServiceApproach;

    #getter for: Landroid/hardware/scontext/SContextDaemonServiceApproach;->mSContextApproach:Landroid/hardware/scontext/SContextDaemonContexts$SContextApproachContext;
    invoke-static {v2}, Landroid/hardware/scontext/SContextDaemonServiceApproach;->access$000(Landroid/hardware/scontext/SContextDaemonServiceApproach;)Landroid/hardware/scontext/SContextDaemonContexts$SContextApproachContext;

    move-result-object v2

    iput-wide v0, v2, Landroid/hardware/scontext/SContextDaemonContexts$SContextApproachContext;->timestamp:J

    .line 54
    iget-object v2, p0, Landroid/hardware/scontext/SContextDaemonServiceApproach$1;->this$0:Landroid/hardware/scontext/SContextDaemonServiceApproach;

    iget-object v3, p0, Landroid/hardware/scontext/SContextDaemonServiceApproach$1;->this$0:Landroid/hardware/scontext/SContextDaemonServiceApproach;

    #getter for: Landroid/hardware/scontext/SContextDaemonServiceApproach;->mSContextApproach:Landroid/hardware/scontext/SContextDaemonContexts$SContextApproachContext;
    invoke-static {v3}, Landroid/hardware/scontext/SContextDaemonServiceApproach;->access$000(Landroid/hardware/scontext/SContextDaemonServiceApproach;)Landroid/hardware/scontext/SContextDaemonContexts$SContextApproachContext;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/hardware/scontext/SContextDaemonServiceApproach;->updateContext(ILandroid/hardware/scontext/ISContextDaemonContexts;)V

    goto :goto_0

    .line 50
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method
