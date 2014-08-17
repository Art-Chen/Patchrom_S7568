.class public Lcom/android/server/enterprise/BluetoothPolicy;
.super Landroid/app/enterprise/IBluetoothPolicy$Stub;
.source "BluetoothPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;,
        Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;,
        Lcom/android/server/enterprise/BluetoothPolicy$StoreLogThread;
    }
.end annotation


# static fields
.field private static final EDM_AVRCP_BLOCK_CONF:Ljava/lang/String; = "avrcpBlocked"

.field private static final TAG:Ljava/lang/String; = "BluetoothPolicyService"


# instance fields
.field private isCacheUpdated:Z

.field private mCacheIsBluetoothLogEnabled:Z

.field private mContext:Landroid/content/Context;

.field mDevicePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

.field private mLogQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mProfileMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field mProfilePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRestart:Z

.field private mThread:Lcom/android/server/enterprise/BluetoothPolicy$StoreLogThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "ctx"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/app/enterprise/IBluetoothPolicy$Stub;-><init>()V

    iput-boolean v3, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mCacheIsBluetoothLogEnabled:Z

    iput-boolean v3, p0, Lcom/android/server/enterprise/BluetoothPolicy;->isCacheUpdated:Z

    iput-object v1, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mLogQueue:Ljava/util/concurrent/BlockingQueue;

    iput-object v1, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mThread:Lcom/android/server/enterprise/BluetoothPolicy$StoreLogThread;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    new-instance v1, Lcom/android/server/enterprise/BluetoothPolicy$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/BluetoothPolicy$1;-><init>(Lcom/android/server/enterprise/BluetoothPolicy;)V

    iput-object v1, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/enterprise/EdmStorageProvider;

    iget-object v2, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    iput-boolean v3, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mRestart:Z

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mLogQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v1, Lcom/android/server/enterprise/BluetoothPolicy$StoreLogThread;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/BluetoothPolicy$StoreLogThread;-><init>(Lcom/android/server/enterprise/BluetoothPolicy;)V

    iput-object v1, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mThread:Lcom/android/server/enterprise/BluetoothPolicy$StoreLogThread;

    iget-object v1, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mThread:Lcom/android/server/enterprise/BluetoothPolicy$StoreLogThread;

    invoke-virtual {v1}, Lcom/android/server/enterprise/BluetoothPolicy$StoreLogThread;->start()V

    new-instance v1, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;

    iget-object v2, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mContext:Landroid/content/Context;

    const-string v3, "BLUETOOTH_PROFILE_BWLIST"

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;-><init>(Lcom/android/server/enterprise/BluetoothPolicy;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;

    new-instance v1, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;

    iget-object v2, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mContext:Landroid/content/Context;

    const-string v3, "BLUETOOTH_DEVICE_BWLIST"

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;-><init>(Lcom/android/server/enterprise/BluetoothPolicy;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->initProfileMap()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/BluetoothPolicy;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mRestart:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/enterprise/BluetoothPolicy;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mRestart:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/BluetoothPolicy;)Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mLogQueue:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/BluetoothPolicy;)Lcom/android/server/enterprise/EdmStorageProvider;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    return-object v0
.end method

.method private applyDevicePolicy()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;->getEffectiveBlackList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/BluetoothPolicy;->applyBlackList(Ljava/util/List;)V

    return-void
.end method

