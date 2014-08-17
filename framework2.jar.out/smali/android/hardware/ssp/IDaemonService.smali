.class interface abstract Landroid/hardware/ssp/IDaemonService;
.super Ljava/lang/Object;
.source "IDaemonService.java"


# virtual methods
.method public abstract clear()V
.end method

.method public abstract isRun()Z
.end method

.method public abstract setProperty(Landroid/hardware/ssp/DaemonConstants$SSPPropertys;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/ssp/DaemonConstants$SSPPropertys;",
            "TE;)Z"
        }
    .end annotation
.end method

.method public abstract startService()Z
.end method

.method public abstract stopService()Z
.end method
