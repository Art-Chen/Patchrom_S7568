.class public abstract Lcom/sec/android/internal/ims/IIMSService$Stub;
.super Landroid/os/Binder;
.source "IIMSService.java"

# interfaces
.implements Lcom/sec/android/internal/ims/IIMSService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/internal/ims/IIMSService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/internal/ims/IIMSService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.sec.android.internal.ims.IIMSService"

.field static final TRANSACTION_captureSurfaceImage:I = 0x25

.field static final TRANSACTION_contactSvcCallFunction:I = 0x18

.field static final TRANSACTION_deinitSurface:I = 0x26

.field static final TRANSACTION_getImsRegStatus:I = 0xb

.field static final TRANSACTION_getMessageEnabler:I = 0x8

.field static final TRANSACTION_get_CameraCount:I = 0xe

.field static final TRANSACTION_get_CameraInfo:I = 0x10

.field static final TRANSACTION_isFrontCamInUse:I = 0x1f

.field static final TRANSACTION_isOnEHRPD:I = 0x21

.field static final TRANSACTION_isOnLTE:I = 0x20

.field static final TRANSACTION_isRegistered:I = 0x5

.field static final TRANSACTION_mmSS_Svc_Api:I = 0x11

.field static final TRANSACTION_mmTelSvcCallFunc:I = 0xc

.field static final TRANSACTION_register:I = 0x1

.field static final TRANSACTION_registerApp:I = 0x9

.field static final TRANSACTION_registerListener:I = 0x6

.field static final TRANSACTION_registerSSApp:I = 0x12

.field static final TRANSACTION_registerWithISIMResponse:I = 0x2

.field static final TRANSACTION_resetCameraID:I = 0x22

.field static final TRANSACTION_sendLiveVideo:I = 0x24

.field static final TRANSACTION_sendStillImage:I = 0x23

.field static final TRANSACTION_setAudioTuningParameters:I = 0x1d

.field static final TRANSACTION_setOrientation:I = 0x1e

.field static final TRANSACTION_set_InputSource:I = 0xf

.field static final TRANSACTION_set_WindowHandle:I = 0xd

.field static final TRANSACTION_startAudio:I = 0x1a

.field static final TRANSACTION_startCamera:I = 0x14

.field static final TRANSACTION_startVideo:I = 0x1b

.field static final TRANSACTION_startVideoRenderer:I = 0x17

.field static final TRANSACTION_stopCamera:I = 0x16

.field static final TRANSACTION_stopVideo:I = 0x1c

.field static final TRANSACTION_swapVideoSurface:I = 0x15

.field static final TRANSACTION_switchCamera:I = 0x19

.field static final TRANSACTION_unRegisterApp:I = 0xa

.field static final TRANSACTION_unRegisterSSApp:I = 0x13

.field static final TRANSACTION_unregister:I = 0x3

.field static final TRANSACTION_unregisterListener:I = 0x7

