.class public Lcom/android/server/sec/MultiWindowManagerService;
.super Landroid/sec/multiwindow/IMultiWindowService$Stub;
.source "MultiWindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sec/MultiWindowManagerService$4;
    }
.end annotation


# static fields
.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.android.settings"

.field private static final TAG:Ljava/lang/String; = "MultiWindowManagerService"

.field public static final WIFI_DISPLAY_WORKAROUND_ENABLE:Z = true

.field private static mSelf:Lcom/android/server/sec/MultiWindowManagerService;


# instance fields
.field final SHOW_SPLIT_DIALOG:I

.field private final SWITCH_WINDOW_PREF_NAME:Ljava/lang/String;

.field private final SWITCH_WINDOW_PREF_VALUE_NAME:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field mH:Landroid/os/Handler;

.field private mHandler:Lcom/android/server/sec/MultiWindowActionHandler;

.field private mLock:Ljava/lang/Object;

.field private mMultiLayoutUsed:Z

.field private mMultiWindowList:Lcom/android/server/sec/MultiWindowDataList;

.field private mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

.field final mReceiver:Landroid/content/BroadcastReceiver;

.field private mScreenOn:Z

.field private mSharedContext:Landroid/content/Context;

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowType:Landroid/sec/multiwindow/MultiWindowType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/sec/MultiWindowManagerService;->mSelf:Lcom/android/server/sec/MultiWindowManagerService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;-><init>()V

    const-string v4, "switchWindowPref"

    iput-object v4, p0, Lcom/android/server/sec/MultiWindowManagerService;->SWITCH_WINDOW_PREF_NAME:Ljava/lang/String;

    const-string v4, "switchWindowValue"

    iput-object v4, p0, Lcom/android/server/sec/MultiWindowManagerService;->SWITCH_WINDOW_PREF_VALUE_NAME:Ljava/lang/String;

    sget-object v4, Landroid/sec/multiwindow/MultiWindowType;->eNothing:Landroid/sec/multiwindow/MultiWindowType;

    iput-object v4, p0, Lcom/android/server/sec/MultiWindowManagerService;->mWindowType:Landroid/sec/multiwindow/MultiWindowType;

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    new-instance v4, Ljava/lang/Object;

    invoke-direct/range {v4 .. v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    iput-boolean v5, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiLayoutUsed:Z

    iput-boolean v6, p0, Lcom/android/server/sec/MultiWindowManagerService;->mScreenOn:Z

    new-instance v4, Lcom/android/server/sec/MultiWindowManagerService$2;

    invoke-direct {v4, p0}, Lcom/android/server/sec/MultiWindowManagerService$2;-><init>(Lcom/android/server/sec/MultiWindowManagerService;)V

    iput-object v4, p0, Lcom/android/server/sec/MultiWindowManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    iput v6, p0, Lcom/android/server/sec/MultiWindowManagerService;->SHOW_SPLIT_DIALOG:I

    new-instance v4, Lcom/android/server/sec/MultiWindowManagerService$3;

    invoke-direct {v4, p0}, Lcom/android/server/sec/MultiWindowManagerService$3;-><init>(Lcom/android/server/sec/MultiWindowManagerService;)V

    iput-object v4, p0, Lcom/android/server/sec/MultiWindowManagerService;->mH:Landroid/os/Handler;

    const-string v4, "MultiWindowManagerService"

    const-string v5, "Creator"

    invoke-static {v4, v5}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/sec/MultiWindowManagerService;->mContext:Landroid/content/Context;

    sput-object p0, Lcom/android/server/sec/MultiWindowManagerService;->mSelf:Lcom/android/server/sec/MultiWindowManagerService;

    iget-object v4, p0, Lcom/android/server/sec/MultiWindowManagerService;->mContext:Landroid/content/Context;

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    iput-object v4, p0, Lcom/android/server/sec/MultiWindowManagerService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/android/server/sec/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/sec/MultiWindowDataList;->getInstance(Landroid/content/Context;)Lcom/android/server/sec/MultiWindowDataList;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowList:Lcom/android/server/sec/MultiWindowDataList;

    :try_start_0
    iget-object v4, p0, Lcom/android/server/sec/MultiWindowManagerService;->mContext:Landroid/content/Context;

    const-string v5, "com.android.settings"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/sec/MultiWindowManagerService;->mSharedContext:Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v3, Lcom/android/server/sec/MultiWindowManagerService$1;

    const-string v4, "MultiWindowThread"

    invoke-direct {v3, p0, v4}, Lcom/android/server/sec/MultiWindowManagerService$1;-><init>(Lcom/android/server/sec/MultiWindowManagerService;Ljava/lang/String;)V

    .local v3, mwThread:Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    :try_start_1
    monitor-enter v3
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    const-wide/16 v4, 0x3e8

    :try_start_2
    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x111004b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .local v2, isUseMultiWindow:Z
    const-string v4, "MultiWindowManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isUseMultiWindow : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_0

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .local v1, filter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.WIFI_DISPLAY"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/sec/MultiWindowManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-object v4, Landroid/sec/multiwindow/MultiWindowType;->eSplitWindow:Landroid/sec/multiwindow/MultiWindowType;

    invoke-virtual {v4}, Landroid/sec/multiwindow/MultiWindowType;->getiValue()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/server/sec/MultiWindowManagerService;->setMultiWindowType(I)Z

    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.android.browser"

    const-string v6, "com.android.browser.BrowserActivity"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/android/server/sec/MultiWindowManagerService;->registerMultiWindow(Landroid/content/ComponentName;)Z

    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.sec.android.app.videoplayer"

    const-string v6, "com.sec.android.app.videoplayer.activity.VPMainTab"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/android/server/sec/MultiWindowManagerService;->registerMultiWindow(Landroid/content/ComponentName;)Z

    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.sec.android.app.snotebook"

    const-string v6, "com.infraware.filemanager.FmFileTreeListActivity"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/android/server/sec/MultiWindowManagerService;->registerMultiWindow(Landroid/content/ComponentName;)Z

    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.infraware.PolarisOfficeStdForTablet"

    const-string v6, "com.infraware.splash.SplashActivity"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/android/server/sec/MultiWindowManagerService;->registerMultiWindow(Landroid/content/ComponentName;)Z

    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.sec.android.gallery3d"

    const-string v6, "com.sec.android.gallery3d.app.Gallery"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/android/server/sec/MultiWindowManagerService;->registerMultiWindow(Landroid/content/ComponentName;)Z

    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.android.email"

    const-string v6, "com.android.email.activity.MessageListXL"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/android/server/sec/MultiWindowManagerService;->registerMultiWindow(Landroid/content/ComponentName;)Z

    .end local v1           #filter:Landroid/content/IntentFilter;
    :cond_0
    return-void

    .end local v2           #isUseMultiWindow:Z
    .end local v3           #mwThread:Ljava/lang/Thread;
    :catch_0
    move-exception v0

    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "MultiWindowManagerService"

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3       #mwThread:Ljava/lang/Thread;
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v0

    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_1
.end method

.method static synthetic access$000(Lcom/android/server/sec/MultiWindowManagerService;)Lcom/android/server/sec/MultiWindowActionHandler;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowManagerService;->mHandler:Lcom/android/server/sec/MultiWindowActionHandler;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/sec/MultiWindowManagerService;Lcom/android/server/sec/MultiWindowActionHandler;)Lcom/android/server/sec/MultiWindowActionHandler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/android/server/sec/MultiWindowManagerService;->mHandler:Lcom/android/server/sec/MultiWindowActionHandler;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/sec/MultiWindowManagerService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/sec/MultiWindowManagerService;)Lcom/android/server/sec/MultiWindowModule;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/sec/MultiWindowManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/server/sec/MultiWindowManagerService;->mScreenOn:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/sec/MultiWindowManagerService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private dumpMultiWindowMode(Ljava/io/PrintWriter;)V
    .locals 2
    .parameter "pw"

    .prologue
    const-string v0, "MULTIWINDOW SERVICE MultiWindowMode (dumpsys multiwindow service)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/sec/MultiWindowManagerService$4;->$SwitchMap$android$sec$multiwindow$MultiWindowType:[I

    iget-object v1, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v1}, Lcom/android/server/sec/MultiWindowModule;->getMultiWindowType()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v1

    invoke-virtual {v1}, Landroid/sec/multiwindow/MultiWindowType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string v0, "    ModeType : eNothing"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v0, "    ModeType : eSplitWindow"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string v0, "    ModeType : eFreestyleWindow"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string v0, "    ModeType : ePhoneWinodw"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private dumpReadConfig(Ljava/io/PrintWriter;)V
    .locals 3
    .parameter "pw"

    .prologue
    const-string v1, "MULTIWINDOW SERVICE ReadConfig (dumpsys multiwindow service)"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/sec/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x111004b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .local v0, isUseMultiWindow:Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    config_isMultiWindowEnabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private dumpRegisterList(Ljava/io/PrintWriter;)V
    .locals 5
    .parameter "pw"

    .prologue
    const-string v3, "MULTIWINDOW SERVICE RegisterList (dumpsys multiwindow service)"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowList:Lcom/android/server/sec/MultiWindowDataList;

    invoke-virtual {v3}, Lcom/android/server/sec/MultiWindowDataList;->getNormal()Ljava/util/List;

    move-result-object v2

    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/sec/MultiWindowDataItem;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sec/MultiWindowDataItem;

    .local v1, item:Lcom/android/server/sec/MultiWindowDataItem;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/sec/MultiWindowDataItem;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #item:Lcom/android/server/sec/MultiWindowDataItem;
    :cond_0
    const-string v3, "    Empty List"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private dumpRunningList(Ljava/io/PrintWriter;)V
    .locals 6
    .parameter "pw"

    .prologue
    const-string v4, "MULTIWINDOW SERVICE RunningList (dumpsys multiwindow service)"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowManagerService;->getRunningWindowList()Ljava/util/List;

    move-result-object v3

    .local v3, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .local v2, item:Landroid/content/ComponentName;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "        MinimumSize : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v2}, Lcom/android/server/sec/MultiWindowManagerService;->getMinimumSize(Landroid/content/ComponentName;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "        Visible : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v2}, Lcom/android/server/sec/MultiWindowManagerService;->isVisible(Landroid/content/ComponentName;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v4}, Lcom/android/server/sec/MultiWindowModule;->getList()Lcom/android/server/sec/IMultiWindowList;

    move-result-object v4

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/server/sec/IMultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v1

    .local v1, im:Lcom/android/server/sec/MWPackageItem;
    if-eqz v1, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "        Info : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/server/sec/MWPackageItem;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = \n        "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/server/sec/MWPackageItem;->toSubString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #im:Lcom/android/server/sec/MWPackageItem;
    .end local v2           #item:Landroid/content/ComponentName;
    :cond_1
    const-string v4, "    Empty List"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static getSelf()Lcom/android/server/sec/MultiWindowManagerService;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/sec/MultiWindowManagerService;->mSelf:Lcom/android/server/sec/MultiWindowManagerService;

    return-object v0
