.class public abstract Landroid/ktuca/IKtUcaIF$Stub;
.super Landroid/os/Binder;
.source "IKtUcaIF.java"

# interfaces
.implements Landroid/ktuca/IKtUcaIF;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/ktuca/IKtUcaIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/ktuca/IKtUcaIF$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.ktuca.IKtUcaIF"

.field static final TRANSACTION_KUCA_CHInit:I = 0x13

.field static final TRANSACTION_KUCA_Close:I = 0x10

.field static final TRANSACTION_KUCA_CloseT:I = 0x19

.field static final TRANSACTION_KUCA_KUH_Establish:I = 0x15

.field static final TRANSACTION_KUCA_KUH_Release:I = 0x16

.field static final TRANSACTION_KUCA_KUH_Transmit:I = 0x17

.field static final TRANSACTION_KUCA_Open:I = 0xe

.field static final TRANSACTION_KUCA_OpenT:I = 0x18

.field static final TRANSACTION_KUCA_Transmit:I = 0xf

.field static final TRANSACTION_KUCA_UCAVersion:I = 0x12

.field static final TRANSACTION_KUCA_getHandle:I = 0x3

.field static final TRANSACTION_KUCA_getICCID:I = 0x6

.field static final TRANSACTION_KUCA_getIMSI:I = 0x5

.field static final TRANSACTION_KUCA_getMDN:I = 0x8

.field static final TRANSACTION_KUCA_getMODEL:I = 0x9

.field static final TRANSACTION_KUCA_getMSISDN:I = 0x4

.field static final TRANSACTION_KUCA_getPUID:I = 0x7

.field static final TRANSACTION_KUCA_getPinStatus:I = 0xc

.field static final TRANSACTION_KUCA_getSIMInfo:I = 0xa

.field static final TRANSACTION_KUCA_getSimStatus:I = 0x11

.field static final TRANSACTION_KUCA_printCHInfo:I = 0x14

.field static final TRANSACTION_KUCA_usimAUTH:I = 0xb

.field static final TRANSACTION_KUCA_verifyPin:I = 0xd

.field static final TRANSACTION_getResource:I = 0x1

