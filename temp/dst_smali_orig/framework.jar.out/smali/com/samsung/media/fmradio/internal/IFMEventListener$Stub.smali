.class public abstract Lcom/samsung/media/fmradio/internal/IFMEventListener$Stub;
.super Landroid/os/Binder;
.source "IFMEventListener.java"

# interfaces
.implements Lcom/samsung/media/fmradio/internal/IFMEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/media/fmradio/internal/IFMEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/media/fmradio/internal/IFMEventListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.media.fmradio.internal.IFMEventListener"

.field static final TRANSACTION_earPhoneConnected:I = 0x8

.field static final TRANSACTION_earPhoneDisconnected:I = 0x9

.field static final TRANSACTION_onAFReceived:I = 0xf

.field static final TRANSACTION_onAFStarted:I = 0xe

.field static final TRANSACTION_onChannelFound:I = 0x3

.field static final TRANSACTION_onOff:I = 0x2

.field static final TRANSACTION_onOn:I = 0x1

.field static final TRANSACTION_onRDSDisabled:I = 0xd

.field static final TRANSACTION_onRDSEnabled:I = 0xc

.field static final TRANSACTION_onRDSReceived:I = 0xa

.field static final TRANSACTION_onRTPlusReceived:I = 0xb

.field static final TRANSACTION_onScanFinished:I = 0x6

.field static final TRANSACTION_onScanStarted:I = 0x4

.field static final TRANSACTION_onScanStopped:I = 0x5

.field static final TRANSACTION_onTune:I = 0x7

.field static final TRANSACTION_recFinish:I = 0x11

.field static final TRANSACTION_volumeLock:I = 0x10


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.media.fmradio.internal.IFMEventListener"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/media/fmradio/internal/IFMEventListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/media/fmradio/internal/IFMEventListener;
    .locals 2
    .parameter "obj"

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.samsung.media.fmradio.internal.IFMEventListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/media/fmradio/internal/IFMEventListener;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/samsung/media/fmradio/internal/IFMEventListener;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/samsung/media/fmradio/internal/IFMEventListener$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/samsung/media/fmradio/internal/IFMEventListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    const-string v0, "com.samsung.media.fmradio.internal.IFMEventListener"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v10

    goto :goto_0

    :sswitch_1
    const-string v0, "com.samsung.media.fmradio.internal.IFMEventListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMEventListener$Stub;->onOn()V

    move v0, v10

    goto :goto_0

    :sswitch_2
    const-string v0, "com.samsung.media.fmradio.internal.IFMEventListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/samsung/media/fmradio/internal/IFMEventListener$Stub;->onOff(I)V

    move v0, v10

    goto :goto_0

    .end local v1           #_arg0:I
    :sswitch_3
    const-string v0, "com.samsung.media.fmradio.internal.IFMEventListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .local v7, _arg0:J
    invoke-virtual {p0, v7, v8}, Lcom/samsung/media/fmradio/internal/IFMEventListener$Stub;->onChannelFound(J)V

    move v0, v10

    goto :goto_0

    .end local v7           #_arg0:J
    :sswitch_4
    const-string v0, "com.samsung.media.fmradio.internal.IFMEventListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMEventListener$Stub;->onScanStarted()V

    move v0, v10

    goto :goto_0

    :sswitch_5
    const-string v0, "com.samsung.media.fmradio.internal.IFMEventListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .local v9, _arg0_length:I
    if-gez v9, :cond_0

    const/4 v1, 0x0

    .local v1, _arg0:[J
    :goto_1
    invoke-virtual {p0, v1}, Lcom/samsung/media/fmradio/internal/IFMEventListener$Stub;->onScanStopped([J)V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeLongArray([J)V

    move v0, v10

    goto :goto_0

    .end local v1           #_arg0:[J
    :cond_0
    new-array v1, v9, [J

    .restart local v1       #_arg0:[J
    goto :goto_1

    .end local v1           #_arg0:[J
    .end local v9           #_arg0_length:I
    :sswitch_6
    const-string v0, "com.samsung.media.fmradio.internal.IFMEventListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .restart local v9       #_arg0_length:I
    if-gez v9, :cond_1

    const/4 v1, 0x0

    .restart local v1       #_arg0:[J
    :goto_2
    invoke-virtual {p0, v1}, Lcom/samsung/media/fmradio/internal/IFMEventListener$Stub;->onScanFinished([J)V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeLongArray([J)V

    move v0, v10

    goto :goto_0

    .end local v1           #_arg0:[J
    :cond_1
    new-array v1, v9, [J

    .restart local v1       #_arg0:[J
    goto :goto_2

    .end local v1           #_arg0:[J
    .end local v9           #_arg0_length:I
    :sswitch_7
    const-string v0, "com.samsung.media.fmradio.internal.IFMEventListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .restart local v7       #_arg0:J
    invoke-virtual {p0, v7, v8}, Lcom/samsung/media/fmradio/internal/IFMEventListener$Stub;->onTune(J)V

    move v0, v10

    goto :goto_0

    .end local v7           #_arg0:J
    :sswitch_8
    const-string v0, "com.samsung.media.fmradio.internal.IFMEventListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMEventListener$Stub;->earPhoneConnected()V

    move v0, v10

    goto :goto_0

    :sswitch_9
    const-string v0, "com.samsung.media.fmradio.internal.IFMEventListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMEventListener$Stub;->earPhoneDisconnected()V

    move v0, v10

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "com.samsung.media.fmradio.internal.IFMEventListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .restart local v7       #_arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p0, v7, v8, v2, v3}, Lcom/samsung/media/fmradio/internal/IFMEventListener$Stub;->onRDSReceived(JLjava/lang/String;Ljava/lang/String;)V

    move v0, v10

    goto/16 :goto_0

    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v7           #_arg0:J
    :sswitch_b
    const-string v0, "com.samsung.media.fmradio.internal.IFMEventListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, _arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, _arg4:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, _arg5:I
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/media/fmradio/internal/IFMEventListener$Stub;->onRTPlusReceived(IIIIII)V

    move v0, v10

    goto/16 :goto_0

    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v4           #_arg3:I
    .end local v5           #_arg4:I
    .end local v6           #_arg5:I
    :sswitch_c
    const-string v0, "com.samsung.media.fmradio.internal.IFMEventListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMEventListener$Stub;->onRDSEnabled()V

    move v0, v10

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "com.samsung.media.fmradio.internal.IFMEventListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMEventListener$Stub;->onRDSDisabled()V

    move v0, v10

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "com.samsung.media.fmradio.internal.IFMEventListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMEventListener$Stub;->onAFStarted()V

    move v0, v10

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "com.samsung.media.fmradio.internal.IFMEventListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .restart local v7       #_arg0:J
    invoke-virtual {p0, v7, v8}, Lcom/samsung/media/fmradio/internal/IFMEventListener$Stub;->onAFReceived(J)V

    move v0, v10

    goto/16 :goto_0

    .end local v7           #_arg0:J
    :sswitch_10
    const-string v0, "com.samsung.media.fmradio.internal.IFMEventListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMEventListener$Stub;->volumeLock()V

    move v0, v10

    goto/16 :goto_0

    :sswitch_11
    const-string v0, "com.samsung.media.fmradio.internal.IFMEventListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMEventListener$Stub;->recFinish()V

    move v0, v10

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