.end method

.method private isAllMultiWindow(Landroid/content/ComponentName;)Z
    .locals 2
    .parameter "className"

    .prologue
    iget-object v1, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowList:Lcom/android/server/sec/MultiWindowDataList;

    invoke-virtual {v0, p1}, Lcom/android/server/sec/MultiWindowDataList;->isMultiWindowFromAll(Landroid/content/ComponentName;)Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public arrangeWindows(I)Z
    .locals 6
    .parameter "type"

    .prologue
    iget-object v4, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    const/4 v0, 0x0

    .local v0, Result:Z
    :try_start_0
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v3, :cond_0

    monitor-exit v4

    move v1, v0

    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v3}, Lcom/android/server/sec/MultiWindowModule;->getMultiWindowType()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v3

    sget-object v5, Landroid/sec/multiwindow/MultiWindowType;->eFreestyleWindow:Landroid/sec/multiwindow/MultiWindowType;

    if-ne v3, v5, :cond_1

    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    check-cast v2, Lcom/android/server/sec/FreestyleWindowModule;

    .local v2, fwm:Lcom/android/server/sec/FreestyleWindowModule;
    invoke-virtual {v2, p1}, Lcom/android/server/sec/FreestyleWindowModule;->arrangeWindows(I)Z

    move-result v0

    .end local v2           #fwm:Lcom/android/server/sec/FreestyleWindowModule;
    :goto_1
    monitor-exit v4

    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .end local v1           #Result:I
    :cond_1
    const-string v3, "MultiWindowManagerService"

    const-string v5, "[arrangeWindows] This API want MultiWindowType.eFreestyleWindow"

    invoke-static {v3, v5}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public callEnsureActivity()V
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v0}, Lcom/android/server/sec/MultiWindowModule;->callEnsureActivity()V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public capture(Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "className"
    .parameter "sizeInfo"

    .prologue
    iget-object v4, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    const/4 v0, 0x0

    .local v0, Result:Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mWindowType:Landroid/sec/multiwindow/MultiWindowType;

    sget-object v5, Landroid/sec/multiwindow/MultiWindowType;->eNothing:Landroid/sec/multiwindow/MultiWindowType;

    invoke-virtual {v3, v5}, Landroid/sec/multiwindow/MultiWindowType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-eqz v3, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/sec/MultiWindowManagerService;->isAllMultiWindow(Landroid/content/ComponentName;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    monitor-exit v4

    move-object v1, v0

    .end local v0           #Result:Landroid/graphics/Bitmap;
    .local v1, Result:Landroid/graphics/Bitmap;
    :goto_0
    return-object v1

    .end local v1           #Result:Landroid/graphics/Bitmap;
    .restart local v0       #Result:Landroid/graphics/Bitmap;
    :cond_1
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v3}, Lcom/android/server/sec/MultiWindowModule;->getList()Lcom/android/server/sec/IMultiWindowList;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/android/server/sec/IMultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v2

    .local v2, item:Lcom/android/server/sec/MWPackageItem;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/server/sec/MWPackageItem;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_2
    const-string v3, "MultiWindowManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "capture bitmap - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v4

    move-object v1, v0

    .end local v0           #Result:Landroid/graphics/Bitmap;
    .restart local v1       #Result:Landroid/graphics/Bitmap;
    goto :goto_0

    .end local v1           #Result:Landroid/graphics/Bitmap;
    .end local v2           #item:Lcom/android/server/sec/MWPackageItem;
    .restart local v0       #Result:Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public changFocus(Landroid/content/ComponentName;I)V
    .locals 2
    .parameter "className"
    .parameter "taskId"

    .prologue
    iget-object v1, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/sec/MultiWindowModule;->changVisibleFocusMultiWindow(Landroid/content/ComponentName;I)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public changeRunningList(Landroid/content/ComponentName;)V
    .locals 4
    .parameter "className"

    .prologue
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    monitor-exit v3

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2}, Lcom/android/server/sec/MultiWindowModule;->getList()Lcom/android/server/sec/IMultiWindowList;

    move-result-object v1

    .local v1, list:Lcom/android/server/sec/IMultiWindowList;
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/server/sec/IMultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v0

    .local v0, item:Lcom/android/server/sec/MWPackageItem;
    if-nez v0, :cond_2

    monitor-exit v3

    goto :goto_0

    .end local v0           #item:Lcom/android/server/sec/MWPackageItem;
    .end local v1           #list:Lcom/android/server/sec/IMultiWindowList;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #item:Lcom/android/server/sec/MWPackageItem;
    .restart local v1       #list:Lcom/android/server/sec/IMultiWindowList;
    :cond_2
    :try_start_1
    invoke-interface {v1, v0}, Lcom/android/server/sec/IMultiWindowList;->remove(Ljava/lang/Object;)Z

    invoke-interface {v1, v0}, Lcom/android/server/sec/IMultiWindowList;->add(Ljava/lang/Object;)Z

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public destroyActivity(Landroid/content/ComponentName;I)Z
    .locals 4
    .parameter "className"
    .parameter "taskId"

    .prologue
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v0, 0x0

    .local v0, Result:Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/sec/MultiWindowManagerService;->isAllMultiWindow(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_0

    monitor-exit v3

    move v1, v0

    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_1

    monitor-exit v3

    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .end local v1           #Result:I
    :cond_1
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/sec/MultiWindowModule;->destroyActivity(Landroid/content/ComponentName;I)Z

    move-result v0

    monitor-exit v3

    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .end local v1           #Result:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "----------------------------------------------------------------------"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "MULTIWINDOW SERVICE (dumpsys multiwindow service)"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    .local v1, opti:I
    array-length v2, p3

    if-ge v1, v2, :cond_7

    aget-object v0, p3, v1

    .local v0, cmd:Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    const-string v2, "c"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p2}, Lcom/android/server/sec/MultiWindowManagerService;->dumpReadConfig(Ljava/io/PrintWriter;)V

    .end local v0           #cmd:Ljava/lang/String;
    :goto_0
    const-string v2, "----------------------------------------------------------------------"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v3

    return-void

    .restart local v0       #cmd:Ljava/lang/String;
    :cond_0
    const-string v2, "g"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p2}, Lcom/android/server/sec/MultiWindowManagerService;->dumpRegisterList(Ljava/io/PrintWriter;)V

    goto :goto_0

    .end local v0           #cmd:Ljava/lang/String;
    .end local v1           #opti:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #cmd:Ljava/lang/String;
    .restart local v1       #opti:I
    :cond_1
    :try_start_1
    const-string v2, "r"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, p2}, Lcom/android/server/sec/MultiWindowManagerService;->dumpRunningList(Ljava/io/PrintWriter;)V

    goto :goto_0

    :cond_2
    const-string v2, "m"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, p2}, Lcom/android/server/sec/MultiWindowManagerService;->dumpMultiWindowMode(Ljava/io/PrintWriter;)V

    goto :goto_0

    :cond_3
    const-string v2, "a"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0, p2}, Lcom/android/server/sec/MultiWindowManagerService;->dumpMultiWindowMode(Ljava/io/PrintWriter;)V

    invoke-direct {p0, p2}, Lcom/android/server/sec/MultiWindowManagerService;->dumpReadConfig(Ljava/io/PrintWriter;)V

    invoke-direct {p0, p2}, Lcom/android/server/sec/MultiWindowManagerService;->dumpRegisterList(Ljava/io/PrintWriter;)V

    invoke-direct {p0, p2}, Lcom/android/server/sec/MultiWindowManagerService;->dumpRunningList(Ljava/io/PrintWriter;)V

    goto :goto_0

    :cond_4
    const-string v2, "-a"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0, p2}, Lcom/android/server/sec/MultiWindowManagerService;->dumpMultiWindowMode(Ljava/io/PrintWriter;)V

    invoke-direct {p0, p2}, Lcom/android/server/sec/MultiWindowManagerService;->dumpReadConfig(Ljava/io/PrintWriter;)V

    invoke-direct {p0, p2}, Lcom/android/server/sec/MultiWindowManagerService;->dumpRegisterList(Ljava/io/PrintWriter;)V

    invoke-direct {p0, p2}, Lcom/android/server/sec/MultiWindowManagerService;->dumpRunningList(Ljava/io/PrintWriter;)V

    goto :goto_0

    :cond_5
    const-string v2, "-h"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "multiwindow service dump options:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  a[all]: all state"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  c[config]: config state"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  g[register]: register list"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  r[running]: running list"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  m[windowMode]: multiwindow type"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad multiwindow command, or no multiwindow match: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "Use -h for help."

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0           #cmd:Ljava/lang/String;
    :cond_7
    const-string v2, "multiwindow service dump options:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  a or -a[all]: all state"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  c[config]: config state"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  g[register]: register list"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  r[running]: running list"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  m[windowMode]: multiwindow type"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/android/server/sec/MultiWindowManagerService;->dumpMultiWindowMode(Ljava/io/PrintWriter;)V

    invoke-direct {p0, p2}, Lcom/android/server/sec/MultiWindowManagerService;->dumpReadConfig(Ljava/io/PrintWriter;)V

    invoke-direct {p0, p2}, Lcom/android/server/sec/MultiWindowManagerService;->dumpRegisterList(Ljava/io/PrintWriter;)V

    invoke-direct {p0, p2}, Lcom/android/server/sec/MultiWindowManagerService;->dumpRunningList(Ljava/io/PrintWriter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public exchangeSplitScreens()Z
    .locals 5

    .prologue
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v0, 0x0

    .local v0, Result:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_0

    monitor-exit v3

    .end local v0           #Result:Z
    :goto_0
    return v0

    .restart local v0       #Result:Z
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2}, Lcom/android/server/sec/MultiWindowModule;->getMultiWindowType()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v2

    sget-object v4, Landroid/sec/multiwindow/MultiWindowType;->eSplitWindow:Landroid/sec/multiwindow/MultiWindowType;

    if-ne v2, v4, :cond_1

    iget-object v1, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    check-cast v1, Lcom/android/server/sec/SplitWindowModule;

    .local v1, swm:Lcom/android/server/sec/SplitWindowModule;
    invoke-virtual {v1}, Lcom/android/server/sec/SplitWindowModule;->exchangeSplitScreens()Z

    move-result v0

    .end local v0           #Result:Z
    monitor-exit v3

    goto :goto_0

    .end local v1           #swm:Lcom/android/server/sec/SplitWindowModule;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #Result:Z
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public finishActivity(Landroid/content/ComponentName;I)Z
    .locals 4
    .parameter "className"
    .parameter "taskId"

    .prologue
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v0, 0x0

    .local v0, Result:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_0

    monitor-exit v3

    move v1, v0

    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/sec/MultiWindowModule;->finishActivity(Landroid/content/ComponentName;I)Z

    move-result v0

    if-nez v0, :cond_1

    monitor-exit v3

    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .end local v1           #Result:I
    :cond_1
    monitor-exit v3

    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .end local v1           #Result:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public finishAllWindow()Z
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "MultiWindowManagerService"

    const-string v2, "[finishAllWindow]"

    invoke-static {v0, v2}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v0}, Lcom/android/server/sec/MultiWindowModule;->finishAllWindow()Z

    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public finishAppPid(I)Z
    .locals 4
    .parameter "pid"

    .prologue
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v0, 0x0

    .local v0, Result:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_0

    monitor-exit v3

    move v1, v0

    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowManagerService;->callEnsureActivity()V

    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2, p1}, Lcom/android/server/sec/MultiWindowModule;->finishAppPid(I)Z

    move-result v0

    monitor-exit v3

    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .end local v1           #Result:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public fitToHalf(Landroid/content/ComponentName;I)Z
    .locals 4
    .parameter "className"
    .parameter "iDirection"

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_0

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2}, Lcom/android/server/sec/MultiWindowModule;->getMultiWindowType()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v2

    sget-object v3, Landroid/sec/multiwindow/MultiWindowType;->eFreestyleWindow:Landroid/sec/multiwindow/MultiWindowType;

    if-eq v2, v3, :cond_1

    const-string v2, "MultiWindowManagerService"

    const-string v3, "[fitToHalf] This API want MultiWindowType.eFreestyleWindow "

    invoke-static {v2, v3}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/sec/MultiWindowModule;->fitToHalf(Landroid/content/ComponentName;I)Z

    move-result v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getHeight(Landroid/content/ComponentName;)I
    .locals 4
    .parameter "className"

    .prologue
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v0, -0x1

    .local v0, Result:I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_0

    monitor-exit v3

    move v1, v0

    .end local v0           #Result:I
    .local v1, Result:I
    :goto_0
    return v1

    .end local v1           #Result:I
    .restart local v0       #Result:I
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2, p1}, Lcom/android/server/sec/MultiWindowModule;->getHeight(Landroid/content/ComponentName;)I

    move-result v0

    monitor-exit v3

    move v1, v0

    .end local v0           #Result:I
    .restart local v1       #Result:I
    goto :goto_0

    .end local v1           #Result:I
    .restart local v0       #Result:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getMinimumSize(Landroid/content/ComponentName;)Landroid/graphics/Rect;
    .locals 7
    .parameter "className"

    .prologue
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    monitor-exit v3

    :goto_0
    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2, p1}, Lcom/android/server/sec/MultiWindowModule;->getMinimum(Landroid/content/ComponentName;)Landroid/graphics/Rect;

    move-result-object v0

    .local v0, Result:Landroid/graphics/Rect;
    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowList:Lcom/android/server/sec/MultiWindowDataList;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/server/sec/MultiWindowDataList;->getDataItem(Ljava/lang/String;)Lcom/android/server/sec/MultiWindowDataItem;

    move-result-object v1

    .local v1, item:Lcom/android/server/sec/MultiWindowDataItem;
    if-eqz v1, :cond_2

    new-instance v0, Landroid/graphics/Rect;

    .end local v0           #Result:Landroid/graphics/Rect;
    const/4 v2, 0x0

    const/4 v4, 0x0

    iget v5, v1, Lcom/android/server/sec/MultiWindowDataItem;->minWidth:I

    iget v6, v1, Lcom/android/server/sec/MultiWindowDataItem;->minHeight:I

    invoke-direct {v0, v2, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .end local v1           #item:Lcom/android/server/sec/MultiWindowDataItem;
    .restart local v0       #Result:Landroid/graphics/Rect;
    :cond_1
    :goto_1
    monitor-exit v3

    goto :goto_0

    .end local v0           #Result:Landroid/graphics/Rect;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #Result:Landroid/graphics/Rect;
    .restart local v1       #item:Lcom/android/server/sec/MultiWindowDataItem;
    :cond_2
    :try_start_1
    new-instance v0, Landroid/graphics/Rect;

    .end local v0           #Result:Landroid/graphics/Rect;
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v0       #Result:Landroid/graphics/Rect;
    goto :goto_1
.end method

.method public getMultiLayout()Z
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiLayoutUsed:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getMultiWindowList()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v5, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    const-string v4, "MultiWindowManagerService"

    const-string v6, "[getMultiWindowList]"

    invoke-static {v4, v6}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, Result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    iget-object v4, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowList:Lcom/android/server/sec/MultiWindowDataList;

    invoke-virtual {v4}, Lcom/android/server/sec/MultiWindowDataList;->getNormal()Ljava/util/List;

    move-result-object v3

    .local v3, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/sec/MultiWindowDataItem;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sec/MultiWindowDataItem;

    .local v2, item:Lcom/android/server/sec/MultiWindowDataItem;
    iget-object v4, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    iget-object v6, v2, Lcom/android/server/sec/MultiWindowDataItem;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4, v6}, Lcom/android/server/sec/MultiWindowModule;->isCaptureActivity(Landroid/content/ComponentName;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v2, Lcom/android/server/sec/MultiWindowDataItem;->componentName:Landroid/content/ComponentName;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0           #Result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #item:Lcom/android/server/sec/MultiWindowDataItem;
    .end local v3           #list:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/sec/MultiWindowDataItem;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v0       #Result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #list:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/sec/MultiWindowDataItem;>;"
    :cond_1
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public getMultiWindowListOwner(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 7
    .parameter "owner"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v5, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, Result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    iget-object v4, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowList:Lcom/android/server/sec/MultiWindowDataList;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/server/sec/MultiWindowDataList;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .local v3, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/sec/MultiWindowDataItem;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sec/MultiWindowDataItem;

    .local v2, item:Lcom/android/server/sec/MultiWindowDataItem;
    iget-object v4, v2, Lcom/android/server/sec/MultiWindowDataItem;->componentName:Landroid/content/ComponentName;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0           #Result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #item:Lcom/android/server/sec/MultiWindowDataItem;
    .end local v3           #list:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/sec/MultiWindowDataItem;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v0       #Result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #list:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/sec/MultiWindowDataItem;>;"
    :cond_0
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public getMultiWindowListOwnerList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v5, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, Result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    iget-object v4, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowList:Lcom/android/server/sec/MultiWindowDataList;

    invoke-virtual {v4}, Lcom/android/server/sec/MultiWindowDataList;->getKeys()Ljava/util/List;

    move-result-object v3

    .local v3, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/sec/MultiWindowDataItem;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sec/MultiWindowDataItem;

    .local v2, item:Lcom/android/server/sec/MultiWindowDataItem;
    iget-object v4, v2, Lcom/android/server/sec/MultiWindowDataItem;->componentName:Landroid/content/ComponentName;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0           #Result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #item:Lcom/android/server/sec/MultiWindowDataItem;
    .end local v3           #list:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/sec/MultiWindowDataItem;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v0       #Result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #list:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/sec/MultiWindowDataItem;>;"
    :cond_0
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public getMultiWindowType()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowManagerService;->mWindowType:Landroid/sec/multiwindow/MultiWindowType;

    invoke-virtual {v0}, Landroid/sec/multiwindow/MultiWindowType;->getiValue()I

    move-result v0

    return v0
.end method

.method public getPinupWindow()Landroid/content/ComponentName;
    .locals 4

    .prologue
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v0, 0x0

    .local v0, Result:Landroid/content/ComponentName;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_0

    monitor-exit v3

    move-object v1, v0

    .end local v0           #Result:Landroid/content/ComponentName;
    .local v1, Result:Landroid/content/ComponentName;
    :goto_0
    return-object v1

    .end local v1           #Result:Landroid/content/ComponentName;
    .restart local v0       #Result:Landroid/content/ComponentName;
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2}, Lcom/android/server/sec/MultiWindowModule;->getPinupWindow()Landroid/content/ComponentName;

    move-result-object v0

    monitor-exit v3

    move-object v1, v0

    .end local v0           #Result:Landroid/content/ComponentName;
    .restart local v1       #Result:Landroid/content/ComponentName;
    goto :goto_0

    .end local v1           #Result:Landroid/content/ComponentName;
    .restart local v0       #Result:Landroid/content/ComponentName;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getPositionOfWindow(Landroid/content/ComponentName;)Landroid/sec/multiwindow/MultiWindowObject;
    .locals 5
    .parameter "className"

    .prologue
    iget-object v4, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    const/4 v1, 0x0

    .local v1, Result:Landroid/sec/multiwindow/MultiWindowObject;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v3, :cond_0

    monitor-exit v4

    move-object v2, v1

    .end local v1           #Result:Landroid/sec/multiwindow/MultiWindowObject;
    .local v2, Result:Landroid/sec/multiwindow/MultiWindowObject;
    :goto_0
    return-object v2

    .end local v2           #Result:Landroid/sec/multiwindow/MultiWindowObject;
    .restart local v1       #Result:Landroid/sec/multiwindow/MultiWindowObject;
    :cond_0
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v3, p1}, Lcom/android/server/sec/MultiWindowModule;->getPositionOfWindow(Landroid/content/ComponentName;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v0

    .local v0, Item:Lcom/android/server/sec/MWPackageItem;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/sec/MWPackageItem;->toObject()Landroid/sec/multiwindow/MultiWindowObject;

    move-result-object v1

    :cond_1
    monitor-exit v4

    move-object v2, v1

    .end local v1           #Result:Landroid/sec/multiwindow/MultiWindowObject;
    .restart local v2       #Result:Landroid/sec/multiwindow/MultiWindowObject;
    goto :goto_0

    .end local v0           #Item:Lcom/android/server/sec/MWPackageItem;
    .end local v2           #Result:Landroid/sec/multiwindow/MultiWindowObject;
    .restart local v1       #Result:Landroid/sec/multiwindow/MultiWindowObject;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getPositionOfWindowWithTaskId(Landroid/content/ComponentName;I)Landroid/sec/multiwindow/MultiWindowObject;
    .locals 4
    .parameter "className"
    .parameter "taskId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .local v1, Result:Landroid/sec/multiwindow/MultiWindowObject;
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v3, :cond_0

    move-object v2, v1

    .end local v1           #Result:Landroid/sec/multiwindow/MultiWindowObject;
    .local v2, Result:Landroid/sec/multiwindow/MultiWindowObject;
    :goto_0
    return-object v2

    .end local v2           #Result:Landroid/sec/multiwindow/MultiWindowObject;
    .restart local v1       #Result:Landroid/sec/multiwindow/MultiWindowObject;
    :cond_0
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v3, p1}, Lcom/android/server/sec/MultiWindowModule;->getPositionOfWindow(Landroid/content/ComponentName;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v0

    .local v0, Item:Lcom/android/server/sec/MWPackageItem;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/android/server/sec/MWPackageItem;->toObject(Landroid/content/ComponentName;I)Landroid/sec/multiwindow/MultiWindowObject;

    move-result-object v1

    :cond_1
    move-object v2, v1

    .end local v1           #Result:Landroid/sec/multiwindow/MultiWindowObject;
    .restart local v2       #Result:Landroid/sec/multiwindow/MultiWindowObject;
    goto :goto_0
.end method

.method public getResumedWindow()Landroid/content/ComponentName;
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "MultiWindowManagerService"

    const-string v2, "[getResumedWindow]"

    invoke-static {v0, v2}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v0}, Lcom/android/server/sec/MultiWindowModule;->getResumedWindow()Landroid/content/ComponentName;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRunningWindowList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, Result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :goto_0
    monitor-exit v2

    return-object v0

    .end local v0           #Result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :cond_0
    iget-object v1, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v1}, Lcom/android/server/sec/MultiWindowModule;->getRunningWindowList()Ljava/util/List;

    move-result-object v0

    .restart local v0       #Result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    goto :goto_0

    .end local v0           #Result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getScreenOn()Z
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/sec/MultiWindowManagerService;->mScreenOn:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSplitList()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowManagerService;->getRunningWindowList()Ljava/util/List;

    move-result-object v4

    .local v4, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .local v5, splitList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    iget-object v7, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_3

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .local v3, item:Landroid/content/ComponentName;
    iget-object v7, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v7}, Lcom/android/server/sec/MultiWindowModule;->getList()Lcom/android/server/sec/IMultiWindowList;

    move-result-object v7

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/android/server/sec/IMultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v2

    .local v2, im:Lcom/android/server/sec/MWPackageItem;
    iget-object v7, v2, Lcom/android/server/sec/MWPackageItem;->mTaskItemList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/sec/MWPackageItem$taskItem;

    .local v6, tItem:Lcom/android/server/sec/MWPackageItem$taskItem;
    invoke-virtual {v6}, Lcom/android/server/sec/MWPackageItem$taskItem;->tiGetFullScreenLock()Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;

    move-result-object v7

    sget-object v8, Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;->FALSE:Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;

    if-ne v7, v8, :cond_1

    const-string v7, "MultiWindowManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[getSplitList] "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemLastName()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemLastName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #im:Lcom/android/server/sec/MWPackageItem;
    .end local v3           #item:Landroid/content/ComponentName;
    .end local v6           #tItem:Lcom/android/server/sec/MWPackageItem$taskItem;
    :cond_2
    const-string v7, "MultiWindowManagerService"

    const-string v8, "[getSplitList] empty "

    invoke-static {v7, v8}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object v5