.method private applyProfilePolicy()V
    .locals 3

    .prologue
    const-string v1, "avrcpBlocked"

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/BluetoothPolicy;->isProfileEnabledInternal(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0"

    :goto_0
    const-string v2, "/data/system/enterprise.conf"

    invoke-static {v1, v0, v2}, Lcom/android/server/enterprise/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->restartBluetooth()V

    return-void

    :cond_0
    const-string v0, "1"

    goto :goto_0
.end method

.method private enforceBluetoothPermission()I
    .locals 2

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_BLUETOOTH"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private getBluetoothLogEnabled(Z)Z
    .locals 12
    .parameter "allAdmins"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const-string v7, "BluetoothPolicyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getBluetoothLogEnabled("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, -0x1

    .local v6, uid:I
    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->enforceBluetoothPermission()I

    move-result v6

    :cond_0
    new-array v0, v11, [Ljava/lang/String;

    .local v0, columns:[Ljava/lang/String;
    const-string v7, "bluetoothLogEnabled"

    aput-object v7, v0, v10

    const/4 v5, 0x0

    .local v5, ret:Z
    const-string v7, "BluetoothPolicyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getBluetoothLogEnabled - uid: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v6, :cond_3

    iget-object v7, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v8, "BLUETOOTH"

    invoke-virtual {v7, v8, v6, v0}, Lcom/android/server/enterprise/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-ne v7, v11, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "true"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v5, 0x1

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .end local v1           #cursor:Landroid/database/Cursor;
    :cond_2
    :goto_0
    const-string v7, "BluetoothPolicyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getBluetoothLogEnabled - ret: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_3
    iget-object v7, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v8, "BLUETOOTH"

    invoke-virtual {v7, v8, v0}, Lcom/android/server/enterprise/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .local v3, cvList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v3, :cond_2

    const-string v7, "BluetoothPolicyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getBluetoothLogEnabled - cvList: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .local v2, cv:Landroid/content/ContentValues;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #cv:Landroid/content/ContentValues;
    check-cast v2, Landroid/content/ContentValues;

    .restart local v2       #cv:Landroid/content/ContentValues;
    const-string v7, "BluetoothPolicyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getBluetoothLogEnabled - cv: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "bluetoothLogEnabled"

    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "true"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v5, 0x1

    goto :goto_0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private initProfileMap()V
    .locals 8

    .prologue
    const/16 v7, 0x10

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/16 v3, 0x8

    iget-object v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    const/16 v1, 0x40

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    const/16 v1, 0x80

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    const/16 v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    const/16 v1, 0x200

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "00001108-0000-1000-8000-00805F9B34FB"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "00001112-0000-1000-8000-00805F9B34FB"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "0000111E-0000-1000-8000-00805F9B34FB"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "0000111F-0000-1000-8000-00805F9B34FB"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "0000110E-0000-1000-8000-00805F9B34FB"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "0000110C-0000-1000-8000-00805F9B34FB"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "0000112f-0000-1000-8000-00805F9B34FB"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "00001130-0000-1000-8000-00805f9b34fb"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "0000110A-0000-1000-8000-00805F9B34FB"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "0000110B-0000-1000-8000-00805F9B34FB"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "0000110D-0000-1000-8000-00805F9B34FB"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "00001103-0000-1000-8000-00805f9b34fb"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    const/16 v1, 0x40

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "00001106-0000-1000-8000-00805f9b34fb"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    const/16 v1, 0x80

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "00001101-0000-1000-8000-00805f9b34fb"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    const/16 v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "0000112D-0000-1000-8000-00805F9B34FB"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    const/16 v1, 0x200

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "00001122-0000-1000-8000-00805f9b34fb"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private restartBluetooth()V
    .locals 2

    .prologue
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .local v0, ba:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mRestart:Z

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    :cond_0
    return-void
.end method


# virtual methods
.method public activateBluetoothDeviceRestriction(Z)Z
    .locals 7
    .parameter "enable"

    .prologue
    const-string v4, "BluetoothPolicyService"

    const-string v5, "activateBluetoothDeviceRestriction"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->enforceBluetoothPermission()I

    move-result v0

    .local v0, adminUid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, token:J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v4, v0}, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;->isPolicyActive(I)Z

    move-result v4

    if-eq p1, v4, :cond_0

    iget-object v4, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "BLUETOOTH"

    const-string v6, "devicePolicyEnabled"

    invoke-virtual {v4, v0, v5, v6, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    iget-object v4, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v4}, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;->reload()Z

    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->applyDevicePolicy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v4, 0x1

    return v4

    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    const-string v4, "BluetoothPolicyService"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public activateBluetoothUUIDRestriction(Z)Z
    .locals 8
    .parameter "enable"

    .prologue
    const-string v5, "BluetoothPolicyService"

    const-string v6, "activateBluetoothUUIDRestriction"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .local v2, ret:Z
    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->enforceBluetoothPermission()I

    move-result v0

    .local v0, adminUid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .local v3, token:J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v5, v0}, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;->isPolicyActive(I)Z

    move-result v5

    if-eq p1, v5, :cond_0

    iget-object v5, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "BLUETOOTH"

    const-string v7, "profilePolicyEnabled"

    invoke-virtual {v5, v0, v6, v7, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    iget-object v5, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v5}, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;->reload()Z

    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->applyProfilePolicy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    const-string v5, "BluetoothPolicyService"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public addBluetoothDevicesToBlackList(Ljava/util/List;)Z
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, devices:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v4, "BluetoothPolicyService"

    const-string v5, "addDevicesToBlackList"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->enforceBluetoothPermission()I

    move-result v0

    .local v0, adminUid:I
    const/4 v1, 0x0

    .local v1, ret:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, token:J
    iget-object v4, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v4, v0, p1}, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;->addObjectsToBlackList(ILjava/util/List;)Z

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    iget-object v4, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v4, v0}, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;->isPolicyActive(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->applyDevicePolicy()V

    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1
.end method

.method public addBluetoothDevicesToWhiteList(Ljava/util/List;)Z
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, devices:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v4, "BluetoothPolicyService"

    const-string v5, "addDevicesToWhiteList"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->enforceBluetoothPermission()I

    move-result v0

    .local v0, adminUid:I
    const/4 v1, 0x0

    .local v1, ret:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, token:J
    iget-object v4, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v4, v0, p1}, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;->addObjectsToWhiteList(ILjava/util/List;)Z

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    iget-object v4, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v4, v0}, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;->isPolicyActive(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->applyDevicePolicy()V

    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1
.end method

.method public addBluetoothUUIDsToBlackList(Ljava/util/List;)Z
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, profileUUIDs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v4, "BluetoothPolicyService"

    const-string v5, "addProfilesToBlackList"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->enforceBluetoothPermission()I

    move-result v0

    .local v0, adminUid:I
    const/4 v1, 0x0

    .local v1, ret:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, token:J
    iget-object v4, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v4, v0, p1}, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;->addObjectsToBlackList(ILjava/util/List;)Z

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    iget-object v4, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v4, v0}, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;->isPolicyActive(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->applyProfilePolicy()V

    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1
.end method

.method public addBluetoothUUIDsToWhiteList(Ljava/util/List;)Z
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, profileUUIDs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v4, "BluetoothPolicyService"

    const-string v5, "addProfilesToWhiteList"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->enforceBluetoothPermission()I

    move-result v0

    .local v0, adminUid:I
    const/4 v1, 0x0

    .local v1, ret:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, token:J
    iget-object v4, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v4, v0, p1}, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;->addObjectsToWhiteList(ILjava/util/List;)Z

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    iget-object v4, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v4, v0}, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;->isPolicyActive(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->applyProfilePolicy()V

    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1
.end method

.method public allowBluetooth(Z)Z
    .locals 9
    .parameter "enable"

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->enforceBluetoothPermission()I

    move-result v0

    .local v0, adminUid:I
    const/4 v3, 0x1

    .local v3, success:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .local v4, token:J
    if-nez p1, :cond_0

    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .local v1, ba:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .end local v1           #ba:Landroid/bluetooth/BluetoothAdapter;
    :cond_0
    iget-object v6, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "BLUETOOTH"

    const-string v8, "bluetoothEnabled"

    invoke-virtual {v6, v0, v7, v8, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :catch_0
    move-exception v2

    .local v2, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    :try_start_1
    const-string v6, "BluetoothPolicyService"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method public allowOutgoingCalls(Z)Z
    .locals 9
    .parameter "enable"

    .prologue
    const-string v6, "BluetoothPolicyService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setBluetoothDataTransferAllowed = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->enforceBluetoothPermission()I

    move-result v0

    .local v0, adminUid:I
    const/4 v3, 0x0

    .local v3, ret:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .local v4, token:J
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "BLUETOOTH"

    const-string v8, "allowOutgoingCalls"

    invoke-virtual {v6, v0, v7, v8, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .local v1, ba:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mRestart:Z

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->disable()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #ba:Landroid/bluetooth/BluetoothAdapter;
    :cond_0
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :catch_0
    move-exception v2

    .local v2, e:Ljava/lang/Exception;
    const-string v6, "BluetoothPolicyService"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method applyBlackList(Ljava/util/List;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, blacklist:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .local v0, ba:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    .local v1, btSet:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .local v2, device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "*"

    invoke-interface {p1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_1
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->removeBond()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0           #ba:Landroid/bluetooth/BluetoothAdapter;
    .end local v1           #btSet:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v2           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v4           #itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/bluetooth/BluetoothDevice;>;"
    :catch_0
    move-exception v3

    .local v3, e:Ljava/lang/Exception;
    const-string v5, "BluetoothPolicyService"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3           #e:Ljava/lang/Exception;
    :cond_2
    return-void
.end method

.method public bluetoothLog(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "tag"
    .parameter "msg"

    .prologue
    const/4 v0, 0x0

    .local v0, ret:Z
    invoke-virtual {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->isBluetoothLogEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "BluetoothPolicyService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "on server bluetoothLoglogConnectionChanged ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mLogQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public clearBluetoothDevicesFromBlackList()Z
    .locals 6

    .prologue
    const-string v4, "BluetoothPolicyService"

    const-string v5, "clearDevicesFromBlackList"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->enforceBluetoothPermission()I

    move-result v0

    .local v0, adminUid:I
    const/4 v1, 0x0

    .local v1, ret:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, token:J
    iget-object v4, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v4, v0}, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;->clearObjectsFromBlackList(I)Z

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    iget-object v4, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v4, v0}, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;->isPolicyActive(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->applyDevicePolicy()V

    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1
.end method

.method public clearBluetoothDevicesFromWhiteList()Z
    .locals 6

    .prologue
    const-string v4, "BluetoothPolicyService"

    const-string v5, "clearDevicesFromWhiteList"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->enforceBluetoothPermission()I

    move-result v0

    .local v0, adminUid:I
    const/4 v1, 0x0

    .local v1, ret:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, token:J
    iget-object v4, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v4, v0}, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;->clearObjectsFromWhiteList(I)Z

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    iget-object v4, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v4, v0}, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;->isPolicyActive(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->applyDevicePolicy()V

    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1
.end method

.method public clearBluetoothUUIDsFromBlackList()Z
    .locals 6

    .prologue
    const-string v4, "BluetoothPolicyService"

    const-string v5, "clearProfilesFromBlackList"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->enforceBluetoothPermission()I

    move-result v0

    .local v0, adminUid:I
    const/4 v1, 0x0

    .local v1, ret:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, token:J
    iget-object v4, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v4, v0}, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;->clearObjectsFromBlackList(I)Z

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    iget-object v4, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v4, v0}, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;->isPolicyActive(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->applyProfilePolicy()V

    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1
.end method

.method public clearBluetoothUUIDsFromWhiteList()Z
    .locals 6

    .prologue
    const-string v4, "BluetoothPolicyService"

    const-string v5, "clearProfilesFromWhiteList"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->enforceBluetoothPermission()I

    move-result v0

    .local v0, adminUid:I
    const/4 v1, 0x0

    .local v1, ret:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, token:J
    iget-object v4, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v4, v0}, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;->clearObjectsFromWhiteList(I)Z

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    iget-object v4, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v4, v0}, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;->isPolicyActive(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->applyProfilePolicy()V

    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1
.end method

.method public getAllBluetoothDevicesBlackLists()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/BluetoothControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v3, "BluetoothPolicyService"

    const-string v4, "getAllDevicesBlackLists"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->enforceBluetoothPermission()I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .local v1, token:J
    iget-object v3, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v3}, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;->getAllObjectsFromBlackListForAllAdmins()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/BluetoothPolicy;->translateList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .local v0, list:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/BluetoothControlInfo;>;"
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0
.end method

.method public getAllBluetoothDevicesWhiteLists()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/BluetoothControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v3, "BluetoothPolicyService"

    const-string v4, "getAllDevicesWhiteLists"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->enforceBluetoothPermission()I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .local v1, token:J
    iget-object v3, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v3}, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;->getAllObjectsFromWhiteListForAllAdmins()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/BluetoothPolicy;->translateList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .local v0, list:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/BluetoothControlInfo;>;"
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0
.end method

.method public getAllBluetoothUUIDsBlackLists()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/BluetoothControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v3, "BluetoothPolicyService"

    const-string v4, "getAllProfilesBlackLists"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->enforceBluetoothPermission()I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .local v1, token:J
    iget-object v3, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v3}, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;->getAllObjectsFromBlackListForAllAdmins()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/BluetoothPolicy;->translateList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .local v0, list:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/BluetoothControlInfo;>;"
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0
.end method

