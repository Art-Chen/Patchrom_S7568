.class Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
.super Ljava/lang/Thread;
.source "Vpn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Vpn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LegacyVpnRunner"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LegacyVpnRunner"


# instance fields
.field private final mArguments:[[Ljava/lang/String;

.field private final mConfig:Lcom/android/internal/net/VpnConfig;

.field private final mDaemons:[Ljava/lang/String;

.field private final mInfo:Lcom/android/internal/net/LegacyVpnInfo;

.field private final mOuterInterface:Ljava/lang/String;

.field private final mSockets:[Landroid/net/LocalSocket;

.field private mTimer:J

.field final synthetic this$0:Lcom/android/server/connectivity/Vpn;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter "config"
    .parameter "racoon"
    .parameter "mtpd"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    const-string v0, "LegacyVpnRunner"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mTimer:J

    iput-object p2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "racoon"

    aput-object v1, v0, v2

    const-string v1, "mtpd"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    new-array v0, v4, [[Ljava/lang/String;

    aput-object p3, v0, v2

    aput-object p4, v0, v3

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Landroid/net/LocalSocket;

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    new-instance v0, Lcom/android/internal/net/LegacyVpnInfo;

    invoke-direct {v0}, Lcom/android/internal/net/LegacyVpnInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterInterface:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    const-string v1, "[Legacy VPN]"

    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    return-void
.end method

.method private checkpoint(Z)V
    .locals 8
    .parameter "yield"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .local v0, now:J
    iget-wide v4, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mTimer:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    iput-wide v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mTimer:J

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    :goto_0
    return-void

    :cond_0
    iget-wide v4, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mTimer:J

    sub-long v4, v0, v4

    const-wide/32 v6, 0xea60

    cmp-long v4, v4, v6

    if-gtz v4, :cond_2

    if-eqz p1, :cond_1

    const-wide/16 v2, 0xc8

    :cond_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    const/4 v3, 0x4

    iput v3, v2, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Time is up"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private execute()V
    .locals 28

    .prologue
    const/16 v23, 0x0

    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    .local v7, arr$:[Ljava/lang/String;
    array-length v0, v7

    move/from16 v17, v0

    .local v17, len$:I
    const/4 v14, 0x0

    .local v14, i$:I
    :goto_0
    move/from16 v0, v17

    if-ge v14, v0, :cond_1

    aget-object v10, v7, v14

    .local v10, daemon:Ljava/lang/String;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "init.svc."

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .local v16, key:Ljava/lang/String;
    :goto_1
    const-string v23, "stopped"

    const-string v24, "stopped"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_0

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .end local v7           #arr$:[Ljava/lang/String;
    .end local v10           #daemon:Ljava/lang/String;
    .end local v14           #i$:I
    .end local v16           #key:Ljava/lang/String;
    .end local v17           #len$:I
    :catch_0
    move-exception v12

    .local v12, e:Ljava/lang/Exception;
    :try_start_1
    const-string v23, "LegacyVpnRunner"

    const-string v24, "Aborting"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exit()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1c

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    .restart local v7       #arr$:[Ljava/lang/String;
    array-length v0, v7

    move/from16 v17, v0

    .restart local v17       #len$:I
    const/4 v14, 0x0

    .restart local v14       #i$:I
    :goto_2
    move/from16 v0, v17

    if-ge v14, v0, :cond_1c

    aget-object v10, v7, v14

    .restart local v10       #daemon:Ljava/lang/String;
    const-string v23, "ctl.stop"

    move-object/from16 v0, v23

    invoke-static {v0, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .end local v12           #e:Ljava/lang/Exception;
    .restart local v16       #key:Ljava/lang/String;
    :cond_0
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .end local v10           #daemon:Ljava/lang/String;
    .end local v16           #key:Ljava/lang/String;
    :cond_1
    :try_start_2
    new-instance v22, Ljava/io/File;

    const-string v23, "/data/misc/vpn/state"

    invoke-direct/range {v22 .. v23}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v22, state:Ljava/io/File;
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->delete()Z

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_2

    new-instance v23, Ljava/lang/IllegalStateException;

    const-string v24, "Cannot delete the state"

    invoke-direct/range {v23 .. v24}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v23
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .end local v7           #arr$:[Ljava/lang/String;
    .end local v14           #i$:I
    .end local v17           #len$:I
    .end local v22           #state:Ljava/io/File;
    :catchall_0
    move-exception v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_19

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    .restart local v7       #arr$:[Ljava/lang/String;
    array-length v0, v7

    move/from16 v17, v0

    .restart local v17       #len$:I
    const/4 v14, 0x0

    .restart local v14       #i$:I
    :goto_3
    move/from16 v0, v17

    if-ge v14, v0, :cond_19

    aget-object v10, v7, v14

    .restart local v10       #daemon:Ljava/lang/String;
    const-string v24, "ctl.stop"

    move-object/from16 v0, v24

    invoke-static {v0, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .end local v10           #daemon:Ljava/lang/String;
    .restart local v22       #state:Ljava/io/File;
    :cond_2
    :try_start_3
    new-instance v23, Ljava/io/File;

    const-string v24, "/data/misc/vpn/abort"

    invoke-direct/range {v23 .. v24}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z

    const/16 v20, 0x0

    .local v20, restart:Z
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    .local v7, arr$:[[Ljava/lang/String;
    array-length v0, v7

    move/from16 v17, v0

    const/4 v14, 0x0

    :goto_4
    move/from16 v0, v17

    if-ge v14, v0, :cond_5

    aget-object v6, v7, v14

    .local v6, arguments:[Ljava/lang/String;
    if-nez v20, :cond_3

    if-eqz v6, :cond_4

    :cond_3
    const/16 v20, 0x1

    :goto_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    :cond_4
    const/16 v20, 0x0

    goto :goto_5

    .end local v6           #arguments:[Ljava/lang/String;
    :cond_5
    if-nez v20, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/internal/net/LegacyVpnInfo;->state:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1f

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    .local v7, arr$:[Ljava/lang/String;
    array-length v0, v7

    move/from16 v17, v0

    const/4 v14, 0x0

    :goto_6
    move/from16 v0, v17

    if-ge v14, v0, :cond_1f

    aget-object v10, v7, v14

    .restart local v10       #daemon:Ljava/lang/String;
    const-string v23, "ctl.stop"

    move-object/from16 v0, v23

    invoke-static {v0, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .end local v10           #daemon:Ljava/lang/String;
    .local v7, arr$:[[Ljava/lang/String;
    :cond_6
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    const/4 v13, 0x0

    .end local v7           #arr$:[[Ljava/lang/String;
    .local v13, i:I
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v13, v0, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    move-object/from16 v23, v0

    aget-object v6, v23, v13

    .restart local v6       #arguments:[Ljava/lang/String;
    if-nez v6, :cond_8

    :cond_7
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    move-object/from16 v23, v0

    aget-object v10, v23, v13

    .restart local v10       #daemon:Ljava/lang/String;
    const-string v23, "ctl.start"

    move-object/from16 v0, v23

    invoke-static {v0, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "init.svc."

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .restart local v16       #key:Ljava/lang/String;
    :goto_8
    const-string v23, "running"

    invoke-static/range {v16 .. v16}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_9

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V

    goto :goto_8

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    move-object/from16 v23, v0

    new-instance v24, Landroid/net/LocalSocket;

    invoke-direct/range {v24 .. v24}, Landroid/net/LocalSocket;-><init>()V

    aput-object v24, v23, v13

    new-instance v4, Landroid/net/LocalSocketAddress;

    sget-object v23, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    move-object/from16 v0, v23

    invoke-direct {v4, v10, v0}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .local v4, address:Landroid/net/LocalSocketAddress;
    :goto_9
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    move-object/from16 v23, v0

    aget-object v23, v23, v13

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    move-object/from16 v23, v0

    aget-object v23, v23, v13

    const/16 v24, 0x1f4

    invoke-virtual/range {v23 .. v24}, Landroid/net/LocalSocket;->setSoTimeout(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    move-object/from16 v23, v0

    aget-object v23, v23, v13

    invoke-virtual/range {v23 .. v23}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v18

    .local v18, out:Ljava/io/OutputStream;
    move-object v7, v6

    .local v7, arr$:[Ljava/lang/String;
    array-length v0, v7

    move/from16 v17, v0

    const/4 v14, 0x0

    :goto_a
    move/from16 v0, v17

    if-ge v14, v0, :cond_b

    aget-object v5, v7, v14

    .local v5, argument:Ljava/lang/String;
    sget-object v23, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v9

    .local v9, bytes:[B
    array-length v0, v9

    move/from16 v23, v0

    const v24, 0xffff

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_a

    new-instance v23, Ljava/lang/IllegalArgumentException;

    const-string v24, "Argument is too large"

    invoke-direct/range {v23 .. v24}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v23

    .end local v5           #argument:Ljava/lang/String;
    .end local v7           #arr$:[Ljava/lang/String;
    .end local v9           #bytes:[B
    .end local v18           #out:Ljava/io/OutputStream;
    :catch_1
    move-exception v23

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V

    goto :goto_9

    .restart local v5       #argument:Ljava/lang/String;
    .restart local v7       #arr$:[Ljava/lang/String;
    .restart local v9       #bytes:[B
    .restart local v18       #out:Ljava/io/OutputStream;
    :cond_a
    array-length v0, v9

    move/from16 v23, v0

    shr-int/lit8 v23, v23, 0x8

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    array-length v0, v9

    move/from16 v23, v0

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/io/OutputStream;->write([B)V

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_a

    .end local v5           #argument:Ljava/lang/String;
    .end local v9           #bytes:[B
    :cond_b
    const/16 v23, 0xff

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    const/16 v23, 0xff

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStream;->flush()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    move-object/from16 v23, v0

    aget-object v23, v23, v13

    invoke-virtual/range {v23 .. v23}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    move-result-object v15

    .local v15, in:Ljava/io/InputStream;
    :goto_b
    :try_start_7
    invoke-virtual {v15}, Ljava/io/InputStream;->read()I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    move-result v23

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_7

    :goto_c
    const/16 v23, 0x1

    :try_start_8
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V

    goto :goto_b

    .end local v4           #address:Landroid/net/LocalSocketAddress;
    .end local v6           #arguments:[Ljava/lang/String;
    .end local v7           #arr$:[Ljava/lang/String;
    .end local v10           #daemon:Ljava/lang/String;
    .end local v15           #in:Ljava/io/InputStream;
    .end local v16           #key:Ljava/lang/String;
    .end local v18           #out:Ljava/io/OutputStream;
    :cond_c
    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V

    :cond_d
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z

    move-result v23

    if-nez v23, :cond_f

    const/4 v13, 0x0

    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v13, v0, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    move-object/from16 v23, v0

    aget-object v10, v23, v13

    .restart local v10       #daemon:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    move-object/from16 v23, v0

    aget-object v23, v23, v13

    if-eqz v23, :cond_e

    const-string v23, "running"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "init.svc."

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_e

    new-instance v23, Ljava/lang/IllegalStateException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " is dead"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v23

    :cond_e
    add-int/lit8 v13, v13, 0x1

    goto :goto_d

    .end local v10           #daemon:Ljava/lang/String;
    :cond_f
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->length()J

    move-result-wide v23

    move-wide/from16 v0, v23

    long-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    new-array v8, v0, [B

    .local v8, buffer:[B
    new-instance v23, Ljava/io/FileInputStream;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/io/FileInputStream;->read([B)I

    move-result v23

    array-length v0, v8

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_10

    new-instance v23, Ljava/lang/IllegalStateException;

    const-string v24, "Cannot read the state"

    invoke-direct/range {v23 .. v24}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v23

    :cond_10
    new-instance v23, Ljava/lang/String;

    sget-object v24, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v0, v8, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string v24, "\n"

    const/16 v25, -0x1

    invoke-virtual/range {v23 .. v25}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v19

    .local v19, parameters:[Ljava/lang/String;
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x6

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_11

    new-instance v23, Ljava/lang/IllegalStateException;

    const-string v24, "Cannot parse the state"

    invoke-direct/range {v23 .. v24}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v23

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v24, v19, v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v24, v19, v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->isEmpty()Z

    move-result v23

    if-eqz v23, :cond_13

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget-object v24, v19, v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/internal/net/VpnConfig;->routes:Ljava/lang/String;

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    move-object/from16 v23, v0

    if-eqz v23, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v23

    if-nez v23, :cond_15

    :cond_14
    const/16 v23, 0x3

    aget-object v23, v19, v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .local v11, dnsServers:Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    move-object/from16 v23, v0

    const-string v24, " "

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    .end local v11           #dnsServers:Ljava/lang/String;
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    move-object/from16 v23, v0

    if-eqz v23, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v23

    if-nez v23, :cond_17

    :cond_16
    const/16 v23, 0x4

    aget-object v23, v19, v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    .local v21, searchDomains:Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    move-object/from16 v23, v0

    const-string v24, " "

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    .end local v21           #searchDomains:Ljava/lang/String;
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/lang/String;

    move-object/from16 v25, v0

    #calls: Lcom/android/server/connectivity/Vpn;->jniSetRoutes(Ljava/lang/String;Ljava/lang/String;)I
    invoke-static/range {v23 .. v25}, Lcom/android/server/connectivity/Vpn;->access$300(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v24, v0

    monitor-enter v24
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    const/16 v23, 0x0

    :try_start_9
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    #calls: Lcom/android/server/connectivity/Vpn;->jniCheck(Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Vpn;->access$400(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)I

    move-result v23

    if-nez v23, :cond_18

    new-instance v23, Ljava/lang/IllegalStateException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " is gone"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v23

    :catchall_1
    move-exception v23

    monitor-exit v24
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v23
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    :cond_18
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    #setter for: Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Vpn;->access$202(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v23, v0

    #getter for: Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;
    invoke-static/range {v23 .. v23}, Lcom/android/server/connectivity/Vpn;->access$500(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/ConnectivityService$VpnCallback;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    move-object/from16 v26, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/server/ConnectivityService$VpnCallback;->override(Ljava/util/List;Ljava/util/List;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    #calls: Lcom/android/server/connectivity/Vpn;->showNotification(Lcom/android/internal/net/VpnConfig;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/connectivity/Vpn;->access$600(Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnConfig;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    const-string v23, "LegacyVpnRunner"

    const-string v25, "Connected!"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    move-object/from16 v23, v0

    const/16 v25, 0x3

    move/from16 v0, v25

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v25, v0

    #getter for: Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;
    invoke-static/range {v25 .. v25}, Lcom/android/server/connectivity/Vpn;->access$700(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object v25

    const/16 v26, 0x0

    invoke-static/range {v25 .. v26}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanel(Landroid/content/Context;Lcom/android/internal/net/VpnConfig;)Landroid/app/PendingIntent;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/internal/net/LegacyVpnInfo;->intent:Landroid/app/PendingIntent;

    monitor-exit v24
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_21

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    .restart local v7       #arr$:[Ljava/lang/String;
    array-length v0, v7

    move/from16 v17, v0

    const/4 v14, 0x0

    :goto_e
    move/from16 v0, v17

    if-ge v14, v0, :cond_21

    aget-object v10, v7, v14

    .restart local v10       #daemon:Ljava/lang/String;
    const-string v23, "ctl.stop"

    move-object/from16 v0, v23

    invoke-static {v0, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_e

    .end local v7           #arr$:[Ljava/lang/String;
    .end local v8           #buffer:[B
    .end local v10           #daemon:Ljava/lang/String;
    .end local v13           #i:I
    .end local v14           #i$:I
    .end local v17           #len$:I
    .end local v19           #parameters:[Ljava/lang/String;
    .end local v20           #restart:Z
    .end local v22           #state:Ljava/io/File;
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    move/from16 v24, v0

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1b

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    move-object/from16 v24, v0

    const/16 v25, 0x5

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    :cond_1b
    throw v23

    .restart local v4       #address:Landroid/net/LocalSocketAddress;
    .restart local v6       #arguments:[Ljava/lang/String;
    .restart local v7       #arr$:[Ljava/lang/String;
    .restart local v10       #daemon:Ljava/lang/String;
    .restart local v13       #i:I
    .restart local v14       #i$:I
    .restart local v15       #in:Ljava/io/InputStream;
    .restart local v16       #key:Ljava/lang/String;
    .restart local v17       #len$:I
    .restart local v18       #out:Ljava/io/OutputStream;
    .restart local v20       #restart:Z
    .restart local v22       #state:Ljava/io/File;
    :catch_2
    move-exception v23

    goto/16 :goto_c

    .end local v4           #address:Landroid/net/LocalSocketAddress;
    .end local v6           #arguments:[Ljava/lang/String;
    .end local v7           #arr$:[Ljava/lang/String;
    .end local v10           #daemon:Ljava/lang/String;
    .end local v13           #i:I
    .end local v14           #i$:I
    .end local v15           #in:Ljava/io/InputStream;
    .end local v16           #key:Ljava/lang/String;
    .end local v17           #len$:I
    .end local v18           #out:Ljava/io/OutputStream;
    .end local v20           #restart:Z
    .end local v22           #state:Ljava/io/File;
    .restart local v12       #e:Ljava/lang/Exception;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    move/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1e

    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    move-object/from16 v23, v0

    .end local v12           #e:Ljava/lang/Exception;
    :goto_f
    const/16 v24, 0x5

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    :cond_1e
    return-void

    .restart local v14       #i$:I
    .restart local v17       #len$:I
    .restart local v20       #restart:Z
    .restart local v22       #state:Ljava/io/File;
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    move/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1e

    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    move-object/from16 v23, v0

    goto :goto_f

    .restart local v8       #buffer:[B
    .restart local v13       #i:I
    .restart local v19       #parameters:[Ljava/lang/String;
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    move/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1e

    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    move-object/from16 v23, v0

    goto :goto_f
.end method


# virtual methods
.method public check(Ljava/lang/String;)V
    .locals 3
    .parameter "interfaze"

    .prologue
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterInterface:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "LegacyVpnRunner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Legacy VPN is going down with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exit()V

    :cond_0
    return-void
.end method

.method public exit()V
    .locals 5

    .prologue
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->interrupt()V

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    .local v0, arr$:[Landroid/net/LocalSocket;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .local v3, socket:Landroid/net/LocalSocket;
    :try_start_0
    invoke-virtual {v3}, Landroid/net/LocalSocket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_1

    .end local v3           #socket:Landroid/net/LocalSocket;
    :cond_0
    return-void
.end method

.method public getInfo()Lcom/android/internal/net/LegacyVpnInfo;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget v0, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    #getter for: Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->access$200(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/net/LegacyVpnInfo;->intent:Landroid/app/PendingIntent;

    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    return-object v0
.end method

.method public run()V
    .locals 3

    .prologue
    const-string v0, "LegacyVpnRunner"

    const-string v1, "Waiting"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "LegacyVpnRunner"

    monitor-enter v1

    :try_start_0
    const-string v0, "LegacyVpnRunner"

    const-string v2, "Executing"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->execute()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