.field static final TRANSACTION_unregisterWithISIMResponse:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.sec.android.internal.ims.IIMSService"

    invoke-virtual {p0, p0, v0}, Lcom/sec/android/internal/ims/IIMSService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/android/internal/ims/IIMSService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v1, "com.sec.android.internal.ims.IIMSService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/sec/android/internal/ims/IIMSService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/sec/android/internal/ims/IIMSService;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/sec/android/internal/ims/IIMSService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/sec/android/internal/ims/IIMSService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
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

    const/4 v8, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 454
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    :goto_0
    return v8

    .line 45
    :sswitch_0
    const-string v0, "com.sec.android.internal.ims.IIMSService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v9, "com.sec.android.internal.ims.IIMSService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_0

    move v2, v8

    .line 55
    .local v2, _arg1:Z
    :goto_1
    invoke-virtual {p0, v1, v2}, Lcom/sec/android/internal/ims/IIMSService$Stub;->register(Ljava/lang/String;Z)V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v2           #_arg1:Z
    :cond_0
    move v2, v0

    .line 54
    goto :goto_1

    .line 61
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_2
    const-string v0, "com.sec.android.internal.ims.IIMSService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 65
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 66
    .local v2, _arg1:[B
    invoke-virtual {p0, v1, v2}, Lcom/sec/android/internal/ims/IIMSService$Stub;->registerWithISIMResponse(Ljava/lang/String;[B)V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 72
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:[B
    :sswitch_3
    const-string v0, "com.sec.android.internal.ims.IIMSService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IIMSService$Stub;->unregister()V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 79
    :sswitch_4
    const-string v0, "com.sec.android.internal.ims.IIMSService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 83
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 84
    .restart local v2       #_arg1:[B
    invoke-virtual {p0, v1, v2}, Lcom/sec/android/internal/ims/IIMSService$Stub;->unregisterWithISIMResponse(Ljava/lang/String;[B)V

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 90
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:[B
    :sswitch_5
    const-string v9, "com.sec.android.internal.ims.IIMSService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IIMSService$Stub;->isRegistered()Z

    move-result v7

    .line 92
    .local v7, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    if-eqz v7, :cond_1

    move v0, v8

    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 98
    .end local v7           #_result:Z
    :sswitch_6
    const-string v0, "com.sec.android.internal.ims.IIMSService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IIMSEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/internal/ims/IIMSEventListener;

    move-result-object v1

    .line 102
    .local v1, _arg0:Lcom/sec/android/internal/ims/IIMSEventListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 103
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/sec/android/internal/ims/IIMSService$Stub;->registerListener(Lcom/sec/android/internal/ims/IIMSEventListener;I)V

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 109
    .end local v1           #_arg0:Lcom/sec/android/internal/ims/IIMSEventListener;
    .end local v2           #_arg1:I
    :sswitch_7
    const-string v0, "com.sec.android.internal.ims.IIMSService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IIMSEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/internal/ims/IIMSEventListener;

    move-result-object v1

    .line 112
    .restart local v1       #_arg0:Lcom/sec/android/internal/ims/IIMSEventListener;
    invoke-virtual {p0, v1}, Lcom/sec/android/internal/ims/IIMSService$Stub;->unregisterListener(Lcom/sec/android/internal/ims/IIMSEventListener;)V

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 118
    .end local v1           #_arg0:Lcom/sec/android/internal/ims/IIMSEventListener;
    :sswitch_8
    const-string v0, "com.sec.android.internal.ims.IIMSService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IIMSService$Stub;->getMessageEnabler()Lcom/sec/android/ims/message/IMessageEnabler;

    move-result-object v7

    .line 120
    .local v7, _result:Lcom/sec/android/ims/message/IMessageEnabler;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    if-eqz v7, :cond_2

    invoke-interface {v7}, Lcom/sec/android/ims/message/IMessageEnabler;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 126
    .end local v7           #_result:Lcom/sec/android/ims/message/IMessageEnabler;
    :sswitch_9
    const-string v0, "com.sec.android.internal.ims.IIMSService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 130
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 132
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/ims/IImsServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/ims/IImsServiceCallback;

    move-result-object v3

    .line 133
    .local v3, _arg2:Lcom/sec/android/ims/IImsServiceCallback;
    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/android/internal/ims/IIMSService$Stub;->registerApp(ILjava/lang/String;Lcom/sec/android/ims/IImsServiceCallback;)I

    move-result v7

    .line 134
    .local v7, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 140
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Lcom/sec/android/ims/IImsServiceCallback;
    .end local v7           #_result:I
    :sswitch_a
    const-string v0, "com.sec.android.internal.ims.IIMSService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 144
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 145
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/sec/android/internal/ims/IIMSService$Stub;->unRegisterApp(II)V

    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 151
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    :sswitch_b
    const-string v9, "com.sec.android.internal.ims.IIMSService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IIMSService$Stub;->getImsRegStatus()Z

    move-result v7

    .line 153
    .local v7, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    if-eqz v7, :cond_3

    move v0, v8

    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 159
    .end local v7           #_result:Z
    :sswitch_c
    const-string v0, "com.sec.android.internal.ims.IIMSService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 163
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 165
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 167
    .local v3, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 168
    .local v4, _arg3:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/sec/android/internal/ims/IIMSService$Stub;->mmTelSvcCallFunc(IIILjava/lang/String;)I

    move-result v7

    .line 169
    .local v7, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 175
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v4           #_arg3:Ljava/lang/String;
    .end local v7           #_result:I
    :sswitch_d
    const-string v0, "com.sec.android.internal.ims.IIMSService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 179
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    .line 180
    sget-object v0, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    .line 185
    .local v2, _arg1:Landroid/view/Surface;
    :goto_3
    invoke-virtual {p0, v1, v2}, Lcom/sec/android/internal/ims/IIMSService$Stub;->set_WindowHandle(ILandroid/view/Surface;)I

    move-result v7

    .line 186
    .restart local v7       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 183
    .end local v2           #_arg1:Landroid/view/Surface;
    .end local v7           #_result:I
    :cond_4
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/view/Surface;
    goto :goto_3

    .line 192
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Landroid/view/Surface;
    :sswitch_e
    const-string v0, "com.sec.android.internal.ims.IIMSService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IIMSService$Stub;->get_CameraCount()I

    move-result v7

    .line 194
    .restart local v7       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 200
    .end local v7           #_result:I
    :sswitch_f
    const-string v0, "com.sec.android.internal.ims.IIMSService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 204
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 205
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/sec/android/internal/ims/IIMSService$Stub;->set_InputSource(ILjava/lang/String;)I

    move-result v7

    .line 206
    .restart local v7       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 212
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v7           #_result:I
    :sswitch_10
    const-string v0, "com.sec.android.internal.ims.IIMSService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 215
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/sec/android/internal/ims/IIMSService$Stub;->get_CameraInfo(I)Ljava/lang/String;

    move-result-object v7

    .line 216
    .local v7, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 222
    .end local v1           #_arg0:I
    .end local v7           #_result:Ljava/lang/String;
    :sswitch_11
    const-string v0, "com.sec.android.internal.ims.IIMSService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 226
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 228
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 230
    .restart local v3       #_arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 232
    .restart local v4       #_arg3:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, _arg4:Ljava/lang/String;
    move-object v0, p0

    .line 233
    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/internal/ims/IIMSService$Stub;->mmSS_Svc_Api(IIILjava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 234
    .local v7, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 235
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 240
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v4           #_arg3:Ljava/lang/String;
    .end local v5           #_arg4:Ljava/lang/String;
    .end local v7           #_result:I
    :sswitch_12
    const-string v0, "com.sec.android.internal.ims.IIMSService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 244
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 246
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/ims/IImsServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/ims/IImsServiceCallback;

    move-result-object v3

    .line 247
    .local v3, _arg2:Lcom/sec/android/ims/IImsServiceCallback;
    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/android/internal/ims/IIMSService$Stub;->registerSSApp(ILjava/lang/String;Lcom/sec/android/ims/IImsServiceCallback;)I

    move-result v7

    .line 248
    .restart local v7       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 254
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Lcom/sec/android/ims/IImsServiceCallback;
    .end local v7           #_result:I
    :sswitch_13
    const-string v0, "com.sec.android.internal.ims.IIMSService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 258
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 259
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/sec/android/internal/ims/IIMSService$Stub;->unRegisterSSApp(II)V

    .line 260
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 265
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    :sswitch_14
    const-string v9, "com.sec.android.internal.ims.IIMSService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_5

    .line 268
    sget-object v9, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Surface;

    .line 274
    .local v1, _arg0:Landroid/view/Surface;
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 276
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 278
    .local v3, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 280
    .local v4, _arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_6

    move v5, v8

    .line 282
    .local v5, _arg4:Z
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_7

    move v6, v8

    .local v6, _arg5:Z
    :goto_6
    move-object v0, p0

    .line 283
    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/internal/ims/IIMSService$Stub;->startCamera(Landroid/view/Surface;IIIZZ)I

    move-result v7

    .line 284
    .restart local v7       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 285
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 271
    .end local v1           #_arg0:Landroid/view/Surface;
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v4           #_arg3:I
    .end local v5           #_arg4:Z
    .end local v6           #_arg5:Z
    .end local v7           #_result:I
    :cond_5
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/view/Surface;
    goto :goto_4

    .restart local v2       #_arg1:I
    .restart local v3       #_arg2:I
    .restart local v4       #_arg3:I
    :cond_6
    move v5, v0

    .line 280
    goto :goto_5

    .restart local v5       #_arg4:Z
    :cond_7
    move v6, v0

    .line 282
    goto :goto_6

    .line 290
    .end local v1           #_arg0:Landroid/view/Surface;
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v4           #_arg3:I
    .end local v5           #_arg4:Z
    :sswitch_15
    const-string v0, "com.sec.android.internal.ims.IIMSService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IIMSService$Stub;->swapVideoSurface()V

    .line 292
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 297
    :sswitch_16
    const-string v0, "com.sec.android.internal.ims.IIMSService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 298
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IIMSService$Stub;->stopCamera()I

    move-result v7

    .line 299
    .restart local v7       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 305
    .end local v7           #_result:I
    :sswitch_17
    const-string v0, "com.sec.android.internal.ims.IIMSService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 307
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    .line 308
    sget-object v0, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Surface;

    .line 314
    .restart local v1       #_arg0:Landroid/view/Surface;
    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 316
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 317
    .restart local v3       #_arg2:I
    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/android/internal/ims/IIMSService$Stub;->startVideoRenderer(Landroid/view/Surface;II)I

    move-result v7

    .line 318
    .restart local v7       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 311
    .end local v1           #_arg0:Landroid/view/Surface;
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v7           #_result:I
    :cond_8
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/view/Surface;
    goto :goto_7

    .line 324
    .end local v1           #_arg0:Landroid/view/Surface;
    :sswitch_18
    const-string v0, "com.sec.android.internal.ims.IIMSService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 326
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 328
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 330
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 332
    .restart local v3       #_arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 333
    .local v4, _arg3:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/sec/android/internal/ims/IIMSService$Stub;->contactSvcCallFunction(IIILjava/lang/String;)I

    move-result v7

    .line 334
    .restart local v7       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 335
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 340
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v4           #_arg3:Ljava/lang/String;
    .end local v7           #_result:I
    :sswitch_19
    const-string v0, "com.sec.android.internal.ims.IIMSService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 341
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IIMSService$Stub;->switchCamera()V

    .line 342
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 347
    :sswitch_1a
    const-string v0, "com.sec.android.internal.ims.IIMSService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 348
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IIMSService$Stub;->startAudio()I

    move-result v7

    .line 349
    .restart local v7       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 350
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 355
    .end local v7           #_result:I
    :sswitch_1b
    const-string v0, "com.sec.android.internal.ims.IIMSService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 356
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IIMSService$Stub;->startVideo()I

    move-result v7

    .line 357
    .restart local v7       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 358
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 363
    .end local v7           #_result:I
    :sswitch_1c
    const-string v0, "com.sec.android.internal.ims.IIMSService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 364
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IIMSService$Stub;->stopVideo()I

    move-result v7

    .line 365
    .restart local v7       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 366
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 371
    .end local v7           #_result:I
    :sswitch_1d
    const-string v9, "com.sec.android.internal.ims.IIMSService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 373
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 374
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/sec/android/internal/ims/IIMSService$Stub;->setAudioTuningParameters(I)Z

    move-result v7

    .line 375
    .local v7, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 376
    if-eqz v7, :cond_9

    move v0, v8

    :cond_9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 381
    .end local v1           #_arg0:I
    .end local v7           #_result:Z
    :sswitch_1e
    const-string v0, "com.sec.android.internal.ims.IIMSService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 383
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 384
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/sec/android/internal/ims/IIMSService$Stub;->setOrientation(I)V

    .line 385
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 390
    .end local v1           #_arg0:I
    :sswitch_1f
    const-string v0, "com.sec.android.internal.ims.IIMSService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 391
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IIMSService$Stub;->isFrontCamInUse()I

    move-result v7

    .line 392
    .local v7, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 393
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 398
    .end local v7           #_result:I
    :sswitch_20
    const-string v9, "com.sec.android.internal.ims.IIMSService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 399
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IIMSService$Stub;->isOnLTE()Z

    move-result v7

    .line 400
    .local v7, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 401
    if-eqz v7, :cond_a

    move v0, v8

    :cond_a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 406
    .end local v7           #_result:Z
    :sswitch_21
    const-string v9, "com.sec.android.internal.ims.IIMSService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 407
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IIMSService$Stub;->isOnEHRPD()Z

    move-result v7

    .line 408
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 409
    if-eqz v7, :cond_b

    move v0, v8

    :cond_b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 414
    .end local v7           #_result:Z
    :sswitch_22
    const-string v0, "com.sec.android.internal.ims.IIMSService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 415
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IIMSService$Stub;->resetCameraID()V

    .line 416
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 421
    :sswitch_23
    const-string v0, "com.sec.android.internal.ims.IIMSService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 423
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 424
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/sec/android/internal/ims/IIMSService$Stub;->sendStillImage(Ljava/lang/String;)V

    .line 425
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 430
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_24
    const-string v0, "com.sec.android.internal.ims.IIMSService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 431
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IIMSService$Stub;->sendLiveVideo()V

    .line 432
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 437
    :sswitch_25
    const-string v9, "com.sec.android.internal.ims.IIMSService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 439
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_c

    move v1, v8

    .line 440
    .local v1, _arg0:Z
    :goto_8
    invoke-virtual {p0, v1}, Lcom/sec/android/internal/ims/IIMSService$Stub;->captureSurfaceImage(Z)V

    .line 441
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1           #_arg0:Z
    :cond_c
    move v1, v0

    .line 439
    goto :goto_8

    .line 446
    :sswitch_26
    const-string v9, "com.sec.android.internal.ims.IIMSService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 448
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_d

    move v1, v8

    .line 449
    .restart local v1       #_arg0:Z
    :goto_9
    invoke-virtual {p0, v1}, Lcom/sec/android/internal/ims/IIMSService$Stub;->deinitSurface(Z)V

    .line 450
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1           #_arg0:Z
    :cond_d
    move v1, v0

    .line 448
    goto :goto_9

    .line 41
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
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