.method public getAllBluetoothUUIDsWhiteLists()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/BluetoothControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v3, "BluetoothPolicyService"

    const-string v4, "getAllProfilesWhiteLists"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->enforceBluetoothPermission()I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .local v1, token:J
    iget-object v3, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v3}, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;->getAllObjectsFromWhiteListForAllAdmins()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/BluetoothPolicy;->translateList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .local v0, list:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/BluetoothControlInfo;>;"
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0
.end method

.method public getAllowBluetoothDataTransfer()Z
    .locals 7

    .prologue
    const-string v4, "BluetoothPolicyService"

    const-string v5, "getBluetoothDataTransferAllowed "

    invoke-static {v4, v5}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "BLUETOOTH"

    const-string v6, "allowDataTransfer"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .local v2, value:Z
    if-nez v2, :cond_0

    move v1, v2

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #value:Z
    :cond_1
    return v1
.end method

.method public getBluetoothLog()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v6, "BluetoothPolicyService"

    const-string v7, "getBluetoothLog()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->enforceBluetoothPermission()I

    const/4 v6, 0x2

    new-array v0, v6, [Ljava/lang/String;

    .local v0, columns:[Ljava/lang/String;
    const/4 v6, 0x0

    const-string v7, "time"

    aput-object v7, v0, v6

    const/4 v6, 0x1

    const-string v7, "log"

    aput-object v7, v0, v6

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .local v5, reportList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "BluetoothLogTable"

    invoke-virtual {v6, v7, v0}, Lcom/android/server/enterprise/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .local v2, cvList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    if-nez v2, :cond_0

    const-string v6, "BluetoothPolicyService"

    const-string v7, "getBluetoothLog - cvList is null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    .end local v5           #reportList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    return-object v5

    .restart local v5       #reportList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    const-string v6, "BluetoothPolicyService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getBluetoothLog() - cvList: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .local v1, cv:Landroid/content/ContentValues;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #cv:Landroid/content/ContentValues;
    check-cast v1, Landroid/content/ContentValues;

    .restart local v1       #cv:Landroid/content/ContentValues;
    const-string v6, "time"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, report:Ljava/lang/String;
    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "log"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v6, "BluetoothPolicyService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getBluetoothLog() - report: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v4           #report:Ljava/lang/String;
    :cond_1
    const-string v6, "BluetoothPolicyService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getBluetoothLog() - reportList: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getEffectiveBluetoothDevicesBlackLists()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v3, "BluetoothPolicyService"

    const-string v4, "getEffectiveBluetoothDevicesBlackLists"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->enforceBluetoothPermission()I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .local v1, token:J
    iget-object v3, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v3}, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;->getEffectiveBlackList()Ljava/util/List;

    move-result-object v0

    .local v0, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0
.end method

.method public getEffectiveBluetoothDevicesWhiteLists()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v3, "BluetoothPolicyService"

    const-string v4, "getEffectiveBluetoothDevicesWhiteLists"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->enforceBluetoothPermission()I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .local v1, token:J
    iget-object v3, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v3}, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;->getEffectiveWhiteList()Ljava/util/List;

    move-result-object v0

    .local v0, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0
