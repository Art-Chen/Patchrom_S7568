.class public Lcom/android/server/enterprise/kioskmode/KioskModeService;
.super Landroid/app/enterprise/kioskmode/IKioskMode$Stub;
.source "KioskModeService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;,
        Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;
    }
.end annotation


# static fields
.field private static final DEFAULT_APK_NAME:Ljava/lang/String; = "kioskdefault.apk"

.field private static final DEFAULT_ASSET_PATH:Ljava/lang/String; = "kioskmode/kioskdefault.apk"

.field private static final DEFAULT_KIOSK_PKG:Ljava/lang/String; = "com.sec.android.kiosk"

.field private static final DISABLE_KIOSK_MODE:I = 0x2

.field private static final ENABLE_KIOSK_MODE:I = 0x1

.field private static final FORCE_TERMINATE_KIOSK_MODE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "KioskModeService"

.field private static final TERMINATE_KIOSK_ACTION:Ljava/lang/String; = "android.intent.action.enterprise.TERMINATE_KIOSK"

.field private static mLock:Ljava/lang/Object;

.field private static volatile packageRemoveIntentReceiver:Landroid/content/BroadcastReceiver;

.field private static volatile terminateIntentReceiver:Landroid/content/BroadcastReceiver;


# instance fields
.field private mAppPolicy:Lcom/android/server/enterprise/ApplicationPolicy;

.field private mAvailableKeyCodesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCache:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;

.field private final mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private final mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