.end method

.method public getVisibleWindowList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v1, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "MultiWindowManagerService"

    const-string v2, "[getVisibleWindowList]"

    invoke-static {v0, v2}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v0}, Lcom/android/server/sec/MultiWindowModule;->getVisibleWindowList()Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getWidth(Landroid/content/ComponentName;)I
    .locals 4
    .parameter "className"

    .prologue
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v0, -0x1

    .local v0, Result:I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_0

    monitor-exit v3

    move v1, v0

    .end local v0           #Result:I
    .local v1, Result:I
    :goto_0
    return v1

    .end local v1           #Result:I
    .restart local v0       #Result:I
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2, p1}, Lcom/android/server/sec/MultiWindowModule;->getWidth(Landroid/content/ComponentName;)I

    move-result v0

    monitor-exit v3

    move v1, v0

    .end local v0           #Result:I
    .restart local v1       #Result:I
    goto :goto_0

    .end local v1           #Result:I
    .restart local v0       #Result:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getWindowOfPackageName(Landroid/content/ComponentName;)Landroid/sec/multiwindow/MultiWindowObject;
    .locals 5
    .parameter "className"

    .prologue
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .local v1, packageName:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v4, :cond_0

    monitor-exit v3

    :goto_0
    return-object v2

    :cond_0
    iget-object v4, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v4}, Lcom/android/server/sec/MultiWindowModule;->getList()Lcom/android/server/sec/IMultiWindowList;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/android/server/sec/IMultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v0

    .local v0, item:Lcom/android/server/sec/MWPackageItem;
    if-nez v0, :cond_1

    monitor-exit v3

    goto :goto_0

    .end local v0           #item:Lcom/android/server/sec/MWPackageItem;
    .end local v1           #packageName:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #item:Lcom/android/server/sec/MWPackageItem;
    .restart local v1       #packageName:Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/sec/MWPackageItem;->toObject()Landroid/sec/multiwindow/MultiWindowObject;

    move-result-object v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public initWindowClassInfo(Landroid/content/ComponentName;I)V
    .locals 2
    .parameter "className"
    .parameter "pid"

    .prologue
    iget-object v1, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/sec/MultiWindowManagerService;->isAllMultiWindow(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v0, :cond_1

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/sec/MultiWindowModule;->initWindowClassInfo(Landroid/content/ComponentName;I)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public isDuplicated(Landroid/content/ComponentName;)Z
    .locals 4
    .parameter "className"

    .prologue
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v0, 0x0

    .local v0, Result:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_0

    monitor-exit v3

    move v1, v0

    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2, p1}, Lcom/android/server/sec/MultiWindowModule;->isDuplicated(Landroid/content/ComponentName;)Z

    move-result v0

    monitor-exit v3

    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .end local v1           #Result:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public isMaximized(Landroid/content/ComponentName;)Z
    .locals 4
    .parameter "className"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v0, 0x1

    .local v0, Result:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_0

    monitor-exit v3

    move v1, v0

    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2, p1}, Lcom/android/server/sec/MultiWindowModule;->isMaximized(Landroid/content/ComponentName;)Z

    move-result v0

    monitor-exit v3

    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .end local v1           #Result:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public isMaximizedWithTaskId(Landroid/content/ComponentName;I)Z
    .locals 6
    .parameter "className"
    .parameter "taskId"

    .prologue
    const/4 v0, 0x1

    .local v0, Result:Z
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_0

    move v1, v0

    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/sec/MultiWindowModule;->isMaximized(Landroid/content/ComponentName;I)Z

    move-result v0

    const-string v2, "MultiWindowManagerService"

    const-string v3, "isMaximizedWithTaskId"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " return "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, p1, v4}, Landroid/sec/multiwindow/MWlog;->s(Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)I

    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0