.field static final TRANSACTION_releaseResource:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p0, p0, v0}, Landroid/ktuca/IKtUcaIF$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/ktuca/IKtUcaIF;
    .locals 2
    .parameter "obj"

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "android.ktuca.IKtUcaIF"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/ktuca/IKtUcaIF;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/ktuca/IKtUcaIF;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/ktuca/IKtUcaIF$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/ktuca/IKtUcaIF$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 12
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
    sparse-switch p1, :sswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/ktuca/IKtUcaIF$Stub;->getResource()I

    move-result v10

    .local v10, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto :goto_0

    .end local v10           #_result:I
    :sswitch_2
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/ktuca/IKtUcaIF$Stub;->releaseResource()I

    move-result v10

    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto :goto_0

    .end local v10           #_result:I
    :sswitch_3
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .local v1, _arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .local v2, _arg1:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .local v3, _arg2:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .local v4, _arg3:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v5

    .local v5, _arg4:[I
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_getHandle([B[B[B[B[I)J

    move-result-wide v10

    .local v10, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeIntArray([I)V

    const/4 v0, 0x1

    goto :goto_0

    .end local v1           #_arg0:[B
    .end local v2           #_arg1:[B
    .end local v3           #_arg2:[B
    .end local v4           #_arg3:[B
    .end local v5           #_arg4:[I
    .end local v10           #_result:J
    :sswitch_4
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .restart local v1       #_arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, _arg1_length:I
    if-gez v6, :cond_0

    const/4 v2, 0x0

    .restart local v2       #_arg1:[B
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, _arg2_length:I
    if-gez v7, :cond_1

    const/4 v3, 0x0

    .local v3, _arg2:[I
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, _arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .local v5, _arg4:[B
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_getMSISDN([B[B[II[B)J

    move-result-wide v10

    .restart local v10       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v2           #_arg1:[B
    .end local v3           #_arg2:[I
    .end local v4           #_arg3:I
    .end local v5           #_arg4:[B
    .end local v7           #_arg2_length:I
    .end local v10           #_result:J
    :cond_0
    new-array v2, v6, [B

    .restart local v2       #_arg1:[B
    goto :goto_1

    .restart local v7       #_arg2_length:I
    :cond_1
    new-array v3, v7, [I

    .restart local v3       #_arg2:[I
    goto :goto_2

    .end local v1           #_arg0:[B
    .end local v2           #_arg1:[B
    .end local v3           #_arg2:[I
    .end local v6           #_arg1_length:I
    .end local v7           #_arg2_length:I
    :sswitch_5
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .restart local v1       #_arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6       #_arg1_length:I
    if-gez v6, :cond_2

    const/4 v2, 0x0

    .restart local v2       #_arg1:[B
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7       #_arg2_length:I
    if-gez v7, :cond_3

    const/4 v3, 0x0

    .restart local v3       #_arg2:[I
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4       #_arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .restart local v5       #_arg4:[B
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_getIMSI([B[B[II[B)J

    move-result-wide v10

    .restart local v10       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v2           #_arg1:[B
    .end local v3           #_arg2:[I
    .end local v4           #_arg3:I
    .end local v5           #_arg4:[B
    .end local v7           #_arg2_length:I
    .end local v10           #_result:J
    :cond_2
    new-array v2, v6, [B

    .restart local v2       #_arg1:[B
    goto :goto_3

    .restart local v7       #_arg2_length:I
    :cond_3
    new-array v3, v7, [I

    .restart local v3       #_arg2:[I
    goto :goto_4

    .end local v1           #_arg0:[B
    .end local v2           #_arg1:[B
    .end local v3           #_arg2:[I
    .end local v6           #_arg1_length:I
    .end local v7           #_arg2_length:I
    :sswitch_6
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .restart local v1       #_arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6       #_arg1_length:I
    if-gez v6, :cond_4

    const/4 v2, 0x0

    .restart local v2       #_arg1:[B
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7       #_arg2_length:I
    if-gez v7, :cond_5

    const/4 v3, 0x0

    .restart local v3       #_arg2:[I
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4       #_arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .restart local v5       #_arg4:[B
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_getICCID([B[B[II[B)J

    move-result-wide v10

    .restart local v10       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v2           #_arg1:[B
    .end local v3           #_arg2:[I
    .end local v4           #_arg3:I
    .end local v5           #_arg4:[B
    .end local v7           #_arg2_length:I
    .end local v10           #_result:J
    :cond_4
    new-array v2, v6, [B

    .restart local v2       #_arg1:[B
    goto :goto_5

    .restart local v7       #_arg2_length:I
    :cond_5
    new-array v3, v7, [I

    .restart local v3       #_arg2:[I
    goto :goto_6

    .end local v1           #_arg0:[B
    .end local v2           #_arg1:[B
    .end local v3           #_arg2:[I
    .end local v6           #_arg1_length:I
    .end local v7           #_arg2_length:I
    :sswitch_7
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .restart local v1       #_arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6       #_arg1_length:I
    if-gez v6, :cond_6

    const/4 v2, 0x0

    .restart local v2       #_arg1:[B
    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7       #_arg2_length:I
    if-gez v7, :cond_7

    const/4 v3, 0x0

    .restart local v3       #_arg2:[I
    :goto_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4       #_arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .restart local v5       #_arg4:[B
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_getPUID([B[B[II[B)J

    move-result-wide v10

    .restart local v10       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v2           #_arg1:[B
    .end local v3           #_arg2:[I
    .end local v4           #_arg3:I
    .end local v5           #_arg4:[B
    .end local v7           #_arg2_length:I
    .end local v10           #_result:J
    :cond_6
    new-array v2, v6, [B

    .restart local v2       #_arg1:[B
    goto :goto_7

    .restart local v7       #_arg2_length:I
    :cond_7
    new-array v3, v7, [I

    .restart local v3       #_arg2:[I
    goto :goto_8

    .end local v1           #_arg0:[B
    .end local v2           #_arg1:[B
    .end local v3           #_arg2:[I
    .end local v6           #_arg1_length:I
    .end local v7           #_arg2_length:I
    :sswitch_8
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .restart local v1       #_arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6       #_arg1_length:I
    if-gez v6, :cond_8

    const/4 v2, 0x0

    .restart local v2       #_arg1:[B
    :goto_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7       #_arg2_length:I
    if-gez v7, :cond_9

    const/4 v3, 0x0

    .restart local v3       #_arg2:[I
    :goto_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4       #_arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .restart local v5       #_arg4:[B
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_getMDN([B[B[II[B)J

    move-result-wide v10

    .restart local v10       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v2           #_arg1:[B
    .end local v3           #_arg2:[I
    .end local v4           #_arg3:I
    .end local v5           #_arg4:[B
    .end local v7           #_arg2_length:I
    .end local v10           #_result:J
    :cond_8
    new-array v2, v6, [B

    .restart local v2       #_arg1:[B
    goto :goto_9

    .restart local v7       #_arg2_length:I
    :cond_9
    new-array v3, v7, [I

    .restart local v3       #_arg2:[I
    goto :goto_a

    .end local v1           #_arg0:[B
    .end local v2           #_arg1:[B
    .end local v3           #_arg2:[I
    .end local v6           #_arg1_length:I
    .end local v7           #_arg2_length:I
    :sswitch_9
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .restart local v1       #_arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6       #_arg1_length:I
    if-gez v6, :cond_a

    const/4 v2, 0x0

    .restart local v2       #_arg1:[B
    :goto_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7       #_arg2_length:I
    if-gez v7, :cond_b

    const/4 v3, 0x0

    .restart local v3       #_arg2:[I
    :goto_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4       #_arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .restart local v5       #_arg4:[B
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_getMODEL([B[B[II[B)J

    move-result-wide v10

    .restart local v10       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v2           #_arg1:[B
    .end local v3           #_arg2:[I
    .end local v4           #_arg3:I
    .end local v5           #_arg4:[B
    .end local v7           #_arg2_length:I
    .end local v10           #_result:J
    :cond_a
    new-array v2, v6, [B

    .restart local v2       #_arg1:[B
    goto :goto_b

    .restart local v7       #_arg2_length:I
    :cond_b
    new-array v3, v7, [I

    .restart local v3       #_arg2:[I
    goto :goto_c

    .end local v1           #_arg0:[B
    .end local v2           #_arg1:[B
    .end local v3           #_arg2:[I
    .end local v6           #_arg1_length:I
    .end local v7           #_arg2_length:I
    :sswitch_a
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .restart local v1       #_arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6       #_arg1_length:I
    if-gez v6, :cond_c

    const/4 v2, 0x0

    .restart local v2       #_arg1:[B
    :goto_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7       #_arg2_length:I
    if-gez v7, :cond_d

    const/4 v3, 0x0

    .restart local v3       #_arg2:[I
    :goto_e
    invoke-virtual {p0, v1, v2, v3}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_getSIMInfo([B[B[I)J

    move-result-wide v10

    .restart local v10       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v2           #_arg1:[B
    .end local v3           #_arg2:[I
    .end local v7           #_arg2_length:I
    .end local v10           #_result:J
    :cond_c
    new-array v2, v6, [B

    .restart local v2       #_arg1:[B
    goto :goto_d

    .restart local v7       #_arg2_length:I
    :cond_d
    new-array v3, v7, [I

    .restart local v3       #_arg2:[I
    goto :goto_e

    .end local v1           #_arg0:[B
    .end local v2           #_arg1:[B
    .end local v3           #_arg2:[I
    .end local v6           #_arg1_length:I
    .end local v7           #_arg2_length:I
    :sswitch_b
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .restart local v1       #_arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .restart local v2       #_arg1:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .local v3, _arg2:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .local v8, _arg3_length:I
    if-gez v8, :cond_e

    const/4 v4, 0x0

    .local v4, _arg3:[B
    :goto_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .local v9, _arg4_length:I
    if-gez v9, :cond_f

    const/4 v5, 0x0

    .local v5, _arg4:[I
    :goto_10
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_usimAUTH([B[B[B[B[I)J

    move-result-wide v10

    .restart local v10       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeIntArray([I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v4           #_arg3:[B
    .end local v5           #_arg4:[I
    .end local v9           #_arg4_length:I
    .end local v10           #_result:J
    :cond_e
    new-array v4, v8, [B

    .restart local v4       #_arg3:[B
    goto :goto_f

    .restart local v9       #_arg4_length:I
    :cond_f
    new-array v5, v9, [I

    .restart local v5       #_arg4:[I
    goto :goto_10

    .end local v1           #_arg0:[B
    .end local v2           #_arg1:[B
    .end local v3           #_arg2:[B
    .end local v4           #_arg3:[B
    .end local v5           #_arg4:[I
    .end local v8           #_arg3_length:I
    .end local v9           #_arg4_length:I
    :sswitch_c
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .restart local v1       #_arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7       #_arg2_length:I
    if-gez v7, :cond_10

    const/4 v3, 0x0

    .restart local v3       #_arg2:[B
    :goto_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8       #_arg3_length:I
    if-gez v8, :cond_11

    const/4 v4, 0x0

    .local v4, _arg3:[I
    :goto_12
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_getPinStatus([BI[B[I)J

    move-result-wide v10

    .restart local v10       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeIntArray([I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v3           #_arg2:[B
    .end local v4           #_arg3:[I
    .end local v8           #_arg3_length:I
    .end local v10           #_result:J
    :cond_10
    new-array v3, v7, [B

    .restart local v3       #_arg2:[B
    goto :goto_11

    .restart local v8       #_arg3_length:I
    :cond_11
    new-array v4, v8, [I

    .restart local v4       #_arg3:[I
    goto :goto_12

    .end local v1           #_arg0:[B
    .end local v2           #_arg1:I
    .end local v3           #_arg2:[B
    .end local v4           #_arg3:[I
    .end local v7           #_arg2_length:I
    .end local v8           #_arg3_length:I
    :sswitch_d
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .restart local v1       #_arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8       #_arg3_length:I
    if-gez v8, :cond_12

    const/4 v4, 0x0

    .local v4, _arg3:[B
    :goto_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .restart local v9       #_arg4_length:I
    if-gez v9, :cond_13

    const/4 v5, 0x0

    .restart local v5       #_arg4:[I
    :goto_14
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_verifyPin([BILjava/lang/String;[B[I)J

    move-result-wide v10

    .restart local v10       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeIntArray([I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v4           #_arg3:[B
    .end local v5           #_arg4:[I
    .end local v9           #_arg4_length:I
    .end local v10           #_result:J
    :cond_12
    new-array v4, v8, [B

    .restart local v4       #_arg3:[B
    goto :goto_13

    .restart local v9       #_arg4_length:I
    :cond_13
    new-array v5, v9, [I

    .restart local v5       #_arg4:[I
    goto :goto_14

    .end local v1           #_arg0:[B
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:[B
    .end local v5           #_arg4:[I
    .end local v8           #_arg3_length:I
    .end local v9           #_arg4_length:I
    :sswitch_e
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .restart local v1       #_arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6       #_arg1_length:I
    if-gez v6, :cond_14

    const/4 v2, 0x0

    .local v2, _arg1:[B
    :goto_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7       #_arg2_length:I
    if-gez v7, :cond_15

    const/4 v3, 0x0

    .local v3, _arg2:[I
    :goto_16
    invoke-virtual {p0, v1, v2, v3}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_Open([B[B[I)J

    move-result-wide v10

    .restart local v10       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v2           #_arg1:[B
    .end local v3           #_arg2:[I
    .end local v7           #_arg2_length:I
    .end local v10           #_result:J
    :cond_14
    new-array v2, v6, [B

    .restart local v2       #_arg1:[B
    goto :goto_15

    .restart local v7       #_arg2_length:I
    :cond_15
    new-array v3, v7, [I

    .restart local v3       #_arg2:[I
    goto :goto_16

    .end local v1           #_arg0:[B
    .end local v2           #_arg1:[B
    .end local v3           #_arg2:[I
    .end local v6           #_arg1_length:I
    .end local v7           #_arg2_length:I
    :sswitch_f
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .restart local v1       #_arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .restart local v2       #_arg1:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8       #_arg3_length:I
    if-gez v8, :cond_16

    const/4 v4, 0x0

    .restart local v4       #_arg3:[B
    :goto_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .restart local v9       #_arg4_length:I
    if-gez v9, :cond_17

    const/4 v5, 0x0

    .restart local v5       #_arg4:[I
    :goto_18
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_Transmit([B[BI[B[I)J

    move-result-wide v10

    .restart local v10       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeIntArray([I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v4           #_arg3:[B
    .end local v5           #_arg4:[I
    .end local v9           #_arg4_length:I
    .end local v10           #_result:J
    :cond_16
    new-array v4, v8, [B

    .restart local v4       #_arg3:[B
    goto :goto_17

    .restart local v9       #_arg4_length:I
    :cond_17
    new-array v5, v9, [I

    .restart local v5       #_arg4:[I
    goto :goto_18

    .end local v1           #_arg0:[B
    .end local v2           #_arg1:[B
    .end local v3           #_arg2:I
    .end local v4           #_arg3:[B
    .end local v5           #_arg4:[I
    .end local v8           #_arg3_length:I
    .end local v9           #_arg4_length:I
    :sswitch_10
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .restart local v1       #_arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .local v2, _arg1:B
    invoke-virtual {p0, v1, v2}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_Close([BB)J

    move-result-wide v10

    .restart local v10       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1           #_arg0:[B
    .end local v2           #_arg1:B
    .end local v10           #_result:J
    :sswitch_11
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .restart local v1       #_arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6       #_arg1_length:I
    if-gez v6, :cond_18

    const/4 v2, 0x0

    .local v2, _arg1:[B
    :goto_19
    invoke-virtual {p0, v1, v2}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_getSimStatus([B[B)J

    move-result-wide v10

    .restart local v10       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v2           #_arg1:[B
    .end local v10           #_result:J
    :cond_18
    new-array v2, v6, [B

    .restart local v2       #_arg1:[B
    goto :goto_19

    .end local v1           #_arg0:[B
    .end local v2           #_arg1:[B
    .end local v6           #_arg1_length:I
    :sswitch_12
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .restart local v1       #_arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6       #_arg1_length:I
    if-gez v6, :cond_19

    const/4 v2, 0x0

    .restart local v2       #_arg1:[B
    :goto_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7       #_arg2_length:I
    if-gez v7, :cond_1a

    const/4 v3, 0x0

    .local v3, _arg2:[I
    :goto_1b
    invoke-virtual {p0, v1, v2, v3}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_UCAVersion([B[B[I)J

    move-result-wide v10

    .restart local v10       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v2           #_arg1:[B
    .end local v3           #_arg2:[I
    .end local v7           #_arg2_length:I
    .end local v10           #_result:J
    :cond_19
    new-array v2, v6, [B

    .restart local v2       #_arg1:[B
    goto :goto_1a

    .restart local v7       #_arg2_length:I
    :cond_1a
    new-array v3, v7, [I

    .restart local v3       #_arg2:[I
    goto :goto_1b

    .end local v1           #_arg0:[B
    .end local v2           #_arg1:[B
    .end local v3           #_arg2:[I
    .end local v6           #_arg1_length:I
    .end local v7           #_arg2_length:I
    :sswitch_13
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .local v1, _arg0:B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6       #_arg1_length:I
    if-gez v6, :cond_1b

    const/4 v2, 0x0

    .restart local v2       #_arg1:[B
    :goto_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7       #_arg2_length:I
    if-gez v7, :cond_1c

    const/4 v3, 0x0

    .restart local v3       #_arg2:[I
    :goto_1d
    invoke-virtual {p0, v1, v2, v3}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_CHInit(B[B[I)J

    move-result-wide v10

    .restart local v10       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v2           #_arg1:[B
    .end local v3           #_arg2:[I
    .end local v7           #_arg2_length:I
    .end local v10           #_result:J
    :cond_1b
    new-array v2, v6, [B

    .restart local v2       #_arg1:[B
    goto :goto_1c

    .restart local v7       #_arg2_length:I
    :cond_1c
    new-array v3, v7, [I

    .restart local v3       #_arg2:[I
    goto :goto_1d

    .end local v1           #_arg0:B
    .end local v2           #_arg1:[B
    .end local v3           #_arg2:[I
    .end local v6           #_arg1_length:I
    .end local v7           #_arg2_length:I
    :sswitch_14
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .restart local v1       #_arg0:B
    invoke-virtual {p0, v1}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_printCHInfo(B)J

    move-result-wide v10

    .restart local v10       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1           #_arg0:B
    .end local v10           #_result:J
    :sswitch_15
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .restart local v1       #_arg0:B
    invoke-virtual {p0, v1}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_KUH_Establish(B)J

    move-result-wide v10

    .restart local v10       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1           #_arg0:B
    .end local v10           #_result:J
    :sswitch_16
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .restart local v1       #_arg0:B
    invoke-virtual {p0, v1}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_KUH_Release(B)J

    move-result-wide v10

    .restart local v10       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v1           #_arg0:B
    .end local v10           #_result:J
    :sswitch_17
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .restart local v1       #_arg0:B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .restart local v2       #_arg1:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8       #_arg3_length:I
    if-gez v8, :cond_1d

    const/4 v4, 0x0

    .restart local v4       #_arg3:[B
    :goto_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .restart local v9       #_arg4_length:I
    if-gez v9, :cond_1e

    const/4 v5, 0x0

    .restart local v5       #_arg4:[I
    :goto_1f
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_KUH_Transmit(B[BI[B[I)J

    move-result-wide v10

    .restart local v10       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeIntArray([I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v4           #_arg3:[B
    .end local v5           #_arg4:[I
    .end local v9           #_arg4_length:I
    .end local v10           #_result:J
    :cond_1d
    new-array v4, v8, [B

    .restart local v4       #_arg3:[B
    goto :goto_1e

    .restart local v9       #_arg4_length:I
    :cond_1e
    new-array v5, v9, [I

    .restart local v5       #_arg4:[I
    goto :goto_1f

    .end local v1           #_arg0:B
    .end local v2           #_arg1:[B
    .end local v3           #_arg2:I
    .end local v4           #_arg3:[B
    .end local v5           #_arg4:[I
    .end local v8           #_arg3_length:I
    .end local v9           #_arg4_length:I
    :sswitch_18
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .local v1, _arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6       #_arg1_length:I
    if-gez v6, :cond_1f

    const/4 v2, 0x0

    .restart local v2       #_arg1:[B
    :goto_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7       #_arg2_length:I
    if-gez v7, :cond_20

    const/4 v3, 0x0

    .local v3, _arg2:[I
    :goto_21
    invoke-virtual {p0, v1, v2, v3}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_OpenT([B[B[I)J

    move-result-wide v10

    .restart local v10       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v2           #_arg1:[B
    .end local v3           #_arg2:[I
    .end local v7           #_arg2_length:I
    .end local v10           #_result:J
    :cond_1f
    new-array v2, v6, [B

    .restart local v2       #_arg1:[B
    goto :goto_20

    .restart local v7       #_arg2_length:I
    :cond_20
    new-array v3, v7, [I

    .restart local v3       #_arg2:[I
    goto :goto_21

    .end local v1           #_arg0:[B
    .end local v2           #_arg1:[B
    .end local v3           #_arg2:[I
    .end local v6           #_arg1_length:I
    .end local v7           #_arg2_length:I
    :sswitch_19
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .restart local v1       #_arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .local v2, _arg1:B
    invoke-virtual {p0, v1, v2}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_CloseT([BB)J

    move-result-wide v10

    .restart local v10       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v0, 0x1

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
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
