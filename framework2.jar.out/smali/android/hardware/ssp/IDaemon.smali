.class interface abstract Landroid/hardware/ssp/IDaemon;
.super Ljava/lang/Object;
.source "IDaemon.java"


# virtual methods
.method public abstract addService(I)V
.end method

.method public abstract finalizeDaemon()Z
.end method

.method public abstract initializeDaemon(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Landroid/hardware/ssp/DaemonConstants$SSPMode;)Z
.end method

.method public abstract initializeService(I)V
.end method

.method public abstract removeService(I)V
.end method

.method public abstract setProperty(IILandroid/hardware/ssp/SSPPropertyBundle;)V
.end method

.method public abstract setProperty(Landroid/hardware/ssp/DaemonConstants$SSPServices;Landroid/hardware/ssp/DaemonConstants$SSPPropertys;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/ssp/DaemonConstants$SSPServices;",
            "Landroid/hardware/ssp/DaemonConstants$SSPPropertys;",
            "TT;)V"
        }
    .end annotation
.end method
