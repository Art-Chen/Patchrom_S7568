.class public abstract Landroid/app/IBarBeamCallbacks$Stub;
.super Landroid/os/Binder;
.source "IBarBeamCallbacks.java"

# interfaces
.implements Landroid/app/IBarBeamCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IBarBeamCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IBarBeamCallbacks$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.IBarBeamCallbacks"

.field static final TRANSACTION_barBeamFirmwareUpgradeResponse:I = 0x9

.field static final TRANSACTION_barBeamFirmwareUpgradeStatus:I = 0xa

.field static final TRANSACTION_barBeamFirmwareVersionResponse:I = 0x2

.field static final TRANSACTION_barBeamHardwareVersionResponse:I = 0x3

.field static final TRANSACTION_barBeamSendDataTableResponse:I = 0x8

.field static final TRANSACTION_barBeamSendLoopbackMessageResponse:I = 0xb

.field static final TRANSACTION_barBeamSendSequenceTableResponse:I = 0x7

.field static final TRANSACTION_barBeamSerialNumberResponse:I = 0x1

.field static final TRANSACTION_barBeamStartBeamingResponse:I = 0x4

.field static final TRANSACTION_barBeamStopBeamingResponse:I = 0x5

.field static final TRANSACTION_barBeamTestLEDResponse:I = 0x6

.field static final TRANSACTION_getListenerInfo:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "android.app.IBarBeamCallbacks"

    invoke-virtual {p0, p0, v0}, Landroid/app/IBarBeamCallbacks$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IBarBeamCallbacks;
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
    const-string v1, "android.app.IBarBeamCallbacks"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/IBarBeamCallbacks;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Landroid/app/IBarBeamCallbacks;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Landroid/app/IBarBeamCallbacks$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/app/IBarBeamCallbacks$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 7
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
    const/4 v0, 0x0

    const/4 v5, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 167
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 42
    :sswitch_0
    const-string v6, "android.app.IBarBeamCallbacks"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v6, "android.app.IBarBeamCallbacks"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_0

    move v0, v5

    .line 51
    .local v0, _arg0:Z
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/app/IBarBeamCallbacks$Stub;->barBeamSerialNumberResponse(ZLjava/lang/String;)V

    .line 53
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 58
    .end local v0           #_arg0:Z
    .end local v1           #_arg1:Ljava/lang/String;
    :sswitch_2
    const-string v6, "android.app.IBarBeamCallbacks"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    move v0, v5

    .line 62
    .restart local v0       #_arg0:Z
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 64
    .local v1, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 66
    .local v2, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 67
    .local v3, _arg3:I
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/IBarBeamCallbacks$Stub;->barBeamFirmwareVersionResponse(ZIII)V

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 73
    .end local v0           #_arg0:Z
    .end local v1           #_arg1:I
    .end local v2           #_arg2:I
    .end local v3           #_arg3:I
    :sswitch_3
    const-string v6, "android.app.IBarBeamCallbacks"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2

    move v0, v5

    .line 77
    .restart local v0       #_arg0:Z
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 79
    .restart local v1       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 80
    .restart local v2       #_arg2:I
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/IBarBeamCallbacks$Stub;->barBeamHardwareVersionResponse(ZII)V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 86
    .end local v0           #_arg0:Z
    .end local v1           #_arg1:I
    .end local v2           #_arg2:I
    :sswitch_4
    const-string v6, "android.app.IBarBeamCallbacks"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3

    move v0, v5

    .line 89
    .restart local v0       #_arg0:Z
    :cond_3
    invoke-virtual {p0, v0}, Landroid/app/IBarBeamCallbacks$Stub;->barBeamStartBeamingResponse(Z)V

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 95
    .end local v0           #_arg0:Z
    :sswitch_5
    const-string v6, "android.app.IBarBeamCallbacks"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4

    move v0, v5

    .line 98
    .restart local v0       #_arg0:Z
    :cond_4
    invoke-virtual {p0, v0}, Landroid/app/IBarBeamCallbacks$Stub;->barBeamStopBeamingResponse(Z)V

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 104
    .end local v0           #_arg0:Z
    :sswitch_6
    const-string v6, "android.app.IBarBeamCallbacks"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5

    move v0, v5

    .line 107
    .restart local v0       #_arg0:Z
    :cond_5
    invoke-virtual {p0, v0}, Landroid/app/IBarBeamCallbacks$Stub;->barBeamTestLEDResponse(Z)V

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 113
    .end local v0           #_arg0:Z
    :sswitch_7
    const-string v6, "android.app.IBarBeamCallbacks"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6

    move v0, v5

    .line 116
    .restart local v0       #_arg0:Z
    :cond_6
    invoke-virtual {p0, v0}, Landroid/app/IBarBeamCallbacks$Stub;->barBeamSendSequenceTableResponse(Z)V

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 122
    .end local v0           #_arg0:Z
    :sswitch_8
    const-string v6, "android.app.IBarBeamCallbacks"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7

    move v0, v5

    .line 125
    .restart local v0       #_arg0:Z
    :cond_7
    invoke-virtual {p0, v0}, Landroid/app/IBarBeamCallbacks$Stub;->barBeamSendDataTableResponse(Z)V

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 131
    .end local v0           #_arg0:Z
    :sswitch_9
    const-string v6, "android.app.IBarBeamCallbacks"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_8

    move v0, v5

    .line 134
    .restart local v0       #_arg0:Z
    :cond_8
    invoke-virtual {p0, v0}, Landroid/app/IBarBeamCallbacks$Stub;->barBeamFirmwareUpgradeResponse(Z)V

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 140
    .end local v0           #_arg0:Z
    :sswitch_a
    const-string v6, "android.app.IBarBeamCallbacks"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 144
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 145
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/app/IBarBeamCallbacks$Stub;->barBeamFirmwareUpgradeStatus(II)V

    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 151
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    :sswitch_b
    const-string v6, "android.app.IBarBeamCallbacks"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_9

    move v0, v5

    .line 154
    .local v0, _arg0:Z
    :cond_9
    invoke-virtual {p0, v0}, Landroid/app/IBarBeamCallbacks$Stub;->barBeamSendLoopbackMessageResponse(Z)V

    .line 155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 160
    .end local v0           #_arg0:Z
    :sswitch_c
    const-string v6, "android.app.IBarBeamCallbacks"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Landroid/app/IBarBeamCallbacks$Stub;->getListenerInfo()Ljava/lang/String;

    move-result-object v4

    .line 162
    .local v4, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

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
        0xc -> :sswitch_c
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
