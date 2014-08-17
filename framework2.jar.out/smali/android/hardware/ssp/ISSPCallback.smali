.class public interface abstract Landroid/hardware/ssp/ISSPCallback;
.super Ljava/lang/Object;
.source "ISSPCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/ssp/ISSPCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract getListenerInfo()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract sspCallback(Landroid/hardware/ssp/SSPEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