.end method

.method public getEffectiveBluetoothUUIDsBlackLists()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v3, "BluetoothPolicyService"

    const-string v4, "getEffectiveBluetoothUUIDsBlackLists"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->enforceBluetoothPermission()I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .local v1, token:J
    iget-object v3, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v3}, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;->getEffectiveBlackList()Ljava/util/List;

    move-result-object v0

    .local v0, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0
.end method

.method public getEffectiveBluetoothUUIDsWhiteLists()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v3, "BluetoothPolicyService"

    const-string v4, "getEffectiveBluetoothUUIDsWhiteLists"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->enforceBluetoothPermission()I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .local v1, token:J
    iget-object v3, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v3}, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;->getEffectiveWhiteList()Ljava/util/List;

    move-result-object v0

    .local v0, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0
.end method

.method getProfileFromUUID(Ljava/lang/String;)I
    .locals 5
    .parameter "profileUUID"

    .prologue
    iget-object v4, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, profileItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .local v2, profile:Ljava/lang/Integer;
    iget-object v4, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .local v0, UUIDs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .end local v0           #UUIDs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v1           #i:I
    .end local v2           #profile:Ljava/lang/Integer;
    :goto_1
    return v4

    .restart local v0       #UUIDs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1       #i:I
    .restart local v2       #profile:Ljava/lang/Integer;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #UUIDs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v1           #i:I
    .end local v2           #profile:Ljava/lang/Integer;
    :cond_2
    const/4 v4, -0x1

    goto :goto_1