.end method

.method public isMultiWindow(Landroid/content/ComponentName;)Z
    .locals 6
    .parameter "className"

    .prologue
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowList:Lcom/android/server/sec/MultiWindowDataList;

    invoke-virtual {v1, p1}, Lcom/android/server/sec/MultiWindowDataList;->isMultiWindow(Landroid/content/ComponentName;)Z

    move-result v0

    .local v0, Result:Z
    const-string v1, "MultiWindowManagerService"

    const-string v3, "isMultiWindow"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " return "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, p1, v4}, Landroid/sec/multiwindow/MWlog;->s(Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)I

    monitor-exit v2

    return v0

    .end local v0           #Result:Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isMultiWindowOwner(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z
    .locals 4
    .parameter "owner"
    .parameter "className"

    .prologue
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowList:Lcom/android/server/sec/MultiWindowDataList;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, p2}, Lcom/android/server/sec/MultiWindowDataList;->isMultiWindow(Ljava/lang/String;Landroid/content/ComponentName;)Z

    move-result v0

    .local v0, Result:Z
    monitor-exit v2

    return v0

    .end local v0           #Result:Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isMultiWindowServiceEnabled()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowManagerService;->mWindowType:Landroid/sec/multiwindow/MultiWindowType;

    sget-object v1, Landroid/sec/multiwindow/MultiWindowType;->eNothing:Landroid/sec/multiwindow/MultiWindowType;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPermissionOff()Z
    .locals 6

    .prologue
    iget-object v4, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    const/4 v0, 0x0

    .local v0, RESULT:Z
    :try_start_0
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v3, :cond_0

    monitor-exit v4

    move v1, v0

    .end local v0           #RESULT:Z
    .local v1, RESULT:I
    :goto_0
    return v1

    .end local v1           #RESULT:I
    .restart local v0       #RESULT:Z
    :cond_0
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v3}, Lcom/android/server/sec/MultiWindowModule;->getMultiWindowType()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v3

    sget-object v5, Landroid/sec/multiwindow/MultiWindowType;->eNothing:Landroid/sec/multiwindow/MultiWindowType;

    if-eq v3, v5, :cond_1

    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    .local v2, fwm:Lcom/android/server/sec/MultiWindowModule;
    invoke-virtual {v2}, Lcom/android/server/sec/MultiWindowModule;->isPermissionOff()Z

    move-result v0

    .end local v2           #fwm:Lcom/android/server/sec/MultiWindowModule;
    :cond_1
    monitor-exit v4

    move v1, v0

    .restart local v1       #RESULT:I
    goto :goto_0

    .end local v1           #RESULT:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public isPinupWindow(Landroid/content/ComponentName;)Z
    .locals 4
    .parameter "className"

    .prologue
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v0, 0x0

    .local v0, Result:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_0

    monitor-exit v3

    move v1, v0

    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2, p1}, Lcom/android/server/sec/MultiWindowModule;->isPinupWindow(Landroid/content/ComponentName;)Z

    move-result v0

    monitor-exit v3

    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .end local v1           #Result:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public isRunning(Landroid/content/ComponentName;)Z
    .locals 4
    .parameter "className"

    .prologue
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v0, 0x0

    .local v0, Result:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_0

    monitor-exit v3

    move v1, v0

    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2, p1}, Lcom/android/server/sec/MultiWindowModule;->isRunning(Landroid/content/ComponentName;)Z

    move-result v0

    :cond_1
    monitor-exit v3

    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .end local v1           #Result:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public isSplitWindowFullSreen()Z
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v0}, Lcom/android/server/sec/MultiWindowModule;->hasFullSreen()Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isStartingSplitScreen(Landroid/content/ComponentName;)Z
    .locals 5
    .parameter "componentName"

    .prologue
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v0, 0x0

    .local v0, Result:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_0

    monitor-exit v3

    move v1, v0

    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mWindowType:Landroid/sec/multiwindow/MultiWindowType;

    sget-object v4, Landroid/sec/multiwindow/MultiWindowType;->eSplitWindow:Landroid/sec/multiwindow/MultiWindowType;

    invoke-virtual {v2, v4}, Landroid/sec/multiwindow/MultiWindowType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    monitor-exit v3

    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .end local v1           #Result:I
    :cond_1
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    check-cast v2, Lcom/android/server/sec/SplitWindowModule;

    invoke-virtual {v2, p1}, Lcom/android/server/sec/SplitWindowModule;->isStartingSplitScreen(Landroid/content/ComponentName;)Z

    move-result v0

    monitor-exit v3

    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .end local v1           #Result:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public isVisible(Landroid/content/ComponentName;)Z
    .locals 2
    .parameter "className"

    .prologue
    iget-object v1, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v0, p1}, Lcom/android/server/sec/MultiWindowModule;->isVisible(Landroid/content/ComponentName;)Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public maximize(Landroid/content/ComponentName;)Z
    .locals 4
    .parameter "className"

    .prologue
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v0, 0x0

    .local v0, Result:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_0

    monitor-exit v3

    move v1, v0

    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2, p1}, Lcom/android/server/sec/MultiWindowModule;->maximize(Landroid/content/ComponentName;)Z

    move-result v0

    monitor-exit v3

    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .end local v1           #Result:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public maximizeAll()Z
    .locals 4

    .prologue
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v0, 0x0

    .local v0, Result:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_0

    monitor-exit v3

    move v1, v0

    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2}, Lcom/android/server/sec/MultiWindowModule;->maximizeAll()Z

    move-result v0

    monitor-exit v3

    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .end local v1           #Result:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public minimize(Landroid/content/ComponentName;)Z
    .locals 5
    .parameter "className"

    .prologue
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v0, 0x0

    .local v0, Result:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_0

    monitor-exit v3

    move v1, v0

    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2}, Lcom/android/server/sec/MultiWindowModule;->getMultiWindowType()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v2

    sget-object v4, Landroid/sec/multiwindow/MultiWindowType;->eSplitWindow:Landroid/sec/multiwindow/MultiWindowType;

    if-ne v2, v4, :cond_1

    const-string v2, "MultiWindowManagerService"

    const-string v4, "[fitToHalf] This API can not MultiWindowType.eSplitWindow "

    invoke-static {v2, v4}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3

    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .end local v1           #Result:I
    :cond_1
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2, p1}, Lcom/android/server/sec/MultiWindowModule;->minimize(Landroid/content/ComponentName;)Z

    move-result v0

    monitor-exit v3

    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .end local v1           #Result:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public notifyFinished(Landroid/content/ComponentName;I)Z
    .locals 5
    .parameter "className"
    .parameter "taskId"

    .prologue
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v0, 0x0

    .local v0, Result:Z
    :try_start_0
    const-string v2, "MultiWindowManagerService"

    const-string v4, "[finishedSelfWindow]"

    invoke-static {v2, v4}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_0

    monitor-exit v3

    move v1, v0

    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/sec/MultiWindowModule;->finishedSelfWindow(Landroid/content/ComponentName;I)Z

    move-result v0

    monitor-exit v3

    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .end local v1           #Result:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public notifyForceFinished(Landroid/content/ComponentName;)Z
    .locals 6
    .parameter "className"

    .prologue
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v0, 0x0

    .local v0, Result:Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/sec/MultiWindowManagerService;->isAllMultiWindow(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_0

    monitor-exit v3

    move v1, v0

    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_1

    monitor-exit v3

    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .end local v1           #Result:I
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowManagerService;->callEnsureActivity()V

    const-string v2, "MultiWindowManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[notifyForceFinished] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2, p1}, Lcom/android/server/sec/MultiWindowModule;->checkForceFinishedMultiWindow(Landroid/content/ComponentName;)Z

    move-result v0

    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2, p1}, Lcom/android/server/sec/MultiWindowModule;->finishOtherStateChanged(Landroid/content/ComponentName;)V

    monitor-exit v3

    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .end local v1           #Result:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public notifySIP(I)Z
    .locals 4
    .parameter "height"

    .prologue
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v0, 0x0

    .local v0, Result:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_0

    monitor-exit v3

    move v1, v0

    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2, p1}, Lcom/android/server/sec/MultiWindowModule;->notifySIP(I)Z

    move-result v0

    monitor-exit v3

    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .end local v1           #Result:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public notifyStarted(Landroid/content/ComponentName;I)Z
    .locals 4
    .parameter "className"
    .parameter "taskId"

    .prologue
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v0, 0x0

    .local v0, Result:Z
    :try_start_0
    const-string v1, "MultiWindowManagerService"

    const-string v3, "[startedSelfWindow]"

    invoke-static {v1, v3}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v1, :cond_0

    monitor-exit v2

    :goto_0
    return v0

    :cond_0
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public orientationChangeRestore(Landroid/content/ComponentName;I)Z
    .locals 4
    .parameter "cName"
    .parameter "orientation"

    .prologue
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v0, 0x0

    .local v0, Result:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_0

    monitor-exit v3

    move v1, v0

    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/sec/MultiWindowModule;->orientationChangeRestore(Landroid/content/ComponentName;I)Z

    move-result v0

    monitor-exit v3

    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .end local v1           #Result:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public orientationChecked()Z
    .locals 8

    .prologue
    iget-object v6, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    const/4 v0, 0x0

    .local v0, Result:Z
    :try_start_0
    iget-object v5, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    iget-object v5, v5, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    if-nez v5, :cond_1

    :cond_0
    monitor-exit v6

    move v1, v0

    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_1
    iget-object v5, p0, Lcom/android/server/sec/MultiWindowManagerService;->mWindowType:Landroid/sec/multiwindow/MultiWindowType;

    sget-object v7, Landroid/sec/multiwindow/MultiWindowType;->eNothing:Landroid/sec/multiwindow/MultiWindowType;

    invoke-virtual {v5, v7}, Landroid/sec/multiwindow/MultiWindowType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    :goto_1
    monitor-exit v6

    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .end local v1           #Result:I
    :cond_3
    iget-object v5, p0, Lcom/android/server/sec/MultiWindowManagerService;->mWindowType:Landroid/sec/multiwindow/MultiWindowType;

    sget-object v7, Landroid/sec/multiwindow/MultiWindowType;->eSplitWindow:Landroid/sec/multiwindow/MultiWindowType;

    invoke-virtual {v5, v7}, Landroid/sec/multiwindow/MultiWindowType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/server/sec/MultiWindowManagerService;->mWindowType:Landroid/sec/multiwindow/MultiWindowType;

    sget-object v7, Landroid/sec/multiwindow/MultiWindowType;->eFreestyleWindow:Landroid/sec/multiwindow/MultiWindowType;

    invoke-virtual {v5, v7}, Landroid/sec/multiwindow/MultiWindowType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    iget-object v5, v5, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {v5}, Lcom/android/server/sec/MultiWindowList;->runSize()I

    move-result v5

    if-lez v5, :cond_2

    iget-object v5, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    iget-object v5, v5, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {v5}, Lcom/android/server/sec/MultiWindowList;->getFocusItem()Lcom/android/server/sec/MWPackageItem;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    iget-object v5, v5, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {v5}, Lcom/android/server/sec/MultiWindowList;->getFocusItem()Lcom/android/server/sec/MWPackageItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemLast()Lcom/android/server/sec/MWClassItem;

    move-result-object v5

    if-nez v5, :cond_5

    :cond_4
    monitor-exit v6

    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .end local v1           #Result:I
    :cond_5
    iget-object v5, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    iget-object v5, v5, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {v5}, Lcom/android/server/sec/MultiWindowList;->getFocusItem()Lcom/android/server/sec/MWPackageItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemLast()Lcom/android/server/sec/MWClassItem;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    iget-object v5, v5, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {v5}, Lcom/android/server/sec/MultiWindowList;->getFocusItem()Lcom/android/server/sec/MWPackageItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemLast()Lcom/android/server/sec/MWClassItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/sec/MWClassItem;->getMultiWindowVisibleFlag()I

    move-result v2

    .local v2, flag:I
    iget-object v5, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    iget-object v5, v5, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {v5}, Lcom/android/server/sec/MultiWindowList;->getFocusItem()Lcom/android/server/sec/MWPackageItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/sec/MWPackageItem;->getLastResumedTaskID()I

    move-result v4

    .local v4, taskId:I
    iget-object v5, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    iget-object v5, v5, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {v5}, Lcom/android/server/sec/MultiWindowList;->getFocusItem()Lcom/android/server/sec/MWPackageItem;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/server/sec/MWPackageItem;->isFullScreen(I)Z

    move-result v3

    .local v3, maimizeFlag:Z
    and-int/lit8 v5, v2, 0x1

    const/4 v7, 0x1

    if-ne v5, v7, :cond_6

    if-nez v3, :cond_2

    :cond_6
    const/4 v0, 0x1

    goto :goto_1

    .end local v2           #flag:I
    .end local v3           #maimizeFlag:Z
    .end local v4           #taskId:I
    :cond_7
    iget-object v5, p0, Lcom/android/server/sec/MultiWindowManagerService;->mWindowType:Landroid/sec/multiwindow/MultiWindowType;

    sget-object v7, Landroid/sec/multiwindow/MultiWindowType;->ePhoneWinodw:Landroid/sec/multiwindow/MultiWindowType;

    invoke-virtual {v5, v7}, Landroid/sec/multiwindow/MultiWindowType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto/16 :goto_1

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public pauseChangeInformation(Landroid/content/ComponentName;)Z
    .locals 4
    .parameter "className"

    .prologue
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v0, 0x0

    .local v0, Result:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_0

    monitor-exit v3

    move v1, v0

    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2, p1}, Lcom/android/server/sec/MultiWindowModule;->pauseChangeInformation(Landroid/content/ComponentName;)Z

    move-result v0

    monitor-exit v3

    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .end local v1           #Result:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public pinupWindow(Landroid/content/ComponentName;Z)Z
    .locals 4
    .parameter "className"
    .parameter "value"

    .prologue
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v0, 0x0

    .local v0, Result:Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/sec/MultiWindowManagerService;->isAllMultiWindow(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_0

    monitor-exit v3

    move v1, v0

    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_1

    monitor-exit v3

    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .end local v1           #Result:I
    :cond_1
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/sec/MultiWindowModule;->setPinupWindow(Landroid/content/ComponentName;Z)Z

    move-result v0

    monitor-exit v3

    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .end local v1           #Result:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public postResume(Landroid/content/ComponentName;I)Z
    .locals 4
    .parameter "className"
    .parameter "taskID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v0, 0x0

    .local v0, Result:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_0

    monitor-exit v3

    move v1, v0

    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/sec/MultiWindowModule;->postResume(Landroid/content/ComponentName;I)Z

    move-result v0

    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/sec/MultiWindowModule;->resumeChangeInformation(Landroid/content/ComponentName;I)V

    monitor-exit v3

    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .end local v1           #Result:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public regWindowClass(Landroid/content/ComponentName;)Z
    .locals 4
    .parameter "className"

    .prologue
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v0, 0x0

    .local v0, Result:Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/sec/MultiWindowManagerService;->isAllMultiWindow(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_0

    monitor-exit v3

    move v1, v0

    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_1

    monitor-exit v3

    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .end local v1           #Result:I
    :cond_1
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2, p1}, Lcom/android/server/sec/MultiWindowModule;->regSubMultiWindowClass(Landroid/content/ComponentName;)Z

    move-result v0

    monitor-exit v3

    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .end local v1           #Result:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public regWindowClassAction(Landroid/content/ComponentName;Landroid/sec/multiwindow/IMultiWindowAction;I)Z
    .locals 4
    .parameter "className"
    .parameter "mwAction"
    .parameter "taskId"

    .prologue
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v0, 0x0

    .local v0, Result:Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/sec/MultiWindowManagerService;->isAllMultiWindow(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_0

    monitor-exit v3

    move v1, v0

    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_1

    monitor-exit v3

    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .end local v1           #Result:I
    :cond_1
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/sec/MultiWindowModule;->regMultiWindowClassAction(Landroid/content/ComponentName;Landroid/sec/multiwindow/IMultiWindowAction;I)Z

    move-result v0

    monitor-exit v3

    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .end local v1           #Result:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public registerMultiWindow(Landroid/content/ComponentName;)Z
    .locals 4
    .parameter "className"

    .prologue
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/sec/MultiWindowManagerService;->isMultiWindow(Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .local v0, Result:Z
    :goto_0
    iget-object v1, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowList:Lcom/android/server/sec/MultiWindowDataList;

    invoke-virtual {v1}, Lcom/android/server/sec/MultiWindowDataList;->getNormal()Ljava/util/List;

    move-result-object v1

    new-instance v3, Lcom/android/server/sec/MultiWindowDataItem;

    invoke-direct {v3, p1}, Lcom/android/server/sec/MultiWindowDataItem;-><init>(Landroid/content/ComponentName;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v2

    return v0

    .end local v0           #Result:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerMultiWindowOwner(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z
    .locals 8
    .parameter "owner"
    .parameter "className"

    .prologue
    iget-object v6, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    const/4 v0, 0x0

    .local v0, Result:Z
    :try_start_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .local v4, ownerPackageName:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .local v2, classPackageName:Ljava/lang/String;
    const-string v1, "com.android.browser"

    .local v1, browserPackageName:Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    iget-object v5, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowList:Lcom/android/server/sec/MultiWindowDataList;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/server/sec/MultiWindowDataList;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .local v3, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/sec/MultiWindowDataItem;>;"
    new-instance v5, Lcom/android/server/sec/MultiWindowDataItem;

    invoke-direct {v5, p2}, Lcom/android/server/sec/MultiWindowDataItem;-><init>(Landroid/content/ComponentName;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .end local v3           #list:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/sec/MultiWindowDataItem;>;"
    :cond_1
    monitor-exit v6

    return v0

    .end local v1           #browserPackageName:Ljava/lang/String;
    .end local v2           #classPackageName:Ljava/lang/String;
    .end local v4           #ownerPackageName:Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public registerMultiWindowOwnerWithMinList(Landroid/content/ComponentName;Ljava/util/List;)Z
    .locals 9
    .parameter "className"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Rect;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, minSize:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Rect;>;"
    iget-object v6, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    const/4 v0, 0x0

    .local v0, Result:Z
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .local v3, minList:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Point;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    .local v4, r:Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Point;

    iget v7, v4, Landroid/graphics/Rect;->right:I

    iget v8, v4, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v5, v7, v8}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #minList:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Point;>;"
    .end local v4           #r:Landroid/graphics/Rect;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #minList:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Point;>;"
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowList:Lcom/android/server/sec/MultiWindowDataList;

    invoke-virtual {v5}, Lcom/android/server/sec/MultiWindowDataList;->getNormal()Ljava/util/List;

    move-result-object v2

    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/sec/MultiWindowDataItem;>;"
    new-instance v5, Lcom/android/server/sec/MultiWindowDataItem;

    invoke-direct {v5, p1, v3}, Lcom/android/server/sec/MultiWindowDataItem;-><init>(Landroid/content/ComponentName;Ljava/util/List;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    const/4 v5, 0x1

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v5
.end method

.method public registerMultiWindowWithMin(Landroid/content/ComponentName;II)Z
    .locals 4
    .parameter "className"
    .parameter "minWidth"
    .parameter "minHeight"

    .prologue
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v0, 0x0

    .local v0, Result:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowList:Lcom/android/server/sec/MultiWindowDataList;

    invoke-virtual {v2}, Lcom/android/server/sec/MultiWindowDataList;->getNormal()Ljava/util/List;

    move-result-object v1

    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/sec/MultiWindowDataItem;>;"
    new-instance v2, Lcom/android/server/sec/MultiWindowDataItem;

    invoke-direct {v2, p1, p2, p3}, Lcom/android/server/sec/MultiWindowDataItem;-><init>(Landroid/content/ComponentName;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v3

    return v0

    .end local v1           #list:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/sec/MultiWindowDataItem;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public registerMultiWindowWithMinAndRatio(Landroid/content/ComponentName;IIZ)Z
    .locals 4
    .parameter "className"
    .parameter "minWidth"
    .parameter "minHeight"
    .parameter "isfixedRatio"

    .prologue
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v0, 0x0

    .local v0, Result:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowList:Lcom/android/server/sec/MultiWindowDataList;

    invoke-virtual {v2}, Lcom/android/server/sec/MultiWindowDataList;->getNormal()Ljava/util/List;

    move-result-object v1

    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/sec/MultiWindowDataItem;>;"
    new-instance v2, Lcom/android/server/sec/MultiWindowDataItem;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/android/server/sec/MultiWindowDataItem;-><init>(Landroid/content/ComponentName;IIZ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v3

    return v0

    .end local v1           #list:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/sec/MultiWindowDataItem;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public removeMultiWindow(Landroid/content/ComponentName;)Z
    .locals 4
    .parameter "className"

    .prologue
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v0, 0x0

    .local v0, Result:Z
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/sec/MultiWindowManagerService;->isMultiWindow(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_0

    monitor-exit v3

    move v1, v0

    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowList:Lcom/android/server/sec/MultiWindowDataList;

    invoke-virtual {v2}, Lcom/android/server/sec/MultiWindowDataList;->getNormal()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v3

    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .end local v1           #Result:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public removeMultiWindowOwner(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z
    .locals 5
    .parameter "owner"
    .parameter "className"

    .prologue
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v0, 0x0

    .local v0, Result:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowList:Lcom/android/server/sec/MultiWindowDataList;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/server/sec/MultiWindowDataList;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/sec/MultiWindowDataItem;>;"
    invoke-interface {v1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v3

    return v0

    .end local v1           #list:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/sec/MultiWindowDataItem;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public removeMultiWindowOwnerItem(Landroid/content/ComponentName;)Z
    .locals 4
    .parameter "owner"

    .prologue
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v0, 0x0

    .local v0, Result:Z
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowList:Lcom/android/server/sec/MultiWindowDataList;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/sec/MultiWindowDataList;->remove(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v2

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public restore(Landroid/content/ComponentName;)Z
    .locals 4
    .parameter "className"

    .prologue
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v0, 0x0

    .local v0, Result:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_0

    monitor-exit v3

    move v1, v0

    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2, p1}, Lcom/android/server/sec/MultiWindowModule;->restore(Landroid/content/ComponentName;)Z

    move-result v0

    monitor-exit v3

    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .end local v1           #Result:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public resume(Landroid/content/ComponentName;Landroid/sec/multiwindow/IMultiWindowListener;)Z
    .locals 5
    .parameter "className"
    .parameter "mwListener"

    .prologue
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v0, 0x0

    .local v0, Result:Z
    :try_start_0
    const-string v2, "MultiWindowManagerService"

    const-string v4, "[resume]"

    invoke-static {v2, v4}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_0

    monitor-exit v3

    move v1, v0

    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/sec/MultiWindowModule;->resume(Landroid/content/ComponentName;Landroid/sec/multiwindow/IMultiWindowListener;)Z

    move-result v0

    monitor-exit v3

    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .end local v1           #Result:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public saveCapture(Landroid/content/ComponentName;Landroid/graphics/Bitmap;)Z
    .locals 6
    .parameter "className"
    .parameter "bitmap"

    .prologue
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v0, 0x0

    .local v0, Result:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mWindowType:Landroid/sec/multiwindow/MultiWindowType;

    sget-object v4, Landroid/sec/multiwindow/MultiWindowType;->eNothing:Landroid/sec/multiwindow/MultiWindowType;

    invoke-virtual {v2, v4}, Landroid/sec/multiwindow/MultiWindowType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-eqz v2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/sec/MultiWindowManagerService;->isAllMultiWindow(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez p2, :cond_1

    :cond_0
    monitor-exit v3

    move v1, v0

    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_1
    const-string v2, "MultiWindowManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "capture - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/sec/MultiWindowModule;->saveCaptureItem(Landroid/content/ComponentName;Landroid/graphics/Bitmap;)Z

    move-result v0

    monitor-exit v3

    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .end local v1           #Result:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public screenShot(Landroid/content/ComponentName;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "className"

    .prologue
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v0, 0x0

    .local v0, Result:Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_0

    monitor-exit v3

    move-object v1, v0

    .end local v0           #Result:Landroid/graphics/Bitmap;
    .local v1, Result:Landroid/graphics/Bitmap;
    :goto_0
    return-object v1

    .end local v1           #Result:Landroid/graphics/Bitmap;
    .restart local v0       #Result:Landroid/graphics/Bitmap;
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2}, Lcom/android/server/sec/MultiWindowModule;->screenShot()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/sec/MultiWindowManagerService;->saveCapture(Landroid/content/ComponentName;Landroid/graphics/Bitmap;)Z

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/android/server/sec/MultiWindowManagerService;->capture(Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    monitor-exit v3

    move-object v1, v0

    .end local v0           #Result:Landroid/graphics/Bitmap;
    .restart local v1       #Result:Landroid/graphics/Bitmap;
    goto :goto_0

    .end local v1           #Result:Landroid/graphics/Bitmap;
    .restart local v0       #Result:Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setActivityConfigurationInfo(Lcom/android/server/sec/MwActivityRecord;)V
    .locals 1
    .parameter "r"

    .prologue
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v0, p1}, Lcom/android/server/sec/MultiWindowModule;->setEscapedList(Lcom/android/server/sec/MwActivityRecord;)V

    return-void
.end method

.method public setActivityStackInfo(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/sec/MwActivityRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, mwList:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/sec/MwActivityRecord;>;"
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v0, p1}, Lcom/android/server/sec/MultiWindowModule;->resetAppList(Ljava/util/List;)V

    return-void
.end method

.method public setMinimumSize(Landroid/content/ComponentName;II)Z
    .locals 8
    .parameter "className"
    .parameter "width"
    .parameter "height"

    .prologue
    iget-object v6, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    const/4 v0, 0x0

    .local v0, Result:Z
    :try_start_0
    iget-object v5, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v5, :cond_0

    monitor-exit v6

    move v1, v0

    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    iget-object v5, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v5, p1, p2, p3}, Lcom/android/server/sec/MultiWindowModule;->setMinimum(Landroid/content/ComponentName;II)Z

    move-result v0

    iget-object v5, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowList:Lcom/android/server/sec/MultiWindowDataList;

    invoke-virtual {v5}, Lcom/android/server/sec/MultiWindowDataList;->getNormal()Ljava/util/List;

    move-result-object v4

    .local v4, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/sec/MultiWindowDataItem;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/sec/MultiWindowDataItem;

    .local v3, item:Lcom/android/server/sec/MultiWindowDataItem;
    iget-object v5, v3, Lcom/android/server/sec/MultiWindowDataItem;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iput p2, v3, Lcom/android/server/sec/MultiWindowDataItem;->minWidth:I

    iput p3, v3, Lcom/android/server/sec/MultiWindowDataItem;->minHeight:I

    goto :goto_1

    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #item:Lcom/android/server/sec/MultiWindowDataItem;
    .end local v4           #list:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/sec/MultiWindowDataItem;>;"
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #list:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/sec/MultiWindowDataItem;>;"
    :cond_2
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0
.end method

.method public setMultiLayout(Z)Z
    .locals 2
    .parameter "value"

    .prologue
    iget-object v1, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiLayoutUsed:Z

    monitor-exit v1

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setMultiWindowType(I)Z
    .locals 7
    .parameter "type"

    .prologue
    const/4 v0, 0x0

    .local v0, Return:Z
    invoke-static {p1}, Landroid/sec/multiwindow/MultiWindowType;->getValidType(I)Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v2

    .local v2, tempType:Landroid/sec/multiwindow/MultiWindowType;
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mWindowType:Landroid/sec/multiwindow/MultiWindowType;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mWindowType:Landroid/sec/multiwindow/MultiWindowType;

    invoke-virtual {v3, v2}, Landroid/sec/multiwindow/MultiWindowType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    move v1, v0

    .end local v0           #Return:Z
    .local v1, Return:I
    :goto_0
    return v1

    .end local v1           #Return:I
    .restart local v0       #Return:Z
    :cond_0
    iput-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mWindowType:Landroid/sec/multiwindow/MultiWindowType;

    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowList:Lcom/android/server/sec/MultiWindowDataList;

    invoke-virtual {v3, v2}, Lcom/android/server/sec/MultiWindowDataList;->setType(Landroid/sec/multiwindow/MultiWindowType;)V

    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/server/sec/MultiWindowManagerService$4;->$SwitchMap$android$sec$multiwindow$MultiWindowType:[I

    iget-object v4, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v4}, Lcom/android/server/sec/MultiWindowModule;->getMultiWindowType()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v4

    invoke-virtual {v4}, Landroid/sec/multiwindow/MultiWindowType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    :goto_1
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    :cond_1
    sget-object v3, Lcom/android/server/sec/MultiWindowManagerService$4;->$SwitchMap$android$sec$multiwindow$MultiWindowType:[I

    iget-object v4, p0, Lcom/android/server/sec/MultiWindowManagerService;->mWindowType:Landroid/sec/multiwindow/MultiWindowType;

    invoke-virtual {v4}, Landroid/sec/multiwindow/MultiWindowType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    :goto_2
    :pswitch_0
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    :cond_2
    move v1, v0

    .restart local v1       #Return:I
    goto :goto_0

    .end local v1           #Return:I
    :pswitch_1
    invoke-static {}, Lcom/android/server/sec/SplitWindowModule;->removeInstance()V

    goto :goto_1

    :pswitch_2
    invoke-static {}, Lcom/android/server/sec/FreestyleWindowModule;->removeInstance()V

    goto :goto_1

    :pswitch_3
    const-string v3, "MultiWindowManagerService"

    const-string v4, "Multi-Window type is nothing."

    invoke-static {v3, v4}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_2

    :pswitch_4
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mWindowType:Landroid/sec/multiwindow/MultiWindowType;

    iget-object v4, p0, Lcom/android/server/sec/MultiWindowManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/sec/MultiWindowManagerService;->mHandler:Lcom/android/server/sec/MultiWindowActionHandler;

    iget-object v6, p0, Lcom/android/server/sec/MultiWindowManagerService;->mWindowManager:Landroid/view/WindowManager;

    invoke-static {v3, v4, v5, v6}, Lcom/android/server/sec/SplitWindowModule;->getInstance(Landroid/sec/multiwindow/MultiWindowType;Landroid/content/Context;Lcom/android/server/sec/MultiWindowActionHandler;Landroid/view/WindowManager;)Lcom/android/server/sec/SplitWindowModule;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    goto :goto_2

    :pswitch_5
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mWindowType:Landroid/sec/multiwindow/MultiWindowType;

    iget-object v4, p0, Lcom/android/server/sec/MultiWindowManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/sec/MultiWindowManagerService;->mHandler:Lcom/android/server/sec/MultiWindowActionHandler;

    iget-object v6, p0, Lcom/android/server/sec/MultiWindowManagerService;->mWindowManager:Landroid/view/WindowManager;

    invoke-static {v3, v4, v5, v6}, Lcom/android/server/sec/FreestyleWindowModule;->getInstance(Landroid/sec/multiwindow/MultiWindowType;Landroid/content/Context;Lcom/android/server/sec/MultiWindowActionHandler;Landroid/view/WindowManager;)Lcom/android/server/sec/FreestyleWindowModule;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public setPermissionOff(Z)V
    .locals 2
    .parameter "permissionCheck"

    .prologue
    iget-object v1, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v0, p1}, Lcom/android/server/sec/MultiWindowModule;->setPermissionOff(Z)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setPositionWindow(Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/sec/multiwindow/MultiWindowObject;
    .locals 7
    .parameter "className"
    .parameter "newRect"

    .prologue
    iget-object v4, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string v3, "MultiWindowManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setPositionWindow :: className "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , Rect :: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .local v1, Result:Landroid/sec/multiwindow/MultiWindowObject;
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v3, :cond_0

    monitor-exit v4

    move-object v2, v1

    .end local v1           #Result:Landroid/sec/multiwindow/MultiWindowObject;
    .local v2, Result:Landroid/sec/multiwindow/MultiWindowObject;
    :goto_0
    return-object v2

    .end local v2           #Result:Landroid/sec/multiwindow/MultiWindowObject;
    .restart local v1       #Result:Landroid/sec/multiwindow/MultiWindowObject;
    :cond_0
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    const/4 v5, 0x1

    invoke-virtual {v3, p1, p2, v5}, Lcom/android/server/sec/MultiWindowModule;->setPositionOfWindow(Landroid/content/ComponentName;Landroid/graphics/Rect;Z)Lcom/android/server/sec/MWPackageItem;

    move-result-object v0

    .local v0, Item:Lcom/android/server/sec/MWPackageItem;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/sec/MWPackageItem;->toObject()Landroid/sec/multiwindow/MultiWindowObject;

    move-result-object v1

    :cond_1
    monitor-exit v4

    move-object v2, v1

    .end local v1           #Result:Landroid/sec/multiwindow/MultiWindowObject;
    .restart local v2       #Result:Landroid/sec/multiwindow/MultiWindowObject;
    goto :goto_0

    .end local v0           #Item:Lcom/android/server/sec/MWPackageItem;
    .end local v2           #Result:Landroid/sec/multiwindow/MultiWindowObject;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public setPreferenceValue(Z)V
    .locals 4
    .parameter "b"

    .prologue
    iget-object v1, p0, Lcom/android/server/sec/MultiWindowManagerService;->mSharedContext:Landroid/content/Context;

    const-string v2, "switchWindowPref"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v1, "switchWindowValue"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public showSwitchWindowGuideDialog()V
    .locals 5

    .prologue
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mSharedContext:Landroid/content/Context;

    const-string v3, "switchWindowPref"

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .local v1, pref:Landroid/content/SharedPreferences;
    const-string v2, "switchWindowValue"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v0, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mH:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public start(Landroid/content/Intent;)Z
    .locals 4
    .parameter "intent"

    .prologue
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v0, 0x0

    .local v0, Result:Z
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/sec/MultiWindowManagerService;->isAllMultiWindow(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_0

    monitor-exit v3

    move v1, v0

    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_1

    monitor-exit v3

    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .end local v1           #Result:I
    :cond_1
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2}, Lcom/android/server/sec/MultiWindowModule;->freezeRotation()V

    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2, p1}, Lcom/android/server/sec/MultiWindowModule;->start(Landroid/content/Intent;)Z

    move-result v0

    monitor-exit v3

    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .end local v1           #Result:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public startDualWindow(Landroid/content/Intent;Landroid/content/ComponentName;)Z
    .locals 4
    .parameter "parentIntent"
    .parameter "className"

    .prologue
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v0, 0x0

    .local v0, Result:Z
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .local v1, parentClassName:Landroid/content/ComponentName;
    invoke-direct {p0, v1}, Lcom/android/server/sec/MultiWindowManagerService;->isAllMultiWindow(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_0

    monitor-exit v3

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_1

    monitor-exit v3

    goto :goto_0

    .end local v1           #parentClassName:Landroid/content/ComponentName;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1       #parentClassName:Landroid/content/ComponentName;
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public startMultiWindow(Landroid/content/ComponentName;Z)Z
    .locals 4
    .parameter "className"
    .parameter "isMiniMode"

    .prologue
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v0, 0x0

    .local v0, Result:Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/sec/MultiWindowManagerService;->isAllMultiWindow(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_0

    monitor-exit v3

    move v1, v0

    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_1

    monitor-exit v3

    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .end local v1           #Result:I
    :cond_1
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/sec/MultiWindowModule;->startMultiWindow(Landroid/content/ComponentName;Z)Z

    move-result v0

    monitor-exit v3

    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .end local v1           #Result:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public startMultiWindowWithTaskId(Landroid/content/ComponentName;IZ)Z
    .locals 6
    .parameter "className"
    .parameter "taskId"
    .parameter "isMiniMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .local v0, Result:Z
    const-string v2, "MultiWindowManagerService"

    const-string v3, "startMultiWindowWithTaskId"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "taskId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, p1, v4}, Landroid/sec/multiwindow/MWlog;->s(Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/sec/MultiWindowManagerService;->isAllMultiWindow(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_0

    move v1, v0

    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_1

    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .end local v1           #Result:I
    :cond_1
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/sec/MultiWindowModule;->startMultiWindow(Landroid/content/ComponentName;IZ)Z

    move-result v0

    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0
.end method

.method public startSplitScreens(Landroid/content/Intent;Landroid/content/Intent;)Z
    .locals 5
    .parameter "intentCaller"
    .parameter "intentCallee"

    .prologue
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v0, 0x0

    .local v0, Result:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_0

    monitor-exit v3

    .end local v0           #Result:Z
    :goto_0
    return v0

    .restart local v0       #Result:Z
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2}, Lcom/android/server/sec/MultiWindowModule;->getMultiWindowType()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v2

    sget-object v4, Landroid/sec/multiwindow/MultiWindowType;->eSplitWindow:Landroid/sec/multiwindow/MultiWindowType;

    if-ne v2, v4, :cond_1

    iget-object v1, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    check-cast v1, Lcom/android/server/sec/SplitWindowModule;

    .local v1, swm:Lcom/android/server/sec/SplitWindowModule;
    invoke-virtual {v1, p1, p2}, Lcom/android/server/sec/SplitWindowModule;->startSplitScreens(Landroid/content/Intent;Landroid/content/Intent;)Z

    move-result v0

    .end local v0           #Result:Z
    monitor-exit v3

    goto :goto_0

    .end local v1           #swm:Lcom/android/server/sec/SplitWindowModule;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #Result:Z
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public startSplitScreensForLauncher(Landroid/content/Intent;Landroid/content/Intent;)Z
    .locals 5
    .parameter "intentCaller"
    .parameter "intentCallee"

    .prologue
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v0, 0x0

    .local v0, Result:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_0

    const/4 v0, 0x0

    monitor-exit v3

    .end local v0           #Result:Z
    :goto_0
    return v0

    .restart local v0       #Result:Z
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2}, Lcom/android/server/sec/MultiWindowModule;->getMultiWindowType()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v2

    sget-object v4, Landroid/sec/multiwindow/MultiWindowType;->eSplitWindow:Landroid/sec/multiwindow/MultiWindowType;

    if-ne v2, v4, :cond_1

    iget-object v1, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    check-cast v1, Lcom/android/server/sec/SplitWindowModule;

    .local v1, swm:Lcom/android/server/sec/SplitWindowModule;
    invoke-virtual {v1, p1, p2}, Lcom/android/server/sec/SplitWindowModule;->startSplitScreensForLauncher(Landroid/content/Intent;Landroid/content/Intent;)Z

    move-result v0

    .end local v0           #Result:Z
    monitor-exit v3

    goto :goto_0

    .end local v1           #swm:Lcom/android/server/sec/SplitWindowModule;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #Result:Z
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public startSplitWindowWithDirection(Landroid/content/Intent;I)Z
    .locals 3
    .parameter "intent"
    .parameter "iDirection"

    .prologue
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v0, 0x0

    .local v0, Result:Z
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/sec/MultiWindowManagerService;->isAllMultiWindow(Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v2

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v1, :cond_1

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public startSplitWindowWithDirectionReplaced(Landroid/content/Intent;IZ)Z
    .locals 3
    .parameter "intent"
    .parameter "iDirection"
    .parameter "isReplaced"

    .prologue
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v0, 0x0

    .local v0, Result:Z
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/sec/MultiWindowManagerService;->isAllMultiWindow(Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v2

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v1, :cond_1

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public stop(Landroid/content/ComponentName;I)Z
    .locals 4
    .parameter "className"
    .parameter "taskId"

    .prologue
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v0, 0x0

    .local v0, Result:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_0

    monitor-exit v3

    move v1, v0

    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/sec/MultiWindowModule;->finish(Landroid/content/ComponentName;I)Z

    move-result v0

    monitor-exit v3

    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .end local v1           #Result:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public unRegisterMultiWindow(Landroid/content/ComponentName;)Z
    .locals 5
    .parameter "className"

    .prologue
    iget-object v4, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    const/4 v0, 0x0

    .local v0, Result:Z
    :try_start_0
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowList:Lcom/android/server/sec/MultiWindowDataList;

    invoke-virtual {v3}, Lcom/android/server/sec/MultiWindowDataList;->getUnregistList()Ljava/util/List;

    move-result-object v2

    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/sec/MultiWindowDataItem;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/sec/MultiWindowDataItem;

    iget-object v3, v3, Lcom/android/server/sec/MultiWindowDataItem;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    new-instance v3, Lcom/android/server/sec/MultiWindowDataItem;

    invoke-direct {v3, p1}, Lcom/android/server/sec/MultiWindowDataItem;-><init>(Landroid/content/ComponentName;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v4

    return v0

    .end local v1           #i:I
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/sec/MultiWindowDataItem;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