.field private final mHandler:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private preAdminRemoval_SystemBar:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->packageRemoveIntentReceiver:Landroid/content/BroadcastReceiver;

    sput-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->terminateIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/enterprise/kioskmode/IKioskMode$Stub;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAppPolicy:Lcom/android/server/enterprise/ApplicationPolicy;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->preAdminRemoval_SystemBar:Z

    new-instance v0, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;-><init>(Lcom/android/server/enterprise/kioskmode/KioskModeService;Lcom/android/server/enterprise/kioskmode/KioskModeService$1;)V

    iput-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mCache:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAvailableKeyCodesList:Ljava/util/List;

    iput-object p1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/enterprise/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mPm:Landroid/content/pm/PackageManager;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "KioskModeService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;

    iget-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;-><init>(Lcom/android/server/enterprise/kioskmode/KioskModeService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mHandler:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;

    sget-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mLock:Ljava/lang/Object;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mLock:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private _disableKioskMode(II)V
    .locals 6
    .parameter "adminUid"
    .parameter "operation"

    .prologue
    sget-object v3, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    const-string v2, "KioskModeService"

    const-string v4, "_disableKioskMode"

    invoke-static {v2, v4}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isKioskModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getActiveKioskAdmin()I

    move-result v2

    if-eq v2, p1, :cond_1

    const-string v2, "KioskModeService"

    const-string v4, "Kiosk Mode enabled by different admin"

    invoke-static {v2, v4}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x2

    invoke-direct {p0, p2, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->broadcastKioskResult(II)V

    monitor-exit v3

    :goto_0
    return-void

    :cond_0
    const-string v2, "KioskModeService"

    const-string v4, "Kiosk Mode already disabled"

    invoke-static {v2, v4}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-direct {p0, p2, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->broadcastKioskResult(II)V

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->unregisterTerminationReceiver()V

    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->unregisterPackageRemoveReceiver()V

    iget-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v4, "KIOSKMODE"

    const-string v5, "kioskModeKioskPackage"

    invoke-virtual {v2, p1, v4, v5}, Lcom/android/server/enterprise/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, kioskPackage:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v4, "KIOSKMODE"

    const-string v5, "kioskModeDefaultPackage"

    invoke-virtual {v2, p1, v4, v5}, Lcom/android/server/enterprise/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, newHomePackage:Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, p1, v2, v4, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->updateDB(IZLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->setDefaultHomeScreen(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->cleanUpKioskMode(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->wipeRecentTasks()Z

    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->launchHomeActivity()V

    const/4 v2, 0x0

    invoke-direct {p0, p2, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->broadcastKioskResult(II)V

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private _enableKioskMode(ILjava/lang/String;)V
    .locals 12
    .parameter "adminUid"
    .parameter "kioskPackage"

    .prologue
    sget-object v10, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_0
    const-string v9, "KioskModeService"

    const-string v11, "_enableKioskMode"

    invoke-static {v9, v11}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isKioskModeEnabled()Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "KioskModeService"

    const-string v11, "Kiosk Mode already enabled"

    invoke-static {v9, v11}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x1

    const/4 v11, -0x1

    invoke-direct {p0, v9, v11}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->broadcastKioskResult(II)V

    monitor-exit v10

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getDefaultHomeScreen()Ljava/lang/String;

    move-result-object v1

    .local v1, currentHomePackage:Ljava/lang/String;
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->initKioskMode(ILjava/lang/String;)I

    move-result v6

    .local v6, result:I
    if-eqz v6, :cond_1

    const-string v9, "KioskModeService"

    const-string v11, "Kiosk Mode App not validated"

    invoke-static {v9, v11}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x1

    invoke-direct {p0, v9, v6}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->broadcastKioskResult(II)V

    monitor-exit v10

    goto :goto_0

    .end local v1           #currentHomePackage:Ljava/lang/String;
    .end local v6           #result:I
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .restart local v1       #currentHomePackage:Ljava/lang/String;
    .restart local v6       #result:I
    :cond_1
    :try_start_1
    invoke-direct {p0, v1, p2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->setDefaultHomeScreen(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "KioskModeService"

    const-string v11, "Cannot find HOME activity"

    invoke-static {v9, v11}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->cleanUpKioskMode(ILjava/lang/String;)V

    const/4 v9, 0x1

    const/16 v11, -0x7d0

    invoke-direct {p0, v9, v11}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->broadcastKioskResult(II)V

    monitor-exit v10

    goto :goto_0

    :cond_2
    const/4 v9, 0x1

    invoke-direct {p0, p1, v9, p2, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->updateDB(IZLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->launchHomeActivity()V

    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->registerPackageRemoveReceiver()V

    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->registerTerminationReceiver()V

    iget-object v9, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    const-string v11, "activity"

    invoke-virtual {v9, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .local v0, am:Landroid/app/ActivityManager;
    const/4 v2, 0x0

    .local v2, flag:Z
    const/16 v7, 0x64

    .local v7, timeoutCount:I
    move v8, v7

    .end local v7           #timeoutCount:I
    .local v8, timeoutCount:I
    :goto_1
    if-eqz v2, :cond_6

    add-int/lit8 v7, v8, -0x1

    .end local v8           #timeoutCount:I
    .restart local v7       #timeoutCount:I
    if-lez v8, :cond_5

    :goto_2
    const/16 v9, 0xa

    const/4 v11, 0x0

    invoke-virtual {v0, v9, v11}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v5

    .local v5, recentTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-ge v3, v9, :cond_3

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v9, v9, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .local v4, packageName:Ljava/lang/String;
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v2, 0x1

    .end local v4           #packageName:Ljava/lang/String;
    :cond_3
    move v8, v7

    .end local v7           #timeoutCount:I
    .restart local v8       #timeoutCount:I
    goto :goto_1

    .end local v8           #timeoutCount:I
    .restart local v4       #packageName:Ljava/lang/String;
    .restart local v7       #timeoutCount:I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .end local v3           #i:I
    .end local v4           #packageName:Ljava/lang/String;
    .end local v5           #recentTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->wipeRecentTasks()Z

    const/4 v9, 0x1

    const/4 v11, 0x0

    invoke-direct {p0, v9, v11}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->broadcastKioskResult(II)V

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .end local v7           #timeoutCount:I
    .restart local v8       #timeoutCount:I
    :cond_6
    move v7, v8

    .end local v8           #timeoutCount:I
    .restart local v7       #timeoutCount:I
    goto :goto_2
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/kioskmode/KioskModeService;ILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->_enableKioskMode(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/kioskmode/KioskModeService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->_disableKioskMode(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/kioskmode/KioskModeService;)Lcom/android/server/enterprise/ApplicationPolicy;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getApplicationPolicy()Lcom/android/server/enterprise/ApplicationPolicy;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/kioskmode/KioskModeService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getDefaultHomeScreen()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/kioskmode/KioskModeService;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->forceTerminateKiosk()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/enterprise/kioskmode/KioskModeService;)Ljava/util/Set;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getAllBlockedList()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private addToBlocked(ILjava/lang/String;)Z
    .locals 3
    .parameter "callingUid"
    .parameter "hwKey"

    .prologue
    const/4 v1, 0x1

    .local v1, ret:Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getBlockedList(I)Ljava/util/Set;

    move-result-object v0

    .local v0, list:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->saveBlockedList(ILjava/util/Set;)Z

    move-result v1

    :cond_0
    return v1
.end method

.method private applyHideSystemBarPolicy()V
    .locals 4

    .prologue
    :try_start_0
    const-string v2, "statusbar"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .local v1, statusBarService:Lcom/android/internal/statusbar/IStatusBarService;
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->applyEDMPolicy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #statusBarService:Lcom/android/internal/statusbar/IStatusBarService;
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v2, "KioskModeService"

    const-string v3, "applyEDMPolicy failed"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private broadcastKioskResult(II)V
    .locals 5
    .parameter "operation"
    .parameter "result"

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getActiveKioskAdmin()I

    move-result v1

    .local v1, adminUid:I
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .local v0, adminPackage:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "edm.intent.action.enable.kiosk.mode.result"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v2, intent:Landroid/content/Intent;
    const-string v3, "edm.intent.extra.kiosk.mode.result"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.sec.MDM_KIOSK_MODE"

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .end local v2           #intent:Landroid/content/Intent;
    :pswitch_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "edm.intent.action.disable.kiosk.mode.result"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v2       #intent:Landroid/content/Intent;
    const-string v3, "edm.intent.extra.kiosk.mode.result"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.sec.MDM_KIOSK_MODE"

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .end local v2           #intent:Landroid/content/Intent;
    :pswitch_2
    new-instance v2, Landroid/content/Intent;

    const-string v3, "edm.intent.action.unexpected.kiosk.behavior"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v2       #intent:Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.sec.MDM_KIOSK_MODE"

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private cleanUpKioskMode(ILjava/lang/String;)V
    .locals 3
    .parameter "adminUid"
    .parameter "kioskPackage"

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getApplicationPolicy()Lcom/android/server/enterprise/ApplicationPolicy;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v2}, Lcom/android/server/enterprise/ApplicationPolicy;->setApplicationUninstallationDisabledBySystem(ILjava/lang/String;Z)V

    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getApplicationPolicy()Lcom/android/server/enterprise/ApplicationPolicy;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v2}, Lcom/android/server/enterprise/ApplicationPolicy;->setApplicationInstallationDisabledBySystem(ILjava/lang/String;Z)V

    const-string v0, "com.sec.android.kiosk"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getApplicationPolicy()Lcom/android/server/enterprise/ApplicationPolicy;

    move-result-object v0

    const-string v1, "com.sec.android.kiosk"

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/enterprise/ApplicationPolicy;->uninstallApplicationBySystem(ILjava/lang/String;Z)Z

    :cond_0
    return-void
.end method

.method private copyAssets(Ljava/io/File;)Z
    .locals 12
    .parameter "apkPath"

    .prologue
    const/4 v8, 0x0

    const/4 v10, -0x1

    const/4 v3, 0x0

    .local v3, in:Ljava/io/InputStream;
    const/4 v5, 0x0

    .local v5, out:Ljava/io/OutputStream;
    :try_start_0
    iget-object v9, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .local v0, assetManager:Landroid/content/res/AssetManager;
    const-string v9, "kioskmode/kioskdefault.apk"

    invoke-virtual {v0, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .end local v5           #out:Ljava/io/OutputStream;
    .local v6, out:Ljava/io/OutputStream;
    const/16 v9, 0x400

    :try_start_1
    new-array v1, v9, [B

    .local v1, buffer:[B
    :goto_0
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .local v7, read:I
    if-eq v7, v10, :cond_2

    const/4 v9, 0x0

    invoke-virtual {v6, v1, v9, v7}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .end local v1           #buffer:[B
    .end local v7           #read:I
    :catch_0
    move-exception v2

    move-object v5, v6

    .end local v0           #assetManager:Landroid/content/res/AssetManager;
    .end local v6           #out:Ljava/io/OutputStream;
    .local v2, e:Ljava/io/IOException;
    .restart local v5       #out:Ljava/io/OutputStream;
    :goto_1
    const-string v9, "KioskModeService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    :goto_2
    if-eqz v5, :cond_1

    :try_start_3
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .end local v2           #e:Ljava/io/IOException;
    :cond_1
    :goto_3
    return v8

    .end local v5           #out:Ljava/io/OutputStream;
    .restart local v0       #assetManager:Landroid/content/res/AssetManager;
    .restart local v1       #buffer:[B
    .restart local v6       #out:Ljava/io/OutputStream;
    .restart local v7       #read:I
    :cond_2
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x1b4

    invoke-static {v8, v9, v10, v10}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    const/4 v8, 0x1

    move-object v5, v6

    .end local v6           #out:Ljava/io/OutputStream;
    .restart local v5       #out:Ljava/io/OutputStream;
    goto :goto_3

    .end local v0           #assetManager:Landroid/content/res/AssetManager;
    .end local v1           #buffer:[B
    .end local v7           #read:I
    .restart local v2       #e:Ljava/io/IOException;
    :catch_1
    move-exception v4

    .local v4, ioe:Ljava/io/IOException;
    const-string v9, "KioskModeService"

    const-string v10, "Error closing inputstream"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .end local v4           #ioe:Ljava/io/IOException;
    :catch_2
    move-exception v4

    .restart local v4       #ioe:Ljava/io/IOException;
    const-string v9, "KioskModeService"

    const-string v10, "Error closing outputstream"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #ioe:Ljava/io/IOException;
    :catch_3
    move-exception v2

    goto :goto_1
.end method

.method private enforceKioskModePermission()I
    .locals 2

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_KIOSK_MODE"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private forceTerminateKiosk()V
    .locals 2

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getActiveKioskAdmin()I

    move-result v0

    .local v0, kioskAdminUid:I
    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->_disableKioskMode(II)V

    return-void
.end method

.method private getActiveKioskAdmin()I
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v1, "KIOSKMODE"

    const-string v2, "kioskModeEnabled"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/EdmStorageProvider;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getAllBlockedList()Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v5, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "KIOSKMODE"

    const-string v7, "blockedHwKeyList"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .local v4, var:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .local v3, ret:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, list:Ljava/lang/String;
    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, array:[Ljava/lang/String;
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .end local v0           #array:[Ljava/lang/String;
    .end local v2           #list:Ljava/lang/String;
    :cond_0
    return-object v3
.end method

.method private getApplicationPolicy()Lcom/android/server/enterprise/ApplicationPolicy;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAppPolicy:Lcom/android/server/enterprise/ApplicationPolicy;

    if-nez v0, :cond_0

    const-string v0, "application_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/ApplicationPolicy;

    iput-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAppPolicy:Lcom/android/server/enterprise/ApplicationPolicy;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAppPolicy:Lcom/android/server/enterprise/ApplicationPolicy;

    return-object v0
.end method

.method private getBlockedList(I)Ljava/util/Set;
    .locals 10
    .parameter "callingUid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v7, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v8, "KIOSKMODE"

    const-string v9, "blockedHwKeyList"

    invoke-virtual {v7, p1, v8, v9}, Lcom/android/server/enterprise/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, var:Ljava/lang/String;
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .local v3, l:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v6, :cond_0

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, array:[Ljava/lang/String;
    move-object v0, v1

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v0, v2

    .local v5, s:Ljava/lang/String;
    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #array:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v4           #len$:I
    .end local v5           #s:Ljava/lang/String;
    :cond_0
    return-object v3
.end method

.method private getDefaultHomeScreen()Ljava/lang/String;
    .locals 4

    .prologue
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    .local v0, cName:Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getHomeActivity(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "homePackage"

    .prologue
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, intent:Landroid/content/Intent;
    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mPm:Landroid/content/pm/PackageManager;

    const/high16 v5, 0x1

    invoke-virtual {v4, v1, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .local v2, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .local v3, pkgName:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .end local v3           #pkgName:Ljava/lang/String;
    :goto_1
    return-object v4

    .restart local v3       #pkgName:Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v3           #pkgName:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private getPackageNameForUid(I)Ljava/lang/String;
    .locals 5
    .parameter "uid"

    .prologue
    iget-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "ADMIN"

    const-string v4, "adminName"

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/enterprise/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, pkgName:Ljava/lang/String;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .local v0, compName:Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private initKioskMode(ILjava/lang/String;)I
    .locals 9
    .parameter "adminUid"
    .parameter "kioskPackage"

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    const/16 v4, -0x7d0

    const-string v6, "com.sec.android.kiosk"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v6

    const-string v7, "system/kioskdefault.apk"

    invoke-direct {v1, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v1, apkPath:Ljava/io/File;
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->copyAssets(Ljava/io/File;)Z

    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getApplicationPolicy()Lcom/android/server/enterprise/ApplicationPolicy;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, p1, v7, v5}, Lcom/android/server/enterprise/ApplicationPolicy;->installApplicationBySystem(ILjava/lang/String;Z)Z

    move-result v3

    .local v3, isAppInstalled:Z
    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, apkFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    if-nez v3, :cond_4

    .end local v0           #apkFile:Ljava/io/File;
    .end local v1           #apkPath:Ljava/io/File;
    .end local v3           #isAppInstalled:Z
    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getApplicationPolicy()Lcom/android/server/enterprise/ApplicationPolicy;

    move-result-object v6

    invoke-virtual {v6, p2}, Lcom/android/server/enterprise/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getApplicationPolicy()Lcom/android/server/enterprise/ApplicationPolicy;

    move-result-object v6

    invoke-virtual {v6, p2}, Lcom/android/server/enterprise/ApplicationPolicy;->getApplicationStateEnabled(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    :cond_2
    const/4 v4, -0x3

    goto :goto_0

    :cond_3
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getHomeActivity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, homeActivity:Ljava/lang/String;
    if-eqz v2, :cond_0

    .end local v2           #homeActivity:Ljava/lang/String;
    :cond_4
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getApplicationPolicy()Lcom/android/server/enterprise/ApplicationPolicy;

    move-result-object v4

    invoke-virtual {v4, p1, p2, v8}, Lcom/android/server/enterprise/ApplicationPolicy;->setApplicationUninstallationDisabledBySystem(ILjava/lang/String;Z)V

    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getApplicationPolicy()Lcom/android/server/enterprise/ApplicationPolicy;

    move-result-object v4

    invoke-virtual {v4, p1, p2, v8}, Lcom/android/server/enterprise/ApplicationPolicy;->setApplicationInstallationDisabledBySystem(ILjava/lang/String;Z)V

    move v4, v5

    goto :goto_0
.end method

.method private initializeKeyCodeLists()V
    .locals 7

    .prologue
    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v2

    .local v2, maxKeycode:I
    add-int/lit8 v4, v2, -0x1

    new-array v1, v4, [I

    .local v1, keyCodes:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    add-int/lit8 v4, v2, -0x1

    if-ge v0, v4, :cond_0

    add-int/lit8 v4, v0, 0x1

    aput v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Landroid/view/KeyCharacterMap;->deviceHasKeys([I)[Z

    move-result-object v3

    .local v3, ret:[Z
    if-eqz v3, :cond_3

    iget-object v5, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAvailableKeyCodesList:Ljava/util/List;

    monitor-enter v5

    const/4 v0, 0x0

    :goto_1
    :try_start_0
    array-length v4, v3

    if-ge v0, v4, :cond_2

    aget-boolean v4, v3, v0

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAvailableKeyCodesList:Ljava/util/List;

    add-int/lit8 v6, v0, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    monitor-exit v5

    :cond_3
    return-void

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private isHardwareKeyValid(I)Z
    .locals 2
    .parameter "hwKeyId"

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAvailableKeyCodesList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private launchHomeActivity()V
    .locals 2

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, homeIntent:Landroid/content/Intent;
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private registerPackageRemoveReceiver()V
    .locals 6

    .prologue
    :try_start_0
    sget-object v2, Lcom/android/server/enterprise/kioskmode/KioskModeService;->packageRemoveIntentReceiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    new-instance v2, Lcom/android/server/enterprise/kioskmode/KioskModeService$1;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService$1;-><init>(Lcom/android/server/enterprise/kioskmode/KioskModeService;)V

    sput-object v2, Lcom/android/server/enterprise/kioskmode/KioskModeService;->packageRemoveIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/server/enterprise/kioskmode/KioskModeService;->packageRemoveIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mHandler:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #intentFilter:Landroid/content/IntentFilter;
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v2, "KioskModeService"

    const-string v3, "Cannot register packageRemoveIntentReceiver"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private registerTerminationReceiver()V
    .locals 6

    .prologue
    :try_start_0
    sget-object v2, Lcom/android/server/enterprise/kioskmode/KioskModeService;->terminateIntentReceiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.enterprise.TERMINATE_KIOSK"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v1, intentFilter:Landroid/content/IntentFilter;
    new-instance v2, Lcom/android/server/enterprise/kioskmode/KioskModeService$2;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService$2;-><init>(Lcom/android/server/enterprise/kioskmode/KioskModeService;)V

    sput-object v2, Lcom/android/server/enterprise/kioskmode/KioskModeService;->terminateIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/server/enterprise/kioskmode/KioskModeService;->terminateIntentReceiver:Landroid/content/BroadcastReceiver;

    const-string v4, "android.permission.sec.MDM_KIOSK_MODE_INTERNAL"

    iget-object v5, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mHandler:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #intentFilter:Landroid/content/IntentFilter;
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v2, "KioskModeService"

    const-string v3, "Cannot register terminateIntentReceiver"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private removeFromBlocked(ILjava/lang/String;)Z
    .locals 3
    .parameter "callingUid"
    .parameter "hwKey"

    .prologue
    const/4 v1, 0x1

    .local v1, ret:Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getBlockedList(I)Ljava/util/Set;

    move-result-object v0

    .local v0, list:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->saveBlockedList(ILjava/util/Set;)Z

    move-result v1

    :cond_0
    return v1
.end method

.method private saveBlockedList(ILjava/util/Set;)Z
    .locals 8
    .parameter "callingUid"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, list:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .local v1, ret:Z
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "KIOSKMODE"

    const-string v6, "blockedHwKeyList"

    const/4 v7, 0x0

    invoke-virtual {v4, p1, v5, v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .local v3, sb:Ljava/lang/StringBuilder;
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, s:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .end local v2           #s:Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "KIOSKMODE"

    const-string v6, "blockedHwKeyList"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, p1, v5, v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method private setDefaultHomeScreen(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 15
    .parameter "oldHomePackage"
    .parameter "newHomePackage"

    .prologue
    new-instance v8, Landroid/content/Intent;

    const-string v13, "android.intent.action.MAIN"

    invoke-direct {v8, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v8, intent:Landroid/content/Intent;
    const-string v13, "android.intent.category.HOME"

    invoke-virtual {v8, v13}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v13, "android.intent.category.DEFAULT"

    invoke-virtual {v8, v13}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v5, 0x0

    .local v5, flag:Z
    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getApplicationPolicy()Lcom/android/server/enterprise/ApplicationPolicy;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/android/server/enterprise/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;)Z

    move-result v9

    .local v9, isAppInstalled:Z
    const-string v13, "com.sec.android.kiosk"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    if-eqz v9, :cond_0

    const/4 v5, 0x1

    :cond_0
    iget-object v13, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .end local v9           #isAppInstalled:Z
    :cond_1
    if-eqz p2, :cond_6

    iget-object v13, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mPm:Landroid/content/pm/PackageManager;

    const/high16 v14, 0x1

    invoke-virtual {v13, v8, v14}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v10

    .local v10, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v5, :cond_2

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    add-int/lit8 v12, v13, -0x1

    .local v12, size:I
    :goto_0
    new-array v3, v12, [Landroid/content/ComponentName;

    .local v3, components:[Landroid/content/ComponentName;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    if-ge v7, v12, :cond_4

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ResolveInfo;

    iget-object v13, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .local v11, pkgName:Ljava/lang/String;
    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ResolveInfo;

    iget-object v13, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v13, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .local v1, activity:Ljava/lang/String;
    if-eqz v5, :cond_3

    const-string v13, "com.sec.android.kiosk"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .end local v1           #activity:Ljava/lang/String;
    .end local v3           #components:[Landroid/content/ComponentName;
    .end local v7           #i:I
    .end local v11           #pkgName:Ljava/lang/String;
    .end local v12           #size:I
    :cond_2
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    .restart local v12       #size:I
    goto :goto_0

    .restart local v1       #activity:Ljava/lang/String;
    .restart local v3       #components:[Landroid/content/ComponentName;
    .restart local v7       #i:I
    .restart local v11       #pkgName:Ljava/lang/String;
    :cond_3
    new-instance v13, Landroid/content/ComponentName;

    invoke-direct {v13, v11, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v13, v3, v7

    goto :goto_2

    .end local v1           #activity:Ljava/lang/String;
    .end local v11           #pkgName:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getHomeActivity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, homeActivity:Ljava/lang/String;
    if-nez v6, :cond_5

    const/4 v13, 0x0

    .end local v3           #components:[Landroid/content/ComponentName;
    .end local v6           #homeActivity:Ljava/lang/String;
    .end local v7           #i:I
    .end local v10           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v12           #size:I
    :goto_3
    return v13

    .restart local v3       #components:[Landroid/content/ComponentName;
    .restart local v6       #homeActivity:Ljava/lang/String;
    .restart local v7       #i:I
    .restart local v10       #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v12       #size:I
    :cond_5
    new-instance v2, Landroid/content/ComponentName;

    move-object/from16 v0, p2

    invoke-direct {v2, v0, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v2, component:Landroid/content/ComponentName;
    new-instance v4, Landroid/content/IntentFilter;

    const-string v13, "android.intent.action.MAIN"

    invoke-direct {v4, v13}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v4, filter:Landroid/content/IntentFilter;
    const-string v13, "android.intent.category.HOME"

    invoke-virtual {v4, v13}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v13, "android.intent.category.DEFAULT"

    invoke-virtual {v4, v13}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    iget-object v13, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mPm:Landroid/content/pm/PackageManager;

    const/high16 v14, 0x10

    invoke-virtual {v13, v4, v14, v3, v2}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .end local v2           #component:Landroid/content/ComponentName;
    .end local v3           #components:[Landroid/content/ComponentName;
    .end local v4           #filter:Landroid/content/IntentFilter;
    .end local v6           #homeActivity:Ljava/lang/String;
    .end local v7           #i:I
    .end local v10           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v12           #size:I
    :cond_6
    const/4 v13, 0x1

    goto :goto_3
.end method

.method private unregisterPackageRemoveReceiver()V
    .locals 2

    .prologue
    sget-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->packageRemoveIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/server/enterprise/kioskmode/KioskModeService;->packageRemoveIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->packageRemoveIntentReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    return-void
.end method

.method private unregisterTerminationReceiver()V
    .locals 2

    .prologue
    sget-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->terminateIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/server/enterprise/kioskmode/KioskModeService;->terminateIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->terminateIntentReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    return-void
.end method

.method private updateDB(IZLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "callingUid"
    .parameter "enabled"
    .parameter "kioskPackage"
    .parameter "defaultPackage"

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v1, "KIOSKMODE"

    const-string v2, "kioskModeEnabled"

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v1, "KIOSKMODE"

    const-string v2, "kioskModeDefaultPackage"

    invoke-virtual {v0, p1, v1, v2, p4}, Lcom/android/server/enterprise/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v1, "KIOSKMODE"

    const-string v2, "kioskModeKioskPackage"

    invoke-virtual {v0, p1, v1, v2, p3}, Lcom/android/server/enterprise/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method


# virtual methods
.method public allowHardwareKeys([IZ)[I
    .locals 9
    .parameter "hwKeyId"
    .parameter "allow"

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->enforceKioskModePermission()I

    move-result v0

    .local v0, callingUid:I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .local v7, successList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, hwKeyIdsList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v3, index:I
    :goto_0
    array-length v8, p1

    if-ge v3, v8, :cond_0

    aget v8, p1, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .local v5, keycode:I
    if-nez p2, :cond_2

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v0, v8}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->addToBlocked(ILjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v0, v8}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->removeFromBlocked(ILjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v5           #keycode:I
    :cond_3
    iget-object v8, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mCache:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;

    invoke-virtual {v8}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->updateCache()Z

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    new-array v6, v8, [I

    .local v6, ret:[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    array-length v8, v6

    if-ge v2, v8, :cond_4

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    return-object v6
.end method

.method public allowTaskManager(Z)Z
    .locals 9
    .parameter "allow"

    .prologue
    const/4 v3, 0x1

    .local v3, ret:Z
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->enforceKioskModePermission()I

    move-result v1

    .local v1, callingUid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .local v4, token:J
    iget-object v6, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .local v2, pm:Landroid/content/pm/PackageManager;
    if-nez p1, :cond_0

    iget-object v6, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .local v0, am:Landroid/app/ActivityManager;
    sget-object v6, Landroid/app/enterprise/kioskmode/KioskMode;->TASK_MANAGER_PKGNAME:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    sget-object v6, Landroid/app/enterprise/kioskmode/KioskMode;->MINI_TASK_MANAGER_PKGNAME:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .end local v0           #am:Landroid/app/ActivityManager;
    :cond_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget-object v6, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "KIOSKMODE"

    const-string v8, "taskManagerEnabled"

    invoke-virtual {v6, v1, v7, v8, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    return v3
.end method

.method public disableKioskMode()V
    .locals 5

    .prologue
    const-string v3, "KioskModeService"

    const-string v4, "disableKioskMode"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->enforceKioskModePermission()I

    move-result v1

    .local v1, callingUid:I
    iget-object v3, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mHandler:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .local v2, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "adminuid"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v3, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mHandler:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;

    invoke-virtual {v3, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public enableKioskMode(Ljava/lang/String;)V
    .locals 5
    .parameter "kioskPackage"

    .prologue
    const-string v3, "KioskModeService"

    const-string v4, "enableKioskMode"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->enforceKioskModePermission()I

    move-result v1

    .local v1, callingUid:I
    iget-object v3, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mHandler:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .local v2, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "package"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "adminuid"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v3, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mHandler:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;

    invoke-virtual {v3, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public getAllBlockedHardwareKeys()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .local v2, blockedSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, blockedList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getAllBlockedList()Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #blockedList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .restart local v0       #blockedList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, blockedListInt:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .local v4, next:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v4           #next:Ljava/lang/String;
    :cond_2
    return-object v1
.end method

.method public getHardwareKeyList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->enforceKioskModePermission()I

    iget-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAvailableKeyCodesList:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAvailableKeyCodesList:Ljava/util/List;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getKioskHomePackage()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-virtual {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isKioskModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getActiveKioskAdmin()I

    move-result v0

    .local v0, kioskAdmin:I
    iget-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "KIOSKMODE"

    const-string v3, "kioskModeKioskPackage"

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/enterprise/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .end local v0           #kioskAdmin:I
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hideSystemBar(Z)Z
    .locals 9
    .parameter "hide"

    .prologue
    const/4 v3, 0x1

    .local v3, result:Z
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->enforceKioskModePermission()I

    move-result v0

    .local v0, callingUid:I
    invoke-virtual {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isSystemBarHidden()Z

    move-result v2

    .local v2, oldState:Z
    iget-object v6, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "KIOSKMODE"

    const-string v8, "systemBarEnabled"

    invoke-virtual {v6, v0, v7, v8, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    invoke-virtual {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isSystemBarHidden()Z

    move-result v1

    .local v1, newState:Z
    if-eq v1, v2, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .local v4, token:J
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->applyHideSystemBarPolicy()V

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v4           #token:J
    :cond_0
    return v3
.end method

.method public isHardwareKeyAllowed(IZ)Z
    .locals 5
    .parameter "hwKeyId"
    .parameter "showMsg"

    .prologue
    const/4 v0, 0x1

    .local v0, allowed:Z
    iget-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mCache:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;

    #getter for: Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->mBlockedHwKeys:Ljava/util/Set;
    invoke-static {v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->access$600(Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;)Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mCache:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;

    #getter for: Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->mBlockedHwKeys:Ljava/util/Set;
    invoke-static {v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->access$600(Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;)Ljava/util/Set;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    if-eqz p2, :cond_1

    if-nez v0, :cond_1

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, i:Landroid/content/Intent;
    const-string v2, "message"

    iget-object v3, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    const v4, 0x10401d5

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .end local v1           #i:Landroid/content/Intent;
    :cond_1
    return v0
.end method

.method public isKioskModeEnabled()Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "KIOSKMODE"

    const-string v6, "kioskModeEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
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
    const/4 v4, 0x1

    if-ne v4, v2, :cond_0

    move v1, v2

    .end local v2           #value:Z
    :cond_1
    return v1
.end method

.method public isSystemBarHidden()Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "KIOSKMODE"

    const-string v6, "systemBarEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
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
    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    move v1, v2

    .end local v2           #value:Z
    :cond_1
    return v1
.end method

.method public isTaskManagerAllowed(Z)Z
    .locals 8
    .parameter "showMsg"

    .prologue
    const/4 v1, 0x1

    .local v1, allowed:Z
    iget-object v5, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "KIOSKMODE"

    const-string v7, "taskManagerEnabled"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .local v4, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .local v0, adminValue:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .end local v0           #adminValue:Ljava/lang/Boolean;
    :cond_1
    if-eqz p1, :cond_2

    if-nez v1, :cond_2

    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v2, i:Landroid/content/Intent;
    const-string v5, "message"

    iget-object v6, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    const v7, 0x10401d7

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .end local v2           #i:Landroid/content/Intent;
    :cond_2
    return v1
.end method

.method public onAdminAdded(I)V
    .locals 0
    .parameter "uid"

    .prologue
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 2
    .parameter "uid"

    .prologue
    invoke-virtual {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isSystemBarHidden()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->preAdminRemoval_SystemBar:Z

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->applyHideSystemBarPolicy()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->preAdminRemoval_SystemBar:Z

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mCache:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;

    invoke-virtual {v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->updateCache()Z

    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 1
    .parameter "uid"

    .prologue
    invoke-virtual {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isKioskModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getActiveKioskAdmin()I

    move-result v0

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->forceTerminateKiosk()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isSystemBarHidden()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->preAdminRemoval_SystemBar:Z

    return-void
.end method

.method public systemReady()V
    .locals 3

    .prologue
    invoke-virtual {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isKioskModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getKioskHomePackage()Ljava/lang/String;

    move-result-object v1

    .local v1, kioskPackage:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getDefaultHomeScreen()Ljava/lang/String;

    move-result-object v0

    .local v0, currentHomePackage:Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->setDefaultHomeScreen(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->registerPackageRemoveReceiver()V

    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->registerTerminationReceiver()V

    .end local v0           #currentHomePackage:Ljava/lang/String;
    .end local v1           #kioskPackage:Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->initializeKeyCodeLists()V

    iget-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mCache:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;

    invoke-virtual {v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->updateCache()Z

    return-void
.end method

.method public wipeRecentTasks()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .local v1, result:Z
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->enforceKioskModePermission()I

    move-result v0

    .local v0, callingUid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, token:J
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->clearRecentTasks()Z

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1
.end method
