.class public abstract Landroid/hardware/ssp/ISSPService$Stub;
.super Landroid/os/Binder;
.source "ISSPService.java"

# interfaces
.implements Landroid/hardware/ssp/ISSPService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/ssp/ISSPService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/ssp/ISSPService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.ssp.ISSPService"

.field static final TRANSACTION_initializeSSPService:I = 0x5

.field static final TRANSACTION_isRunSSPAutoTest:I = 0xb

.field static final TRANSACTION_registerCallback:I = 0x3

.field static final TRANSACTION_setMode:I = 0x1

.field static final TRANSACTION_setPacketListForSSPAutoTest:I = 0xa

.field static final TRANSACTION_setReplayMode:I = 0x2

.field static final TRANSACTION_setSSPLogger:I = 0x7

.field static final TRANSACTION_setSSPProperty:I = 0x6

.field static final TRANSACTION_startSSPAutoTest:I = 0x8

.field static final TRANSACTION_stopSSPAutoTest:I = 0x9

.field static final TRANSACTION_unregisterCallback:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "android.hardware.ssp.ISSPService"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/ssp/ISSPService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/ssp/ISSPService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "android.hardware.ssp.ISSPService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/ssp/ISSPService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Landroid/hardware/ssp/ISSPService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Landroid/hardware/ssp/ISSPService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/hardware/ssp/ISSPService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
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
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 166
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 42
    :sswitch_0
    const-string v5, "android.hardware.ssp.ISSPService"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v5, "android.hardware.ssp.ISSPService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/hardware/ssp/ISSPService$Stub;->setMode(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 56
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_2
    const-string v5, "android.hardware.ssp.ISSPService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 60
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/hardware/ssp/ISSPService$Stub;->setReplayMode(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 67
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    :sswitch_3
    const-string v5, "android.hardware.ssp.ISSPService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 71
    .local v0, _arg0:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 72
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/hardware/ssp/ISSPService$Stub;->registerCallback(Landroid/os/IBinder;I)V

    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 78
    .end local v0           #_arg0:Landroid/os/IBinder;
    .end local v1           #_arg1:I
    :sswitch_4
    const-string v7, "android.hardware.ssp.ISSPService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 82
    .restart local v0       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 83
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/hardware/ssp/ISSPService$Stub;->unregisterCallback(Landroid/os/IBinder;I)Z

    move-result v4

    .line 84
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    if-eqz v4, :cond_0

    move v5, v6

    :cond_0
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 90
    .end local v0           #_arg0:Landroid/os/IBinder;
    .end local v1           #_arg1:I
    .end local v4           #_result:Z
    :sswitch_5
    const-string v5, "android.hardware.ssp.ISSPService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 93
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/hardware/ssp/ISSPService$Stub;->initializeSSPService(I)V

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 99
    .end local v0           #_arg0:I
    :sswitch_6
    const-string v5, "android.hardware.ssp.ISSPService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 103
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 105
    .restart local v1       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    .line 106
    sget-object v5, Landroid/hardware/ssp/SSPPropertyBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/ssp/SSPPropertyBundle;

    .line 111
    .local v2, _arg2:Landroid/hardware/ssp/SSPPropertyBundle;
    :goto_1
    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/ssp/ISSPService$Stub;->setSSPProperty(IILandroid/hardware/ssp/SSPPropertyBundle;)V

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 109
    .end local v2           #_arg2:Landroid/hardware/ssp/SSPPropertyBundle;
    :cond_1
    const/4 v2, 0x0

    .restart local v2       #_arg2:Landroid/hardware/ssp/SSPPropertyBundle;
    goto :goto_1

    .line 117
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    .end local v2           #_arg2:Landroid/hardware/ssp/SSPPropertyBundle;
    :sswitch_7
    const-string v7, "android.hardware.ssp.ISSPService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_2

    move v0, v6

    .line 121
    .local v0, _arg0:Z
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_3

    move v1, v6

    .line 123
    .local v1, _arg1:Z
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 125
    .local v2, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_4

    move v3, v6

    .line 126
    .local v3, _arg3:Z
    :goto_4
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/hardware/ssp/ISSPService$Stub;->setSSPLogger(ZZIZ)V

    .line 127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v1           #_arg1:Z
    .end local v2           #_arg2:I
    .end local v3           #_arg3:Z
    :cond_2
    move v0, v5

    .line 119
    goto :goto_2

    .restart local v0       #_arg0:Z
    :cond_3
    move v1, v5

    .line 121
    goto :goto_3

    .restart local v1       #_arg1:Z
    .restart local v2       #_arg2:I
    :cond_4
    move v3, v5

    .line 125
    goto :goto_4

    .line 132
    .end local v0           #_arg0:Z
    .end local v1           #_arg1:Z
    .end local v2           #_arg2:I
    :sswitch_8
    const-string v5, "android.hardware.ssp.ISSPService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 135
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/hardware/ssp/ISSPService$Stub;->startSSPAutoTest(I)V

    .line 136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 141
    .end local v0           #_arg0:I
    :sswitch_9
    const-string v5, "android.hardware.ssp.ISSPService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Landroid/hardware/ssp/ISSPService$Stub;->stopSSPAutoTest()V

    .line 143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 148
    :sswitch_a
    const-string v5, "android.hardware.ssp.ISSPService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 152
    .local v0, _arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 153
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/hardware/ssp/ISSPService$Stub;->setPacketListForSSPAutoTest([BI)V

    .line 154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 159
    .end local v0           #_arg0:[B
    .end local v1           #_arg1:I
    :sswitch_b
    const-string v7, "android.hardware.ssp.ISSPService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0}, Landroid/hardware/ssp/ISSPService$Stub;->isRunSSPAutoTest()Z

    move-result v4

    .line 161
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    if-eqz v4, :cond_5

    move v5, v6

    :cond_5
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 38
    nop

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
