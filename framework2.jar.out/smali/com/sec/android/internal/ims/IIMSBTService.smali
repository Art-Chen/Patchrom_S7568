.class public interface abstract Lcom/sec/android/internal/ims/IIMSBTService;
.super Ljava/lang/Object;
.source "IIMSBTService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/internal/ims/IIMSBTService$Stub;
    }
.end annotation


# virtual methods
.method public abstract newBTEvent(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerListener(Lcom/sec/android/internal/ims/IIMSBTCallStateListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
