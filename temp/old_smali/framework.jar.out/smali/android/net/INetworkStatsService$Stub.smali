.class public abstract Landroid/net/INetworkStatsService$Stub;
.super Landroid/os/Binder;
.source "INetworkStatsService.java"

# interfaces
.implements Landroid/net/INetworkStatsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetworkStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/INetworkStatsService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.INetworkStatsService"

.field static final TRANSACTION_forceUpdate:I = 0x8

.field static final TRANSACTION_getDataLayerSnapshotForUid:I = 0x5

.field static final TRANSACTION_getHistoryForNetwork:I = 0x1

.field static final TRANSACTION_getHistoryForUid:I = 0x2

.field static final TRANSACTION_getSummaryForAllUid:I = 0x4

.field static final TRANSACTION_getSummaryForNetwork:I = 0x3

.field static final TRANSACTION_incrementOperationCount:I = 0x6

.field static final TRANSACTION_setUidForeground:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.net.INetworkStatsService"

    invoke-virtual {p0, p0, v0}, Landroid/net/INetworkStatsService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;
    .locals 2
    .parameter "obj"

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "android.net.INetworkStatsService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/INetworkStatsService;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/net/INetworkStatsService;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/net/INetworkStatsService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/net/INetworkStatsService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 15
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

    move-result v1

    :goto_0
    return v1

    :sswitch_0
    const-string v1, "android.net.INetworkStatsService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_1
    const-string v1, "android.net.INetworkStatsService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/net/NetworkTemplate;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkTemplate;

    .local v2, _arg0:Landroid/net/NetworkTemplate;
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, _arg1:I
    invoke-virtual {p0, v2, v3}, Landroid/net/INetworkStatsService$Stub;->getHistoryForNetwork(Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;

    move-result-object v14

    .local v14, _result:Landroid/net/NetworkStatsHistory;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v14, :cond_1

    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v14, v0, v1}, Landroid/net/NetworkStatsHistory;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2
    const/4 v1, 0x1

    goto :goto_0

    .end local v2           #_arg0:Landroid/net/NetworkTemplate;
    .end local v3           #_arg1:I
    .end local v14           #_result:Landroid/net/NetworkStatsHistory;
    :cond_0
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/net/NetworkTemplate;
    goto :goto_1

    .restart local v3       #_arg1:I
    .restart local v14       #_result:Landroid/net/NetworkStatsHistory;
    :cond_1
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .end local v2           #_arg0:Landroid/net/NetworkTemplate;
    .end local v3           #_arg1:I
    .end local v14           #_result:Landroid/net/NetworkStatsHistory;
    :sswitch_2
    const-string v1, "android.net.INetworkStatsService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Landroid/net/NetworkTemplate;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkTemplate;

    .restart local v2       #_arg0:Landroid/net/NetworkTemplate;
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, _arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, _arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, _arg4:I
    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/net/INetworkStatsService$Stub;->getHistoryForUid(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;

    move-result-object v14

    .restart local v14       #_result:Landroid/net/NetworkStatsHistory;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v14, :cond_3

    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v14, v0, v1}, Landroid/net/NetworkStatsHistory;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_4
    const/4 v1, 0x1

    goto/16 :goto_0

    .end local v2           #_arg0:Landroid/net/NetworkTemplate;
    .end local v3           #_arg1:I
    .end local v4           #_arg2:I
    .end local v5           #_arg3:I
    .end local v6           #_arg4:I
    .end local v14           #_result:Landroid/net/NetworkStatsHistory;
    :cond_2
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/net/NetworkTemplate;
    goto :goto_3

    .restart local v3       #_arg1:I
    .restart local v4       #_arg2:I
    .restart local v5       #_arg3:I
    .restart local v6       #_arg4:I
    .restart local v14       #_result:Landroid/net/NetworkStatsHistory;
    :cond_3
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .end local v2           #_arg0:Landroid/net/NetworkTemplate;
    .end local v3           #_arg1:I
    .end local v4           #_arg2:I
    .end local v5           #_arg3:I
    .end local v6           #_arg4:I
    .end local v14           #_result:Landroid/net/NetworkStatsHistory;
    :sswitch_3
    const-string v1, "android.net.INetworkStatsService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Landroid/net/NetworkTemplate;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkTemplate;

    .restart local v2       #_arg0:Landroid/net/NetworkTemplate;
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    .local v9, _arg1:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .local v11, _arg2:J
    move-object v7, p0

    move-object v8, v2

    invoke-virtual/range {v7 .. v12}, Landroid/net/INetworkStatsService$Stub;->getSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v14

    .local v14, _result:Landroid/net/NetworkStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v14, :cond_5

    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v14, v0, v1}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_6
    const/4 v1, 0x1

    goto/16 :goto_0

    .end local v2           #_arg0:Landroid/net/NetworkTemplate;
    .end local v9           #_arg1:J
    .end local v11           #_arg2:J
    .end local v14           #_result:Landroid/net/NetworkStats;
    :cond_4
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/net/NetworkTemplate;
    goto :goto_5

    .restart local v9       #_arg1:J
    .restart local v11       #_arg2:J
    .restart local v14       #_result:Landroid/net/NetworkStats;
    :cond_5
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .end local v2           #_arg0:Landroid/net/NetworkTemplate;
    .end local v9           #_arg1:J
    .end local v11           #_arg2:J
    .end local v14           #_result:Landroid/net/NetworkStats;
    :sswitch_4
    const-string v1, "android.net.INetworkStatsService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Landroid/net/NetworkTemplate;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkTemplate;

    .restart local v2       #_arg0:Landroid/net/NetworkTemplate;
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    .restart local v9       #_arg1:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .restart local v11       #_arg2:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_7

    const/4 v5, 0x1

    .local v5, _arg3:Z
    :goto_8
    move-object v7, p0

    move-object v8, v2

    move v13, v5

    invoke-virtual/range {v7 .. v13}, Landroid/net/INetworkStatsService$Stub;->getSummaryForAllUid(Landroid/net/NetworkTemplate;JJZ)Landroid/net/NetworkStats;

    move-result-object v14

    .restart local v14       #_result:Landroid/net/NetworkStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v14, :cond_8

    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v14, v0, v1}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_9
    const/4 v1, 0x1

    goto/16 :goto_0

    .end local v2           #_arg0:Landroid/net/NetworkTemplate;
    .end local v5           #_arg3:Z
    .end local v9           #_arg1:J
    .end local v11           #_arg2:J
    .end local v14           #_result:Landroid/net/NetworkStats;
    :cond_6
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/net/NetworkTemplate;
    goto :goto_7

    .restart local v9       #_arg1:J
    .restart local v11       #_arg2:J
    :cond_7
    const/4 v5, 0x0

    goto :goto_8

    .restart local v5       #_arg3:Z
    .restart local v14       #_result:Landroid/net/NetworkStats;
    :cond_8
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .end local v2           #_arg0:Landroid/net/NetworkTemplate;
    .end local v5           #_arg3:Z
    .end local v9           #_arg1:J
    .end local v11           #_arg2:J
    .end local v14           #_result:Landroid/net/NetworkStats;
    :sswitch_5
    const-string v1, "android.net.INetworkStatsService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, _arg0:I
    invoke-virtual {p0, v2}, Landroid/net/INetworkStatsService$Stub;->getDataLayerSnapshotForUid(I)Landroid/net/NetworkStats;

    move-result-object v14

    .restart local v14       #_result:Landroid/net/NetworkStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v14, :cond_9

    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v14, v0, v1}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_a
    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_9
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .end local v2           #_arg0:I
    .end local v14           #_result:Landroid/net/NetworkStats;
    :sswitch_6
    const-string v1, "android.net.INetworkStatsService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4       #_arg2:I
    invoke-virtual {p0, v2, v3, v4}, Landroid/net/INetworkStatsService$Stub;->incrementOperationCount(III)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v1, 0x1

    goto/16 :goto_0

    .end local v2           #_arg0:I
    .end local v3           #_arg1:I
    .end local v4           #_arg2:I
    :sswitch_7
    const-string v1, "android.net.INetworkStatsService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_a

    const/4 v3, 0x1

    .local v3, _arg1:Z
    :goto_b
    invoke-virtual {p0, v2, v3}, Landroid/net/INetworkStatsService$Stub;->setUidForeground(IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v1, 0x1

    goto/16 :goto_0

    .end local v3           #_arg1:Z
    :cond_a
    const/4 v3, 0x0

    goto :goto_b

    .end local v2           #_arg0:I
    :sswitch_8
    const-string v1, "android.net.INetworkStatsService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/INetworkStatsService$Stub;->forceUpdate()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v1, 0x1

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