.end method

.method public isBluetoothDeviceAllowed(Ljava/lang/String;)Z
    .locals 1
    .parameter "deviceAddress"

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;->isObjectAllowed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isBluetoothDeviceRestrictionActive()Z
    .locals 6

    .prologue
    const-string v4, "BluetoothPolicyService"

    const-string v5, "isBluetoothDeviceRestrictionActive"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->enforceBluetoothPermission()I

    move-result v0

    .local v0, adminUid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, token:J
    iget-object v4, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v4, v0}, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;->isPolicyActive(I)Z

    move-result v1

    .local v1, ret:Z
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1
.end method

.method public isBluetoothEnabled()Z
    .locals 7

    .prologue
    const-string v4, "BluetoothPolicyService"

    const-string v5, "isBluetoothEnabled "

    invoke-static {v4, v5}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "BLUETOOTH"

    const-string v6, "bluetoothEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .local v2, value:Z
    if-nez v2, :cond_0

    move v1, v2

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #value:Z
    :cond_1
    return v1
.end method

.method public isBluetoothLogEnabled()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->isCacheUpdated:Z

    if-nez v0, :cond_0

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/BluetoothPolicy;->getBluetoothLogEnabled(Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mCacheIsBluetoothLogEnabled:Z

    iput-boolean v1, p0, Lcom/android/server/enterprise/BluetoothPolicy;->isCacheUpdated:Z

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mCacheIsBluetoothLogEnabled:Z

    return v0
.end method

.method public isBluetoothUUIDAllowed(Ljava/lang/String;)Z
    .locals 1
    .parameter "profileUUID"

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;->isObjectAllowed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isBluetoothUUIDAllowedInternal(Ljava/lang/String;)Z
    .locals 3
    .parameter "profileUUID"

    .prologue
    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/BluetoothPolicy;->isBluetoothUUIDAllowed(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/BluetoothPolicy;->getProfileFromUUID(Ljava/lang/String;)I

    move-result v0

    .local v0, profile:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/BluetoothPolicy;->isProfileEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isBluetoothUUIDRestrictionActive()Z
    .locals 6

    .prologue
    const-string v4, "BluetoothPolicyService"

    const-string v5, "isBluetoothUUIDRestrictionActive"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->enforceBluetoothPermission()I

    move-result v0

    .local v0, adminUid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, token:J
    iget-object v4, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v4, v0}, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;->isPolicyActive(I)Z

    move-result v1

    .local v1, ret:Z
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1
.end method

.method public isDesktopConnectivityEnabled()Z
    .locals 7

    .prologue
    const-string v4, "BluetoothPolicyService"

    const-string v5, "isLimitedDiscoverableEnabled "

    invoke-static {v4, v5}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "BLUETOOTH"

    const-string v6, "desktopConnectivityEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .local v2, value:Z
    if-nez v2, :cond_0

    move v1, v2

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #value:Z
    :cond_1
    return v1
.end method

.method public isDiscoverableEnabled()Z
    .locals 7

    .prologue
    const-string v4, "BluetoothPolicyService"

    const-string v5, "isDiscoverableEnabled "

    invoke-static {v4, v5}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "BLUETOOTH"

    const-string v6, "discoverableModeEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .local v2, value:Z
    if-nez v2, :cond_0

    move v1, v2

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #value:Z
    :cond_1
    const-string v4, "BluetoothPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isDiscoverableEnabled ret:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public isLimitedDiscoverableEnabled()Z
    .locals 7

    .prologue
    const-string v4, "BluetoothPolicyService"

    const-string v5, "isLimitedDiscoverableEnabled "

    invoke-static {v4, v5}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "BLUETOOTH"

    const-string v6, "limitedDiscoverableEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .local v2, value:Z
    if-nez v2, :cond_0

    move v1, v2

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #value:Z
    :cond_1
    const-string v4, "BluetoothPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isLimitedDiscoverableEnabled ret:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public isOutgoingCallsAllowed()Z
    .locals 7

    .prologue
    const-string v4, "BluetoothPolicyService"

    const-string v5, "isPairingEnabled "

    invoke-static {v4, v5}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "BLUETOOTH"

    const-string v6, "allowOutgoingCalls"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .local v2, value:Z
    if-nez v2, :cond_0

    move v1, v2

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #value:Z
    :cond_1
    return v1
.end method

.method public isPairingEnabled()Z
    .locals 7

    .prologue
    const-string v4, "BluetoothPolicyService"

    const-string v5, "isPairingEnabled "

    invoke-static {v4, v5}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "BLUETOOTH"

    const-string v6, "pairingEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .local v2, value:Z
    if-nez v2, :cond_0

    move v1, v2

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #value:Z
    :cond_1
    return v1
.end method

.method public isProfileEnabled(I)Z
    .locals 8
    .parameter "profile"

    .prologue
    const/4 v2, 0x1

    .local v2, lEnabled:Z
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "BLUETOOTH"

    const-string v7, "profileSettings"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .local v4, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .local v3, value:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ltz v5, :cond_0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    and-int/2addr v5, p1

    if-eq p1, v5, :cond_0

    const/4 v2, 0x0

    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #value:Ljava/lang/Integer;
    .end local v4           #values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1
    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v5, "BluetoothPolicyService"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isProfileEnabledInternal(I)Z
    .locals 7
    .parameter "profile"

    .prologue
    const/4 v3, 0x0

    .local v3, lEnabled:Z
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/BluetoothPolicy;->isProfileEnabled(I)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_0
    iget-object v4, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .local v0, UUIDs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/BluetoothPolicy;->isBluetoothUUIDAllowed(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const-string v4, "BluetoothPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MDM: isProfileEnabled = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v3

    goto :goto_0

    .end local v0           #UUIDs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v2           #i:I
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    const-string v4, "BluetoothPolicyService"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    goto :goto_0
.end method

.method public onAdminAdded(I)V
    .locals 0
    .parameter "uid"

    .prologue
    return-void
.end method

.method onAdminRemoved()V
    .locals 3

    .prologue
    const-string v1, "avrcpBlocked"

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/BluetoothPolicy;->isProfileEnabledInternal(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0"

    :goto_0
    const-string v2, "/data/system/enterprise.conf"

    invoke-static {v1, v0, v2}, Lcom/android/server/enterprise/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->isCacheUpdated:Z

    iget-object v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mLogQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    return-void

    :cond_0
    const-string v0, "1"

    goto :goto_0
.end method

.method public onAdminRemoved(I)V
    .locals 3
    .parameter "uid"

    .prologue
    const-string v0, "BluetoothPolicyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdminRemoved - uid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;->reload()Z

    iget-object v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;->reload()Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->isCacheUpdated:Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/BluetoothPolicy;->getBluetoothLogEnabled(Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "BluetoothPolicyService"

    const-string v1, "onAdminRemoved - Clean log"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v1, "BluetoothLogTable"

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/EdmStorageProvider;->remove(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0
    .parameter "uid"

    .prologue
    return-void
.end method

.method public removeBluetoothDevicesFromBlackList(Ljava/util/List;)Z
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, devices:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v4, "BluetoothPolicyService"

    const-string v5, "removeDevicesFromBlackList"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->enforceBluetoothPermission()I

    move-result v0

    .local v0, adminUid:I
    const/4 v1, 0x0

    .local v1, ret:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, token:J
    iget-object v4, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v4, v0, p1}, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;->removeObjectsFromBlackList(ILjava/util/List;)Z

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    iget-object v4, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v4, v0}, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;->isPolicyActive(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->applyDevicePolicy()V

    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1
.end method

.method public removeBluetoothDevicesFromWhiteList(Ljava/util/List;)Z
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, devices:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v4, "BluetoothPolicyService"

    const-string v5, "removeDevicesFromWhiteList"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->enforceBluetoothPermission()I

    move-result v0

    .local v0, adminUid:I
    const/4 v1, 0x0

    .local v1, ret:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, token:J
    iget-object v4, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v4, v0, p1}, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;->removeObjectsFromWhiteList(ILjava/util/List;)Z

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    iget-object v4, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v4, v0}, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;->isPolicyActive(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->applyDevicePolicy()V

    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1
.end method

.method public removeBluetoothUUIDsFromBlackList(Ljava/util/List;)Z
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, profileUUIDs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v4, "BluetoothPolicyService"

    const-string v5, "removeProfilesFromBlackList"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->enforceBluetoothPermission()I

    move-result v0

    .local v0, adminUid:I
    const/4 v1, 0x0

    .local v1, ret:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, token:J
    iget-object v4, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v4, v0, p1}, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;->removeObjectsFromBlackList(ILjava/util/List;)Z

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    iget-object v4, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v4, v0}, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;->isPolicyActive(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->applyProfilePolicy()V

    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1
.end method

.method public removeBluetoothUUIDsFromWhiteList(Ljava/util/List;)Z
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, profileUUIDs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v4, "BluetoothPolicyService"

    const-string v5, "removeProfilesFromWhiteList"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->enforceBluetoothPermission()I

    move-result v0

    .local v0, adminUid:I
    const/4 v1, 0x0

    .local v1, ret:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, token:J
    iget-object v4, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v4, v0, p1}, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;->removeObjectsFromWhiteList(ILjava/util/List;)Z

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    iget-object v4, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v4, v0}, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;->isPolicyActive(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->applyProfilePolicy()V

    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1
.end method

.method public setAllowBluetoothDataTransfer(Z)Z
    .locals 4
    .parameter "enable"

    .prologue
    const-string v1, "BluetoothPolicyService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBluetoothDataTransferAllowed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->enforceBluetoothPermission()I

    move-result v0

    .local v0, adminUid:I
    iget-object v1, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "BLUETOOTH"

    const-string v3, "allowDataTransfer"

    invoke-virtual {v1, v0, v2, v3, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public setBluetooth(Z)Z
    .locals 9
    .parameter "enable"

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->enforceBluetoothPermission()I

    move-result v0

    .local v0, adminUid:I
    const/4 v3, 0x1

    .local v3, success:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .local v4, token:J
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "BLUETOOTH"

    const-string v8, "bluetoothEnabled"

    invoke-virtual {v6, v0, v7, v8, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    const-string v6, "BluetoothPolicyService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setBluetooth : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .local v1, ba:Landroid/bluetooth/BluetoothAdapter;
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->isBluetoothEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->enable()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #ba:Landroid/bluetooth/BluetoothAdapter;
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    .restart local v1       #ba:Landroid/bluetooth/BluetoothAdapter;
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->disable()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .end local v1           #ba:Landroid/bluetooth/BluetoothAdapter;
    :catch_0
    move-exception v2

    .local v2, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    :try_start_2
    const-string v6, "BluetoothPolicyService"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method public setBluetoothLogEnabled(Z)Z
    .locals 6
    .parameter "enable"

    .prologue
    const-string v3, "BluetoothPolicyService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setBluetoothLogEnabled("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->enforceBluetoothPermission()I

    move-result v2

    .local v2, uid:I
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .local v0, cv:Landroid/content/ContentValues;
    const-string v3, "bluetoothLogEnabled"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v4, "BLUETOOTH"

    invoke-virtual {v3, v2, v4, v0}, Lcom/android/server/enterprise/EdmStorageProvider;->putValues(ILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result v1

    .local v1, ret:Z
    if-nez p1, :cond_0

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/BluetoothPolicy;->getBluetoothLogEnabled(Z)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "BluetoothPolicyService"

    const-string v4, "setBluetoothLogEnabled - Clean log"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v4, "BluetoothLogTable"

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/EdmStorageProvider;->remove(Ljava/lang/String;)Z

    iget-object v3, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mLogQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->clear()V

    :cond_0
    const-string v3, "BluetoothPolicyService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setBluetoothLogEnabled - return = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/enterprise/BluetoothPolicy;->isCacheUpdated:Z

    :cond_1
    return v1
.end method

.method public setDesktopConnectivityState(Z)Z
    .locals 12
    .parameter "enable"

    .prologue
    const-string v9, "BluetoothPolicyService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setDesktopConnectivityState = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->enforceBluetoothPermission()I

    move-result v0

    .local v0, adminUid:I
    const/4 v6, 0x0

    .local v6, ret:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .local v7, token:J
    :try_start_0
    iget-object v9, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v10, "BLUETOOTH"

    const-string v11, "desktopConnectivityEnabled"

    invoke-virtual {v9, v0, v10, v11, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .local v1, ba:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v6, :cond_1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_1

    if-nez p1, :cond_1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v2

    .local v2, btSet:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, itr:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .local v3, device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v9

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v9

    const/16 v10, 0x100

    if-ne v9, v10, :cond_0

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->removeBond()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v1           #ba:Landroid/bluetooth/BluetoothAdapter;
    .end local v2           #btSet:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v3           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v5           #itr:Ljava/util/Iterator;
    :catch_0
    move-exception v4

    .local v4, e:Ljava/lang/Exception;
    const-string v9, "BluetoothPolicyService"

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v4           #e:Ljava/lang/Exception;
    :cond_1
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v6
.end method

.method public setDiscoverableState(Z)Z
    .locals 9
    .parameter "enable"

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->enforceBluetoothPermission()I

    move-result v0

    .local v0, adminUid:I
    const/4 v3, 0x0

    .local v3, success:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .local v4, token:J
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "BLUETOOTH"

    const-string v8, "discoverableModeEnabled"

    invoke-virtual {v6, v0, v7, v8, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    const-string v6, "BluetoothPolicyService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setDiscoverableState : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_0

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .local v1, ba:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->isDiscoverableEnabled()Z

    move-result v6

    if-nez v6, :cond_1

    const/16 v6, 0x15

    invoke-virtual {v1, v6}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #ba:Landroid/bluetooth/BluetoothAdapter;
    :cond_0
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    .restart local v1       #ba:Landroid/bluetooth/BluetoothAdapter;
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->isLimitedDiscoverableEnabled()Z

    move-result v6

    if-nez v6, :cond_0

    const/16 v6, 0x17

    invoke-virtual {v1, v6}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/bluetooth/BluetoothAdapter;->setDiscoverableTimeout(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .end local v1           #ba:Landroid/bluetooth/BluetoothAdapter;
    :catch_0
    move-exception v2

    .local v2, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    const-string v6, "BluetoothPolicyService"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setLimitedDiscoverableState(Z)Z
    .locals 10
    .parameter "enable"

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->enforceBluetoothPermission()I

    move-result v0

    .local v0, adminUid:I
    const/4 v3, 0x0

    .local v3, success:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .local v5, token:J
    :try_start_0
    iget-object v7, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v8, "BLUETOOTH"

    const-string v9, "limitedDiscoverableEnabled"

    invoke-virtual {v7, v0, v8, v9, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    const-string v7, "BluetoothPolicyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setLimitedDiscoverableState : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_0

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .local v1, ba:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->isLimitedDiscoverableEnabled()Z

    move-result v7

    if-nez v7, :cond_1

    const/16 v7, 0x17

    invoke-virtual {v1, v7}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/bluetooth/BluetoothAdapter;->setDiscoverableTimeout(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #ba:Landroid/bluetooth/BluetoothAdapter;
    :cond_0
    :goto_0
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    .restart local v1       #ba:Landroid/bluetooth/BluetoothAdapter;
    :cond_1
    :try_start_1
    const-string v7, "debug.bt.discoverable_time"

    const/4 v8, -0x1

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    .local v4, timeout:I
    const/16 v7, 0x15

    invoke-virtual {v1, v7}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z

    const-string v7, "BluetoothPolicyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Default discoverable_time : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz v4, :cond_2

    .end local v4           #timeout:I
    :goto_1
    invoke-virtual {v1, v4}, Landroid/bluetooth/BluetoothAdapter;->setDiscoverableTimeout(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .end local v1           #ba:Landroid/bluetooth/BluetoothAdapter;
    :catch_0
    move-exception v2

    .local v2, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    const-string v7, "BluetoothPolicyService"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #ba:Landroid/bluetooth/BluetoothAdapter;
    .restart local v4       #timeout:I
    :cond_2
    const/16 v4, 0x78

    goto :goto_1
.end method

.method public setPairingState(Z)Z
    .locals 4
    .parameter "enable"

    .prologue
    const-string v1, "BluetoothPolicyService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBluetoothDataTransferAllowed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->enforceBluetoothPermission()I

    move-result v0

    .local v0, adminUid:I
    iget-object v1, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "BLUETOOTH"

    const-string v3, "pairingEnabled"

    invoke-virtual {v1, v0, v2, v3, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public setProfileState(ZI)Z
    .locals 9
    .parameter "enable"
    .parameter "profile"

    .prologue
    const-string v6, "BluetoothPolicyService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setProfileState = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " state "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->enforceBluetoothPermission()I

    move-result v0

    .local v0, callingUid:I
    const/4 v3, 0x0

    .local v3, success:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .local v4, token:J
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "BLUETOOTH"

    const-string v8, "profileSettings"

    invoke-virtual {v6, v0, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/server/enterprise/EdmStorageProvider$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .local v2, lValue:I
    :goto_0
    const/4 v6, 0x1

    if-ne v6, p1, :cond_0

    or-int/2addr v2, p2

    :goto_1
    :try_start_1
    iget-object v6, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "BLUETOOTH"

    const-string v8, "profileSettings"

    invoke-virtual {v6, v0, v7, v8, v2}, Lcom/android/server/enterprise/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    invoke-direct {p0}, Lcom/android/server/enterprise/BluetoothPolicy;->applyProfilePolicy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v2           #lValue:I
    :goto_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :catch_0
    move-exception v1

    .local v1, e:Lcom/android/server/enterprise/EdmStorageProvider$SettingNotFoundException;
    const v2, 0xffff

    .restart local v2       #lValue:I
    goto :goto_0

    .end local v1           #e:Lcom/android/server/enterprise/EdmStorageProvider$SettingNotFoundException;
    :cond_0
    xor-int/lit8 v6, p2, -0x1

    and-int/2addr v2, v6

    goto :goto_1

    .end local v2           #lValue:I
    :catch_1
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    const-string v6, "BluetoothPolicyService"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public systemReady()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;->reload()Z

    iget-object v0, p0, Lcom/android/server/enterprise/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothDevicePolicy;->reload()Z

    return-void
.end method

.method public translateList(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/ControlInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/BluetoothControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, clist:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/ControlInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, list:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/BluetoothControlInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/enterprise/ControlInfo;

    .local v3, obj:Landroid/app/enterprise/ControlInfo;
    iget-object v4, v3, Landroid/app/enterprise/ControlInfo;->entries:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, v3, Landroid/app/enterprise/ControlInfo;->entries:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v1, Landroid/app/enterprise/BluetoothControlInfo;

    invoke-direct {v1}, Landroid/app/enterprise/BluetoothControlInfo;-><init>()V

    .local v1, info:Landroid/app/enterprise/BluetoothControlInfo;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v1, Landroid/app/enterprise/BluetoothControlInfo;->entries:Ljava/util/List;

    iget-object v4, v3, Landroid/app/enterprise/ControlInfo;->adminPackageName:Ljava/lang/String;

    iput-object v4, v1, Landroid/app/enterprise/BluetoothControlInfo;->adminPackageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/app/enterprise/BluetoothControlInfo;->entries:Ljava/util/List;

    iget-object v5, v3, Landroid/app/enterprise/ControlInfo;->entries:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v1           #info:Landroid/app/enterprise/BluetoothControlInfo;
    .end local v3           #obj:Landroid/app/enterprise/ControlInfo;
    :cond_1
    return-object v2
.end method
