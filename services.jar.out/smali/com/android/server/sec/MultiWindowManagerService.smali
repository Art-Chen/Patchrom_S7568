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
    .line 99
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

    .line 108
    invoke-direct {p0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;-><init>()V

    .line 48
    const-string v4, "switchWindowPref"

    iput-object v4, p0, Lcom/android/server/sec/MultiWindowManagerService;->SWITCH_WINDOW_PREF_NAME:Ljava/lang/String;

    .line 49
    const-string v4, "switchWindowValue"

    iput-object v4, p0, Lcom/android/server/sec/MultiWindowManagerService;->SWITCH_WINDOW_PREF_VALUE_NAME:Ljava/lang/String;

    .line 66
    sget-object v4, Landroid/sec/multiwindow/MultiWindowType;->eNothing:Landroid/sec/multiwindow/MultiWindowType;

    iput-object v4, p0, Lcom/android/server/sec/MultiWindowManagerService;->mWindowType:Landroid/sec/multiwindow/MultiWindowType;

    .line 71
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    .line 78
    new-instance v4, Ljava/lang/Object;

    invoke-direct/range {v4 .. v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    .line 94
    iput-boolean v5, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiLayoutUsed:Z

    .line 102
    iput-boolean v6, p0, Lcom/android/server/sec/MultiWindowManagerService;->mScreenOn:Z

    .line 1868
    new-instance v4, Lcom/android/server/sec/MultiWindowManagerService$2;

    invoke-direct {v4, p0}, Lcom/android/server/sec/MultiWindowManagerService$2;-><init>(Lcom/android/server/sec/MultiWindowManagerService;)V

    iput-object v4, p0, Lcom/android/server/sec/MultiWindowManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 2073
    iput v6, p0, Lcom/android/server/sec/MultiWindowManagerService;->SHOW_SPLIT_DIALOG:I

    .line 2075
    new-instance v4, Lcom/android/server/sec/MultiWindowManagerService$3;

    invoke-direct {v4, p0}, Lcom/android/server/sec/MultiWindowManagerService$3;-><init>(Lcom/android/server/sec/MultiWindowManagerService;)V

    iput-object v4, p0, Lcom/android/server/sec/MultiWindowManagerService;->mH:Landroid/os/Handler;

    .line 109
    const-string v4, "MultiWindowManagerService"

    const-string v5, "Creator"

    invoke-static {v4, v5}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iput-object p1, p0, Lcom/android/server/sec/MultiWindowManagerService;->mContext:Landroid/content/Context;

    .line 111
    sput-object p0, Lcom/android/server/sec/MultiWindowManagerService;->mSelf:Lcom/android/server/sec/MultiWindowManagerService;

    .line 113
    iget-object v4, p0, Lcom/android/server/sec/MultiWindowManagerService;->mContext:Landroid/content/Context;

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    iput-object v4, p0, Lcom/android/server/sec/MultiWindowManagerService;->mWindowManager:Landroid/view/WindowManager;

    .line 114
    iget-object v4, p0, Lcom/android/server/sec/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/sec/MultiWindowDataList;->getInstance(Landroid/content/Context;)Lcom/android/server/sec/MultiWindowDataList;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowList:Lcom/android/server/sec/MultiWindowDataList;

    .line 117
    :try_start_0
    iget-object v4, p0, Lcom/android/server/sec/MultiWindowManagerService;->mContext:Landroid/content/Context;

    const-string v5, "com.android.settings"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/sec/MultiWindowManagerService;->mSharedContext:Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    new-instance v3, Lcom/android/server/sec/MultiWindowManagerService$1;

    const-string v4, "MultiWindowThread"

    invoke-direct {v3, p0, v4}, Lcom/android/server/sec/MultiWindowManagerService$1;-><init>(Lcom/android/server/sec/MultiWindowManagerService;Ljava/lang/String;)V

    .line 132
    .local v3, mwThread:Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 135
    :try_start_1
    monitor-enter v3
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 136
    const-wide/16 v4, 0x3e8

    :try_start_2
    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 137
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 143
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x111004b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 144
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

    .line 145
    if-eqz v2, :cond_0

    .line 146
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 147
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    const-string v4, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    const-string v4, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    const-string v4, "android.intent.action.WIFI_DISPLAY"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 152
    iget-object v4, p0, Lcom/android/server/sec/MultiWindowManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 154
    sget-object v4, Landroid/sec/multiwindow/MultiWindowType;->eSplitWindow:Landroid/sec/multiwindow/MultiWindowType;

    invoke-virtual {v4}, Landroid/sec/multiwindow/MultiWindowType;->getiValue()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/server/sec/MultiWindowManagerService;->setMultiWindowType(I)Z

    .line 155
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.android.browser"

    const-string v6, "com.android.browser.BrowserActivity"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/android/server/sec/MultiWindowManagerService;->registerMultiWindow(Landroid/content/ComponentName;)Z

    .line 156
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.sec.android.app.videoplayer"

    const-string v6, "com.sec.android.app.videoplayer.activity.VPMainTab"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/android/server/sec/MultiWindowManagerService;->registerMultiWindow(Landroid/content/ComponentName;)Z

    .line 157
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.sec.android.app.snotebook"

    const-string v6, "com.infraware.filemanager.FmFileTreeListActivity"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/android/server/sec/MultiWindowManagerService;->registerMultiWindow(Landroid/content/ComponentName;)Z

    .line 158
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.infraware.PolarisOfficeStdForTablet"

    const-string v6, "com.infraware.splash.SplashActivity"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/android/server/sec/MultiWindowManagerService;->registerMultiWindow(Landroid/content/ComponentName;)Z

    .line 159
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.sec.android.gallery3d"

    const-string v6, "com.sec.android.gallery3d.app.Gallery"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/android/server/sec/MultiWindowManagerService;->registerMultiWindow(Landroid/content/ComponentName;)Z

    .line 160
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.android.email"

    const-string v6, "com.android.email.activity.MessageListXL"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/android/server/sec/MultiWindowManagerService;->registerMultiWindow(Landroid/content/ComponentName;)Z

    .line 162
    .end local v1           #filter:Landroid/content/IntentFilter;
    :cond_0
    return-void

    .line 118
    .end local v2           #isUseMultiWindow:Z
    .end local v3           #mwThread:Ljava/lang/Thread;
    :catch_0
    move-exception v0

    .line 119
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "MultiWindowManagerService"

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 137
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

    .line 138
    :catch_1
    move-exception v0

    .line 140
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_1
.end method

.method static synthetic access$000(Lcom/android/server/sec/MultiWindowManagerService;)Lcom/android/server/sec/MultiWindowActionHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowManagerService;->mHandler:Lcom/android/server/sec/MultiWindowActionHandler;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/sec/MultiWindowManagerService;Lcom/android/server/sec/MultiWindowActionHandler;)Lcom/android/server/sec/MultiWindowActionHandler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/server/sec/MultiWindowManagerService;->mHandler:Lcom/android/server/sec/MultiWindowActionHandler;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/sec/MultiWindowManagerService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/sec/MultiWindowManagerService;)Lcom/android/server/sec/MultiWindowModule;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/sec/MultiWindowManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/server/sec/MultiWindowManagerService;->mScreenOn:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/sec/MultiWindowManagerService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private dumpMultiWindowMode(Ljava/io/PrintWriter;)V
    .locals 2
    .parameter "pw"

    .prologue
    .line 1991
    const-string v0, "MULTIWINDOW SERVICE MultiWindowMode (dumpsys multiwindow service)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1992
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-eqz v0, :cond_0

    .line 1993
    sget-object v0, Lcom/android/server/sec/MultiWindowManagerService$4;->$SwitchMap$android$sec$multiwindow$MultiWindowType:[I

    iget-object v1, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v1}, Lcom/android/server/sec/MultiWindowModule;->getMultiWindowType()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v1

    invoke-virtual {v1}, Landroid/sec/multiwindow/MultiWindowType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2004
    const-string v0, "    ModeType : eNothing"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2008
    :cond_0
    :goto_0
    return-void

    .line 1995
    :pswitch_0
    const-string v0, "    ModeType : eSplitWindow"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1998
    :pswitch_1
    const-string v0, "    ModeType : eFreestyleWindow"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 2001
    :pswitch_2
    const-string v0, "    ModeType : ePhoneWinodw"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1993
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
    .line 2011
    const-string v1, "MULTIWINDOW SERVICE ReadConfig (dumpsys multiwindow service)"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2012
    iget-object v1, p0, Lcom/android/server/sec/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x111004b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 2013
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

    .line 2014
    return-void
.end method

.method private dumpRegisterList(Ljava/io/PrintWriter;)V
    .locals 5
    .parameter "pw"

    .prologue
    .line 2017
    const-string v3, "MULTIWINDOW SERVICE RegisterList (dumpsys multiwindow service)"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2018
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowList:Lcom/android/server/sec/MultiWindowDataList;

    invoke-virtual {v3}, Lcom/android/server/sec/MultiWindowDataList;->getNormal()Ljava/util/List;

    move-result-object v2

    .line 2020
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/sec/MultiWindowDataItem;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 2021
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

    .line 2022
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

    .line 2025
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #item:Lcom/android/server/sec/MultiWindowDataItem;
    :cond_0
    const-string v3, "    Empty List"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2027
    :cond_1
    return-void
.end method

.method private dumpRunningList(Ljava/io/PrintWriter;)V
    .locals 6
    .parameter "pw"

    .prologue
    .line 2030
    const-string v4, "MULTIWINDOW SERVICE RunningList (dumpsys multiwindow service)"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2032
    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowManagerService;->getRunningWindowList()Ljava/util/List;

    move-result-object v3

    .line 2033
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 2034
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

    .line 2035
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

    .line 2036
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

    .line 2037
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

    .line 2038
    iget-object v4, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-eqz v4, :cond_0

    .line 2039
    iget-object v4, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v4}, Lcom/android/server/sec/MultiWindowModule;->getList()Lcom/android/server/sec/IMultiWindowList;

    move-result-object v4

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/server/sec/IMultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v1

    .line 2040
    .local v1, im:Lcom/android/server/sec/MWPackageItem;
    if-eqz v1, :cond_0

    .line 2041
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

    .line 2046
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #im:Lcom/android/server/sec/MWPackageItem;
    .end local v2           #item:Landroid/content/ComponentName;
    :cond_1
    const-string v4, "    Empty List"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2049
    :cond_2
    return-void
.end method

.method public static getSelf()Lcom/android/server/sec/MultiWindowManagerService;
    .locals 1

    .prologue
    .line 169
    sget-object v0, Lcom/android/server/sec/MultiWindowManagerService;->mSelf:Lcom/android/server/sec/MultiWindowManagerService;

    return-object v0
.end method

.method private isAllMultiWindow(Landroid/content/ComponentName;)Z
    .locals 2
    .parameter "className"

    .prologue
    .line 357
    iget-object v1, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 358
    :try_start_0
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowList:Lcom/android/server/sec/MultiWindowDataList;

    invoke-virtual {v0, p1}, Lcom/android/server/sec/MultiWindowDataList;->isMultiWindowFromAll(Landroid/content/ComponentName;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 359
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
    .line 1529
    iget-object v4, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1530
    const/4 v0, 0x0

    .line 1532
    .local v0, Result:Z
    :try_start_0
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v3, :cond_0

    .line 1533
    monitor-exit v4

    move v1, v0

    .line 1543
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 1535
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v3}, Lcom/android/server/sec/MultiWindowModule;->getMultiWindowType()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v3

    sget-object v5, Landroid/sec/multiwindow/MultiWindowType;->eFreestyleWindow:Landroid/sec/multiwindow/MultiWindowType;

    if-ne v3, v5, :cond_1

    .line 1536
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    check-cast v2, Lcom/android/server/sec/FreestyleWindowModule;

    .line 1537
    .local v2, fwm:Lcom/android/server/sec/FreestyleWindowModule;
    invoke-virtual {v2, p1}, Lcom/android/server/sec/FreestyleWindowModule;->arrangeWindows(I)Z

    move-result v0

    .line 1543
    .end local v2           #fwm:Lcom/android/server/sec/FreestyleWindowModule;
    :goto_1
    monitor-exit v4

    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .line 1540
    .end local v1           #Result:I
    :cond_1
    const-string v3, "MultiWindowManagerService"

    const-string v5, "[arrangeWindows] This API want MultiWindowType.eFreestyleWindow"

    invoke-static {v3, v5}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1544
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
    .line 1860
    iget-object v1, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1861
    :try_start_0
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v0, :cond_0

    .line 1862
    monitor-exit v1

    .line 1866
    :goto_0
    return-void

    .line 1864
    :cond_0
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v0}, Lcom/android/server/sec/MultiWindowModule;->callEnsureActivity()V

    .line 1865
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
    .line 1684
    iget-object v4, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1685
    const/4 v0, 0x0

    .line 1686
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

    .line 1688
    :cond_0
    monitor-exit v4

    move-object v1, v0

    .line 1695
    .end local v0           #Result:Landroid/graphics/Bitmap;
    .local v1, Result:Landroid/graphics/Bitmap;
    :goto_0
    return-object v1

    .line 1690
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

    .line 1691
    .local v2, item:Lcom/android/server/sec/MWPackageItem;
    if-eqz v2, :cond_2

    .line 1692
    invoke-virtual {v2}, Lcom/android/server/sec/MWPackageItem;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1693
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

    .line 1695
    monitor-exit v4

    move-object v1, v0

    .end local v0           #Result:Landroid/graphics/Bitmap;
    .restart local v1       #Result:Landroid/graphics/Bitmap;
    goto :goto_0

    .line 1696
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
    .line 1309
    iget-object v1, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1310
    :try_start_0
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v0, :cond_0

    .line 1311
    monitor-exit v1

    .line 1315
    :goto_0
    return-void

    .line 1313
    :cond_0
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/sec/MultiWindowModule;->changVisibleFocusMultiWindow(Landroid/content/ComponentName;I)V

    .line 1314
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
    .line 1330
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1331
    :try_start_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 1332
    :cond_0
    monitor-exit v3

    .line 1343
    :goto_0
    return-void

    .line 1334
    :cond_1
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2}, Lcom/android/server/sec/MultiWindowModule;->getList()Lcom/android/server/sec/IMultiWindowList;

    move-result-object v1

    .line 1335
    .local v1, list:Lcom/android/server/sec/IMultiWindowList;
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/server/sec/IMultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v0

    .line 1336
    .local v0, item:Lcom/android/server/sec/MWPackageItem;
    if-nez v0, :cond_2

    .line 1337
    monitor-exit v3

    goto :goto_0

    .line 1341
    .end local v0           #item:Lcom/android/server/sec/MWPackageItem;
    .end local v1           #list:Lcom/android/server/sec/IMultiWindowList;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1339
    .restart local v0       #item:Lcom/android/server/sec/MWPackageItem;
    .restart local v1       #list:Lcom/android/server/sec/IMultiWindowList;
    :cond_2
    :try_start_1
    invoke-interface {v1, v0}, Lcom/android/server/sec/IMultiWindowList;->remove(Ljava/lang/Object;)Z

    .line 1340
    invoke-interface {v1, v0}, Lcom/android/server/sec/IMultiWindowList;->add(Ljava/lang/Object;)Z

    .line 1341
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
    .line 1428
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1429
    const/4 v0, 0x0

    .line 1431
    .local v0, Result:Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/sec/MultiWindowManagerService;->isAllMultiWindow(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1432
    monitor-exit v3

    move v1, v0

    .line 1439
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 1434
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_1

    .line 1435
    monitor-exit v3

    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .line 1437
    .end local v1           #Result:I
    :cond_1
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/sec/MultiWindowModule;->destroyActivity(Landroid/content/ComponentName;I)Z

    move-result v0

    .line 1439
    monitor-exit v3

    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .line 1440
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
    .line 1935
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1937
    :try_start_0
    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1938
    const-string v2, "----------------------------------------------------------------------"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1939
    const-string v2, "MULTIWINDOW SERVICE (dumpsys multiwindow service)"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1940
    const/4 v1, 0x0

    .line 1941
    .local v1, opti:I
    array-length v2, p3

    if-ge v1, v2, :cond_7

    .line 1942
    aget-object v0, p3, v1

    .line 1943
    .local v0, cmd:Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    .line 1944
    const-string v2, "c"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1945
    invoke-direct {p0, p2}, Lcom/android/server/sec/MultiWindowManagerService;->dumpReadConfig(Ljava/io/PrintWriter;)V

    .line 1986
    .end local v0           #cmd:Ljava/lang/String;
    :goto_0
    const-string v2, "----------------------------------------------------------------------"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1987
    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1988
    monitor-exit v3

    .line 1989
    return-void

    .line 1946
    .restart local v0       #cmd:Ljava/lang/String;
    :cond_0
    const-string v2, "g"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1947
    invoke-direct {p0, p2}, Lcom/android/server/sec/MultiWindowManagerService;->dumpRegisterList(Ljava/io/PrintWriter;)V

    goto :goto_0

    .line 1988
    .end local v0           #cmd:Ljava/lang/String;
    .end local v1           #opti:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1948
    .restart local v0       #cmd:Ljava/lang/String;
    .restart local v1       #opti:I
    :cond_1
    :try_start_1
    const-string v2, "r"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1949
    invoke-direct {p0, p2}, Lcom/android/server/sec/MultiWindowManagerService;->dumpRunningList(Ljava/io/PrintWriter;)V

    goto :goto_0

    .line 1950
    :cond_2
    const-string v2, "m"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1951
    invoke-direct {p0, p2}, Lcom/android/server/sec/MultiWindowManagerService;->dumpMultiWindowMode(Ljava/io/PrintWriter;)V

    goto :goto_0

    .line 1952
    :cond_3
    const-string v2, "a"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1953
    invoke-direct {p0, p2}, Lcom/android/server/sec/MultiWindowManagerService;->dumpMultiWindowMode(Ljava/io/PrintWriter;)V

    .line 1954
    invoke-direct {p0, p2}, Lcom/android/server/sec/MultiWindowManagerService;->dumpReadConfig(Ljava/io/PrintWriter;)V

    .line 1955
    invoke-direct {p0, p2}, Lcom/android/server/sec/MultiWindowManagerService;->dumpRegisterList(Ljava/io/PrintWriter;)V

    .line 1956
    invoke-direct {p0, p2}, Lcom/android/server/sec/MultiWindowManagerService;->dumpRunningList(Ljava/io/PrintWriter;)V

    goto :goto_0

    .line 1957
    :cond_4
    const-string v2, "-a"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1958
    invoke-direct {p0, p2}, Lcom/android/server/sec/MultiWindowManagerService;->dumpMultiWindowMode(Ljava/io/PrintWriter;)V

    .line 1959
    invoke-direct {p0, p2}, Lcom/android/server/sec/MultiWindowManagerService;->dumpReadConfig(Ljava/io/PrintWriter;)V

    .line 1960
    invoke-direct {p0, p2}, Lcom/android/server/sec/MultiWindowManagerService;->dumpRegisterList(Ljava/io/PrintWriter;)V

    .line 1961
    invoke-direct {p0, p2}, Lcom/android/server/sec/MultiWindowManagerService;->dumpRunningList(Ljava/io/PrintWriter;)V

    goto :goto_0

    .line 1962
    :cond_5
    const-string v2, "-h"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1963
    const-string v2, "multiwindow service dump options:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1964
    const-string v2, "  a[all]: all state"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1965
    const-string v2, "  c[config]: config state"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1966
    const-string v2, "  g[register]: register list"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1967
    const-string v2, "  r[running]: running list"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1968
    const-string v2, "  m[windowMode]: multiwindow type"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1970
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

    .line 1971
    const-string v2, "Use -h for help."

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1974
    .end local v0           #cmd:Ljava/lang/String;
    :cond_7
    const-string v2, "multiwindow service dump options:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1975
    const-string v2, "  a or -a[all]: all state"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1976
    const-string v2, "  c[config]: config state"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1977
    const-string v2, "  g[register]: register list"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1978
    const-string v2, "  r[running]: running list"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1979
    const-string v2, "  m[windowMode]: multiwindow type"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1981
    invoke-direct {p0, p2}, Lcom/android/server/sec/MultiWindowManagerService;->dumpMultiWindowMode(Ljava/io/PrintWriter;)V

    .line 1982
    invoke-direct {p0, p2}, Lcom/android/server/sec/MultiWindowManagerService;->dumpReadConfig(Ljava/io/PrintWriter;)V

    .line 1983
    invoke-direct {p0, p2}, Lcom/android/server/sec/MultiWindowManagerService;->dumpRegisterList(Ljava/io/PrintWriter;)V

    .line 1984
    invoke-direct {p0, p2}, Lcom/android/server/sec/MultiWindowManagerService;->dumpRunningList(Ljava/io/PrintWriter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public exchangeSplitScreens()Z
    .locals 5

    .prologue
    .line 1765
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1766
    const/4 v0, 0x0

    .line 1768
    .local v0, Result:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_0

    .line 1769
    monitor-exit v3

    .line 1776
    .end local v0           #Result:Z
    :goto_0
    return v0

    .line 1771
    .restart local v0       #Result:Z
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2}, Lcom/android/server/sec/MultiWindowModule;->getMultiWindowType()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v2

    sget-object v4, Landroid/sec/multiwindow/MultiWindowType;->eSplitWindow:Landroid/sec/multiwindow/MultiWindowType;

    if-ne v2, v4, :cond_1

    .line 1772
    iget-object v1, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    check-cast v1, Lcom/android/server/sec/SplitWindowModule;

    .line 1773
    .local v1, swm:Lcom/android/server/sec/SplitWindowModule;
    invoke-virtual {v1}, Lcom/android/server/sec/SplitWindowModule;->exchangeSplitScreens()Z

    move-result v0

    .end local v0           #Result:Z
    monitor-exit v3

    goto :goto_0

    .line 1777
    .end local v1           #swm:Lcom/android/server/sec/SplitWindowModule;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1776
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
    .line 1126
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1127
    const/4 v0, 0x0

    .line 1129
    .local v0, Result:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_0

    .line 1130
    monitor-exit v3

    move v1, v0

    .line 1138
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 1133
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/sec/MultiWindowModule;->finishActivity(Landroid/content/ComponentName;I)Z

    move-result v0

    .line 1135
    if-nez v0, :cond_1

    .line 1136
    monitor-exit v3

    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .line 1138
    .end local v1           #Result:I
    :cond_1
    monitor-exit v3

    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .line 1139
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
    .line 816
    iget-object v1, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 817
    :try_start_0
    const-string v0, "MultiWindowManagerService"

    const-string v2, "[finishAllWindow]"

    invoke-static {v0, v2}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v0, :cond_0

    .line 820
    const/4 v0, 0x0

    monitor-exit v1

    .line 824
    :goto_0
    return v0

    .line 822
    :cond_0
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v0}, Lcom/android/server/sec/MultiWindowModule;->finishAllWindow()Z

    .line 824
    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_0

    .line 825
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
    .line 1144
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1145
    const/4 v0, 0x0

    .line 1146
    .local v0, Result:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_0

    .line 1147
    monitor-exit v3

    move v1, v0

    .line 1153
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 1149
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowManagerService;->callEnsureActivity()V

    .line 1151
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2, p1}, Lcom/android/server/sec/MultiWindowModule;->finishAppPid(I)Z

    move-result v0

    .line 1153
    monitor-exit v3

    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .line 1154
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

    .line 1744
    iget-object v1, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1745
    :try_start_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_0

    .line 1746
    monitor-exit v1

    .line 1754
    :goto_0
    return v0

    .line 1748
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2}, Lcom/android/server/sec/MultiWindowModule;->getMultiWindowType()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v2

    sget-object v3, Landroid/sec/multiwindow/MultiWindowType;->eFreestyleWindow:Landroid/sec/multiwindow/MultiWindowType;

    if-eq v2, v3, :cond_1

    .line 1750
    const-string v2, "MultiWindowManagerService"

    const-string v3, "[fitToHalf] This API want MultiWindowType.eFreestyleWindow "

    invoke-static {v2, v3}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1751
    monitor-exit v1

    goto :goto_0

    .line 1755
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1754
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
    .line 594
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 595
    const/4 v0, -0x1

    .line 597
    .local v0, Result:I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_0

    .line 598
    monitor-exit v3

    move v1, v0

    .line 601
    .end local v0           #Result:I
    .local v1, Result:I
    :goto_0
    return v1

    .line 600
    .end local v1           #Result:I
    .restart local v0       #Result:I
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2, p1}, Lcom/android/server/sec/MultiWindowModule;->getHeight(Landroid/content/ComponentName;)I

    move-result v0

    .line 601
    monitor-exit v3

    move v1, v0

    .end local v0           #Result:I
    .restart local v1       #Result:I
    goto :goto_0

    .line 602
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
    .line 1598
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1599
    :try_start_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_0

    .line 1600
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    monitor-exit v3

    .line 1612
    :goto_0
    return-object v0

    .line 1602
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2, p1}, Lcom/android/server/sec/MultiWindowModule;->getMinimum(Landroid/content/ComponentName;)Landroid/graphics/Rect;

    move-result-object v0

    .line 1603
    .local v0, Result:Landroid/graphics/Rect;
    if-nez v0, :cond_1

    .line 1604
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowList:Lcom/android/server/sec/MultiWindowDataList;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/server/sec/MultiWindowDataList;->getDataItem(Ljava/lang/String;)Lcom/android/server/sec/MultiWindowDataItem;

    move-result-object v1

    .line 1605
    .local v1, item:Lcom/android/server/sec/MultiWindowDataItem;
    if-eqz v1, :cond_2

    .line 1606
    new-instance v0, Landroid/graphics/Rect;

    .end local v0           #Result:Landroid/graphics/Rect;
    const/4 v2, 0x0

    const/4 v4, 0x0

    iget v5, v1, Lcom/android/server/sec/MultiWindowDataItem;->minWidth:I

    iget v6, v1, Lcom/android/server/sec/MultiWindowDataItem;->minHeight:I

    invoke-direct {v0, v2, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1612
    .end local v1           #item:Lcom/android/server/sec/MultiWindowDataItem;
    .restart local v0       #Result:Landroid/graphics/Rect;
    :cond_1
    :goto_1
    monitor-exit v3

    goto :goto_0

    .line 1613
    .end local v0           #Result:Landroid/graphics/Rect;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1608
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
    .line 1840
    iget-object v1, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1841
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiLayoutUsed:Z

    monitor-exit v1

    return v0

    .line 1842
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
    .line 310
    iget-object v5, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 311
    :try_start_0
    const-string v4, "MultiWindowManagerService"

    const-string v6, "[getMultiWindowList]"

    invoke-static {v4, v6}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 313
    .local v0, Result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    iget-object v4, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowList:Lcom/android/server/sec/MultiWindowDataList;

    invoke-virtual {v4}, Lcom/android/server/sec/MultiWindowDataList;->getNormal()Ljava/util/List;

    move-result-object v3

    .line 314
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

    .line 315
    .local v2, item:Lcom/android/server/sec/MultiWindowDataItem;
    iget-object v4, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    iget-object v6, v2, Lcom/android/server/sec/MultiWindowDataItem;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4, v6}, Lcom/android/server/sec/MultiWindowModule;->isCaptureActivity(Landroid/content/ComponentName;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 316
    iget-object v4, v2, Lcom/android/server/sec/MultiWindowDataItem;->componentName:Landroid/content/ComponentName;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 331
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

    .line 330
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
    .line 474
    iget-object v5, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 475
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 476
    .local v0, Result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    iget-object v4, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowList:Lcom/android/server/sec/MultiWindowDataList;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/server/sec/MultiWindowDataList;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 477
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

    .line 478
    .local v2, item:Lcom/android/server/sec/MultiWindowDataItem;
    iget-object v4, v2, Lcom/android/server/sec/MultiWindowDataItem;->componentName:Landroid/content/ComponentName;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 481
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

    .line 480
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
    .line 490
    iget-object v5, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 491
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 492
    .local v0, Result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    iget-object v4, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowList:Lcom/android/server/sec/MultiWindowDataList;

    invoke-virtual {v4}, Lcom/android/server/sec/MultiWindowDataList;->getKeys()Ljava/util/List;

    move-result-object v3

    .line 493
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

    .line 494
    .local v2, item:Lcom/android/server/sec/MultiWindowDataItem;
    iget-object v4, v2, Lcom/android/server/sec/MultiWindowDataItem;->componentName:Landroid/content/ComponentName;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 497
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

    .line 496
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
    .line 240
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowManagerService;->mWindowType:Landroid/sec/multiwindow/MultiWindowType;

    invoke-virtual {v0}, Landroid/sec/multiwindow/MultiWindowType;->getiValue()I

    move-result v0

    return v0
.end method

.method public getPinupWindow()Landroid/content/ComponentName;
    .locals 4

    .prologue
    .line 1511
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1512
    const/4 v0, 0x0

    .line 1513
    .local v0, Result:Landroid/content/ComponentName;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_0

    .line 1514
    monitor-exit v3

    move-object v1, v0

    .line 1518
    .end local v0           #Result:Landroid/content/ComponentName;
    .local v1, Result:Landroid/content/ComponentName;
    :goto_0
    return-object v1

    .line 1516
    .end local v1           #Result:Landroid/content/ComponentName;
    .restart local v0       #Result:Landroid/content/ComponentName;
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2}, Lcom/android/server/sec/MultiWindowModule;->getPinupWindow()Landroid/content/ComponentName;

    move-result-object v0

    .line 1518
    monitor-exit v3

    move-object v1, v0

    .end local v0           #Result:Landroid/content/ComponentName;
    .restart local v1       #Result:Landroid/content/ComponentName;
    goto :goto_0

    .line 1519
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
    .line 1043
    iget-object v4, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1044
    const/4 v1, 0x0

    .line 1045
    .local v1, Result:Landroid/sec/multiwindow/MultiWindowObject;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v3, :cond_0

    .line 1046
    monitor-exit v4

    move-object v2, v1

    .line 1052
    .end local v1           #Result:Landroid/sec/multiwindow/MultiWindowObject;
    .local v2, Result:Landroid/sec/multiwindow/MultiWindowObject;
    :goto_0
    return-object v2

    .line 1048
    .end local v2           #Result:Landroid/sec/multiwindow/MultiWindowObject;
    .restart local v1       #Result:Landroid/sec/multiwindow/MultiWindowObject;
    :cond_0
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v3, p1}, Lcom/android/server/sec/MultiWindowModule;->getPositionOfWindow(Landroid/content/ComponentName;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v0

    .line 1049
    .local v0, Item:Lcom/android/server/sec/MWPackageItem;
    if-eqz v0, :cond_1

    .line 1050
    invoke-virtual {v0}, Lcom/android/server/sec/MWPackageItem;->toObject()Landroid/sec/multiwindow/MultiWindowObject;

    move-result-object v1

    .line 1052
    :cond_1
    monitor-exit v4

    move-object v2, v1

    .end local v1           #Result:Landroid/sec/multiwindow/MultiWindowObject;
    .restart local v2       #Result:Landroid/sec/multiwindow/MultiWindowObject;
    goto :goto_0

    .line 1053
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
    .line 1063
    const/4 v1, 0x0

    .line 1064
    .local v1, Result:Landroid/sec/multiwindow/MultiWindowObject;
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v3, :cond_0

    move-object v2, v1

    .line 1071
    .end local v1           #Result:Landroid/sec/multiwindow/MultiWindowObject;
    .local v2, Result:Landroid/sec/multiwindow/MultiWindowObject;
    :goto_0
    return-object v2

    .line 1067
    .end local v2           #Result:Landroid/sec/multiwindow/MultiWindowObject;
    .restart local v1       #Result:Landroid/sec/multiwindow/MultiWindowObject;
    :cond_0
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v3, p1}, Lcom/android/server/sec/MultiWindowModule;->getPositionOfWindow(Landroid/content/ComponentName;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v0

    .line 1068
    .local v0, Item:Lcom/android/server/sec/MWPackageItem;
    if-eqz v0, :cond_1

    .line 1069
    invoke-virtual {v0, p1, p2}, Lcom/android/server/sec/MWPackageItem;->toObject(Landroid/content/ComponentName;I)Landroid/sec/multiwindow/MultiWindowObject;

    move-result-object v1

    :cond_1
    move-object v2, v1

    .line 1071
    .end local v1           #Result:Landroid/sec/multiwindow/MultiWindowObject;
    .restart local v2       #Result:Landroid/sec/multiwindow/MultiWindowObject;
    goto :goto_0
.end method

.method public getResumedWindow()Landroid/content/ComponentName;
    .locals 3

    .prologue
    .line 800
    iget-object v1, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 801
    :try_start_0
    const-string v0, "MultiWindowManagerService"

    const-string v2, "[getResumedWindow]"

    invoke-static {v0, v2}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v0, :cond_0

    .line 804
    const/4 v0, 0x0

    monitor-exit v1

    .line 806
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v0}, Lcom/android/server/sec/MultiWindowModule;->getResumedWindow()Landroid/content/ComponentName;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 807
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
    .line 533
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 535
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v1, :cond_0

    .line 536
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 541
    .local v0, Result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :goto_0
    monitor-exit v2

    return-object v0

    .line 538
    .end local v0           #Result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :cond_0
    iget-object v1, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v1}, Lcom/android/server/sec/MultiWindowModule;->getRunningWindowList()Ljava/util/List;

    move-result-object v0

    .restart local v0       #Result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    goto :goto_0

    .line 542
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
    .line 1855
    iget-object v1, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1856
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/sec/MultiWindowManagerService;->mScreenOn:Z

    monitor-exit v1

    return v0

    .line 1857
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
    .line 2052
    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowManagerService;->getRunningWindowList()Ljava/util/List;

    move-result-object v4

    .line 2053
    .local v4, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2054
    .local v5, splitList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    iget-object v7, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-eqz v7, :cond_2

    .line 2055
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 2056
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 2057
    .local v3, item:Landroid/content/ComponentName;
    iget-object v7, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v7}, Lcom/android/server/sec/MultiWindowModule;->getList()Lcom/android/server/sec/IMultiWindowList;

    move-result-object v7

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/android/server/sec/IMultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v2

    .line 2058
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

    .line 2059
    .local v6, tItem:Lcom/android/server/sec/MWPackageItem$taskItem;
    invoke-virtual {v6}, Lcom/android/server/sec/MWPackageItem$taskItem;->tiGetFullScreenLock()Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;

    move-result-object v7

    sget-object v8, Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;->FALSE:Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;

    if-ne v7, v8, :cond_1

    .line 2060
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

    .line 2061
    invoke-virtual {v2}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemLastName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2067
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #im:Lcom/android/server/sec/MWPackageItem;
    .end local v3           #item:Landroid/content/ComponentName;
    .end local v6           #tItem:Lcom/android/server/sec/MWPackageItem$taskItem;
    :cond_2
    const-string v7, "MultiWindowManagerService"

    const-string v8, "[getSplitList] empty "

    invoke-static {v7, v8}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2070
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
    .line 767
    iget-object v1, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 768
    :try_start_0
    const-string v0, "MultiWindowManagerService"

    const-string v2, "[getVisibleWindowList]"

    invoke-static {v0, v2}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v0, :cond_0

    .line 771
    const/4 v0, 0x0

    monitor-exit v1

    .line 773
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v0}, Lcom/android/server/sec/MultiWindowModule;->getVisibleWindowList()Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 774
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
    .line 575
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 576
    const/4 v0, -0x1

    .line 578
    .local v0, Result:I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_0

    .line 579
    monitor-exit v3

    move v1, v0

    .line 582
    .end local v0           #Result:I
    .local v1, Result:I
    :goto_0
    return v1

    .line 581
    .end local v1           #Result:I
    .restart local v0       #Result:I
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2, p1}, Lcom/android/server/sec/MultiWindowModule;->getWidth(Landroid/content/ComponentName;)I

    move-result v0

    .line 582
    monitor-exit v3

    move v1, v0

    .end local v0           #Result:I
    .restart local v1       #Result:I
    goto :goto_0

    .line 583
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

    .line 1183
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1184
    :try_start_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1186
    .local v1, packageName:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v4, :cond_0

    .line 1187
    monitor-exit v3

    .line 1193
    :goto_0
    return-object v2

    .line 1188
    :cond_0
    iget-object v4, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v4}, Lcom/android/server/sec/MultiWindowModule;->getList()Lcom/android/server/sec/IMultiWindowList;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/android/server/sec/IMultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v0

    .line 1190
    .local v0, item:Lcom/android/server/sec/MWPackageItem;
    if-nez v0, :cond_1

    .line 1191
    monitor-exit v3

    goto :goto_0

    .line 1194
    .end local v0           #item:Lcom/android/server/sec/MWPackageItem;
    .end local v1           #packageName:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1193
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
    .line 1228
    iget-object v1, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1229
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/sec/MultiWindowManagerService;->isAllMultiWindow(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1230
    monitor-exit v1

    .line 1237
    :goto_0
    return-void

    .line 1232
    :cond_0
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v0, :cond_1

    .line 1233
    monitor-exit v1

    goto :goto_0

    .line 1236
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1235
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/sec/MultiWindowModule;->initWindowClassInfo(Landroid/content/ComponentName;I)V

    .line 1236
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public isDuplicated(Landroid/content/ComponentName;)Z
    .locals 4
    .parameter "className"

    .prologue
    .line 749
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 750
    const/4 v0, 0x0

    .line 752
    .local v0, Result:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_0

    .line 753
    monitor-exit v3

    move v1, v0

    .line 757
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 755
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2, p1}, Lcom/android/server/sec/MultiWindowModule;->isDuplicated(Landroid/content/ComponentName;)Z

    move-result v0

    .line 757
    monitor-exit v3

    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .line 758
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
    .line 695
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 696
    const/4 v0, 0x1

    .line 698
    .local v0, Result:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_0

    .line 699
    monitor-exit v3

    move v1, v0

    .line 703
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 701
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2, p1}, Lcom/android/server/sec/MultiWindowModule;->isMaximized(Landroid/content/ComponentName;)Z

    move-result v0

    .line 703
    monitor-exit v3

    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .line 704
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
    .line 732
    const/4 v0, 0x1

    .line 734
    .local v0, Result:Z
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_0

    move v1, v0

    .line 739
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 737
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/sec/MultiWindowModule;->isMaximized(Landroid/content/ComponentName;I)Z

    move-result v0

    .line 738
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

    .line 739
    .restart local v1       #Result:I
    goto :goto_0
.end method

.method public isMultiWindow(Landroid/content/ComponentName;)Z
    .locals 6
    .parameter "className"

    .prologue
    .line 341
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 342
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowList:Lcom/android/server/sec/MultiWindowDataList;

    invoke-virtual {v1, p1}, Lcom/android/server/sec/MultiWindowDataList;->isMultiWindow(Landroid/content/ComponentName;)Z

    move-result v0

    .line 345
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

    .line 346
    monitor-exit v2

    return v0

    .line 347
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
    .line 521
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 522
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowList:Lcom/android/server/sec/MultiWindowDataList;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, p2}, Lcom/android/server/sec/MultiWindowDataList;->isMultiWindow(Ljava/lang/String;Landroid/content/ComponentName;)Z

    move-result v0

    .line 523
    .local v0, Result:Z
    monitor-exit v2

    return v0

    .line 524
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
    .line 249
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
    .line 1549
    iget-object v4, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1550
    const/4 v0, 0x0

    .line 1552
    .local v0, RESULT:Z
    :try_start_0
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v3, :cond_0

    .line 1553
    monitor-exit v4

    move v1, v0

    .line 1560
    .end local v0           #RESULT:Z
    .local v1, RESULT:I
    :goto_0
    return v1

    .line 1555
    .end local v1           #RESULT:I
    .restart local v0       #RESULT:Z
    :cond_0
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v3}, Lcom/android/server/sec/MultiWindowModule;->getMultiWindowType()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v3

    sget-object v5, Landroid/sec/multiwindow/MultiWindowType;->eNothing:Landroid/sec/multiwindow/MultiWindowType;

    if-eq v3, v5, :cond_1

    .line 1556
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    .line 1557
    .local v2, fwm:Lcom/android/server/sec/MultiWindowModule;
    invoke-virtual {v2}, Lcom/android/server/sec/MultiWindowModule;->isPermissionOff()Z

    move-result v0

    .line 1560
    .end local v2           #fwm:Lcom/android/server/sec/MultiWindowModule;
    :cond_1
    monitor-exit v4

    move v1, v0

    .restart local v1       #RESULT:I
    goto :goto_0

    .line 1561
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
    .line 1495
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1496
    const/4 v0, 0x0

    .line 1497
    .local v0, Result:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_0

    .line 1498
    monitor-exit v3

    move v1, v0

    .line 1502
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 1500
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2, p1}, Lcom/android/server/sec/MultiWindowModule;->isPinupWindow(Landroid/content/ComponentName;)Z

    move-result v0

    .line 1502
    monitor-exit v3

    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .line 1503
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
    .line 553
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 554
    const/4 v0, 0x0

    .line 556
    .local v0, Result:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_0

    .line 557
    monitor-exit v3

    move v1, v0

    .line 563
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 559
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    if-eqz p1, :cond_1

    .line 560
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2, p1}, Lcom/android/server/sec/MultiWindowModule;->isRunning(Landroid/content/ComponentName;)Z

    move-result v0

    .line 563
    :cond_1
    monitor-exit v3

    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .line 564
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
    .line 904
    iget-object v1, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 905
    :try_start_0
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v0, :cond_0

    .line 906
    const/4 v0, 0x0

    monitor-exit v1

    .line 908
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v0}, Lcom/android/server/sec/MultiWindowModule;->hasFullSreen()Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 909
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
    .line 709
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 710
    const/4 v0, 0x0

    .line 712
    .local v0, Result:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_0

    .line 713
    monitor-exit v3

    move v1, v0

    .line 719
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 715
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

    .line 717
    .end local v1           #Result:I
    :cond_1
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    check-cast v2, Lcom/android/server/sec/SplitWindowModule;

    invoke-virtual {v2, p1}, Lcom/android/server/sec/SplitWindowModule;->isStartingSplitScreen(Landroid/content/ComponentName;)Z

    move-result v0

    .line 719
    monitor-exit v3

    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .line 720
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
    .line 785
    iget-object v1, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 786
    :try_start_0
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v0, :cond_0

    .line 787
    const/4 v0, 0x0

    monitor-exit v1

    .line 789
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v0, p1}, Lcom/android/server/sec/MultiWindowModule;->isVisible(Landroid/content/ComponentName;)Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 790
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
    .line 612
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 613
    const/4 v0, 0x0

    .line 615
    .local v0, Result:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_0

    .line 616
    monitor-exit v3

    move v1, v0

    .line 620
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 618
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2, p1}, Lcom/android/server/sec/MultiWindowModule;->maximize(Landroid/content/ComponentName;)Z

    move-result v0

    .line 620
    monitor-exit v3

    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .line 621
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
    .line 648
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 649
    const/4 v0, 0x0

    .line 651
    .local v0, Result:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_0

    .line 652
    monitor-exit v3

    move v1, v0

    .line 656
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 654
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2}, Lcom/android/server/sec/MultiWindowModule;->maximizeAll()Z

    move-result v0

    .line 656
    monitor-exit v3

    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .line 657
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
    .line 667
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 668
    const/4 v0, 0x0

    .line 670
    .local v0, Result:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_0

    .line 671
    monitor-exit v3

    move v1, v0

    .line 681
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 673
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2}, Lcom/android/server/sec/MultiWindowModule;->getMultiWindowType()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v2

    sget-object v4, Landroid/sec/multiwindow/MultiWindowType;->eSplitWindow:Landroid/sec/multiwindow/MultiWindowType;

    if-ne v2, v4, :cond_1

    .line 675
    const-string v2, "MultiWindowManagerService"

    const-string v4, "[fitToHalf] This API can not MultiWindowType.eSplitWindow "

    invoke-static {v2, v4}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    monitor-exit v3

    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .line 679
    .end local v1           #Result:I
    :cond_1
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2, p1}, Lcom/android/server/sec/MultiWindowModule;->minimize(Landroid/content/ComponentName;)Z

    move-result v0

    .line 681
    monitor-exit v3

    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .line 682
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
    .line 882
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 883
    const/4 v0, 0x0

    .line 885
    .local v0, Result:Z
    :try_start_0
    const-string v2, "MultiWindowManagerService"

    const-string v4, "[finishedSelfWindow]"

    invoke-static {v2, v4}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_0

    .line 888
    monitor-exit v3

    move v1, v0

    .line 892
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 891
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/sec/MultiWindowModule;->finishedSelfWindow(Landroid/content/ComponentName;I)Z

    move-result v0

    .line 892
    monitor-exit v3

    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .line 893
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
    .line 1449
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1450
    const/4 v0, 0x0

    .line 1452
    .local v0, Result:Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/sec/MultiWindowManagerService;->isAllMultiWindow(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1453
    monitor-exit v3

    move v1, v0

    .line 1466
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 1455
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_1

    .line 1456
    monitor-exit v3

    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .line 1458
    .end local v1           #Result:I
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowManagerService;->callEnsureActivity()V

    .line 1461
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

    .line 1463
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2, p1}, Lcom/android/server/sec/MultiWindowModule;->checkForceFinishedMultiWindow(Landroid/content/ComponentName;)Z

    move-result v0

    .line 1464
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2, p1}, Lcom/android/server/sec/MultiWindowModule;->finishOtherStateChanged(Landroid/content/ComponentName;)V

    .line 1466
    monitor-exit v3

    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .line 1467
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
    .line 1921
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1922
    const/4 v0, 0x0

    .line 1924
    .local v0, Result:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_0

    .line 1925
    monitor-exit v3

    move v1, v0

    .line 1929
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 1927
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2, p1}, Lcom/android/server/sec/MultiWindowModule;->notifySIP(I)Z

    move-result v0

    .line 1929
    monitor-exit v3

    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .line 1930
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
    .line 858
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 859
    const/4 v0, 0x0

    .line 861
    .local v0, Result:Z
    :try_start_0
    const-string v1, "MultiWindowManagerService"

    const-string v3, "[startedSelfWindow]"

    invoke-static {v1, v3}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    iget-object v1, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v1, :cond_0

    .line 863
    monitor-exit v2

    .line 870
    :goto_0
    return v0

    :cond_0
    monitor-exit v2

    goto :goto_0

    .line 871
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
    .line 1623
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1624
    const/4 v0, 0x0

    .line 1626
    .local v0, Result:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_0

    .line 1627
    monitor-exit v3

    move v1, v0

    .line 1631
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 1629
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/sec/MultiWindowModule;->orientationChangeRestore(Landroid/content/ComponentName;I)Z

    move-result v0

    .line 1631
    monitor-exit v3

    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .line 1632
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
    .line 1642
    iget-object v6, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1643
    const/4 v0, 0x0

    .line 1645
    .local v0, Result:Z
    :try_start_0
    iget-object v5, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    iget-object v5, v5, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    if-nez v5, :cond_1

    .line 1646
    :cond_0
    monitor-exit v6

    move v1, v0

    .line 1673
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 1648
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_1
    iget-object v5, p0, Lcom/android/server/sec/MultiWindowManagerService;->mWindowType:Landroid/sec/multiwindow/MultiWindowType;

    sget-object v7, Landroid/sec/multiwindow/MultiWindowType;->eNothing:Landroid/sec/multiwindow/MultiWindowType;

    invoke-virtual {v5, v7}, Landroid/sec/multiwindow/MultiWindowType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1673
    :cond_2
    :goto_1
    monitor-exit v6

    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .line 1650
    .end local v1           #Result:I
    :cond_3
    iget-object v5, p0, Lcom/android/server/sec/MultiWindowManagerService;->mWindowType:Landroid/sec/multiwindow/MultiWindowType;

    sget-object v7, Landroid/sec/multiwindow/MultiWindowType;->eSplitWindow:Landroid/sec/multiwindow/MultiWindowType;

    invoke-virtual {v5, v7}, Landroid/sec/multiwindow/MultiWindowType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1652
    iget-object v5, p0, Lcom/android/server/sec/MultiWindowManagerService;->mWindowType:Landroid/sec/multiwindow/MultiWindowType;

    sget-object v7, Landroid/sec/multiwindow/MultiWindowType;->eFreestyleWindow:Landroid/sec/multiwindow/MultiWindowType;

    invoke-virtual {v5, v7}, Landroid/sec/multiwindow/MultiWindowType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1653
    iget-object v5, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    iget-object v5, v5, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {v5}, Lcom/android/server/sec/MultiWindowList;->runSize()I

    move-result v5

    if-lez v5, :cond_2

    .line 1654
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

    .line 1656
    :cond_4
    monitor-exit v6

    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .line 1658
    .end local v1           #Result:I
    :cond_5
    iget-object v5, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    iget-object v5, v5, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {v5}, Lcom/android/server/sec/MultiWindowList;->getFocusItem()Lcom/android/server/sec/MWPackageItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemLast()Lcom/android/server/sec/MWClassItem;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1659
    iget-object v5, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    iget-object v5, v5, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {v5}, Lcom/android/server/sec/MultiWindowList;->getFocusItem()Lcom/android/server/sec/MWPackageItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemLast()Lcom/android/server/sec/MWClassItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/sec/MWClassItem;->getMultiWindowVisibleFlag()I

    move-result v2

    .line 1660
    .local v2, flag:I
    iget-object v5, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    iget-object v5, v5, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {v5}, Lcom/android/server/sec/MultiWindowList;->getFocusItem()Lcom/android/server/sec/MWPackageItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/sec/MWPackageItem;->getLastResumedTaskID()I

    move-result v4

    .line 1661
    .local v4, taskId:I
    iget-object v5, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    iget-object v5, v5, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {v5}, Lcom/android/server/sec/MultiWindowList;->getFocusItem()Lcom/android/server/sec/MWPackageItem;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/server/sec/MWPackageItem;->isFullScreen(I)Z

    move-result v3

    .line 1662
    .local v3, maimizeFlag:Z
    and-int/lit8 v5, v2, 0x1

    const/4 v7, 0x1

    if-ne v5, v7, :cond_6

    if-nez v3, :cond_2

    .line 1665
    :cond_6
    const/4 v0, 0x1

    goto :goto_1

    .line 1669
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

    .line 1674
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
    .line 1410
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1411
    const/4 v0, 0x0

    .line 1413
    .local v0, Result:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_0

    .line 1414
    monitor-exit v3

    move v1, v0

    .line 1418
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 1416
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2, p1}, Lcom/android/server/sec/MultiWindowModule;->pauseChangeInformation(Landroid/content/ComponentName;)Z

    move-result v0

    .line 1418
    monitor-exit v3

    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .line 1419
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
    .line 1476
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1477
    const/4 v0, 0x0

    .line 1478
    .local v0, Result:Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/sec/MultiWindowManagerService;->isAllMultiWindow(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1479
    monitor-exit v3

    move v1, v0

    .line 1485
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 1481
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_1

    .line 1482
    monitor-exit v3

    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .line 1484
    .end local v1           #Result:I
    :cond_1
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/sec/MultiWindowModule;->setPinupWindow(Landroid/content/ComponentName;Z)Z

    move-result v0

    .line 1485
    monitor-exit v3

    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .line 1486
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
    .line 1351
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1352
    const/4 v0, 0x0

    .line 1354
    .local v0, Result:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_0

    .line 1355
    monitor-exit v3

    move v1, v0

    .line 1360
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 1357
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/sec/MultiWindowModule;->postResume(Landroid/content/ComponentName;I)Z

    move-result v0

    .line 1358
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/sec/MultiWindowModule;->resumeChangeInformation(Landroid/content/ComponentName;I)V

    .line 1360
    monitor-exit v3

    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .line 1361
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
    .line 1206
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1207
    const/4 v0, 0x0

    .line 1208
    .local v0, Result:Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/sec/MultiWindowManagerService;->isAllMultiWindow(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1209
    monitor-exit v3

    move v1, v0

    .line 1216
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 1211
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_1

    .line 1212
    monitor-exit v3

    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .line 1214
    .end local v1           #Result:I
    :cond_1
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2, p1}, Lcom/android/server/sec/MultiWindowModule;->regSubMultiWindowClass(Landroid/content/ComponentName;)Z

    move-result v0

    .line 1216
    monitor-exit v3

    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .line 1217
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
    .line 1287
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1288
    const/4 v0, 0x0

    .line 1290
    .local v0, Result:Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/sec/MultiWindowManagerService;->isAllMultiWindow(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1291
    monitor-exit v3

    move v1, v0

    .line 1298
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 1293
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_1

    .line 1294
    monitor-exit v3

    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .line 1296
    .end local v1           #Result:I
    :cond_1
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/sec/MultiWindowModule;->regMultiWindowClassAction(Landroid/content/ComponentName;Landroid/sec/multiwindow/IMultiWindowAction;I)Z

    move-result v0

    .line 1298
    monitor-exit v3

    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .line 1299
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
    .line 259
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 260
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/sec/MultiWindowManagerService;->isMultiWindow(Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 262
    .local v0, Result:Z
    :goto_0
    iget-object v1, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowList:Lcom/android/server/sec/MultiWindowDataList;

    invoke-virtual {v1}, Lcom/android/server/sec/MultiWindowDataList;->getNormal()Ljava/util/List;

    move-result-object v1

    new-instance v3, Lcom/android/server/sec/MultiWindowDataItem;

    invoke-direct {v3, p1}, Lcom/android/server/sec/MultiWindowDataItem;-><init>(Landroid/content/ComponentName;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    monitor-exit v2

    return v0

    .line 260
    .end local v0           #Result:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 265
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
    .line 369
    iget-object v6, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 370
    const/4 v0, 0x0

    .line 371
    .local v0, Result:Z
    :try_start_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 372
    .local v4, ownerPackageName:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 373
    .local v2, classPackageName:Ljava/lang/String;
    const-string v1, "com.android.browser"

    .line 374
    .local v1, browserPackageName:Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 376
    :cond_0
    iget-object v5, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowList:Lcom/android/server/sec/MultiWindowDataList;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/server/sec/MultiWindowDataList;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 377
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/sec/MultiWindowDataItem;>;"
    new-instance v5, Lcom/android/server/sec/MultiWindowDataItem;

    invoke-direct {v5, p2}, Lcom/android/server/sec/MultiWindowDataItem;-><init>(Landroid/content/ComponentName;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 380
    .end local v3           #list:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/sec/MultiWindowDataItem;>;"
    :cond_1
    monitor-exit v6

    return v0

    .line 381
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
    .line 433
    .local p2, minSize:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Rect;>;"
    iget-object v6, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 436
    const/4 v0, 0x0

    .line 438
    .local v0, Result:Z
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 439
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

    .line 440
    .local v4, r:Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Point;

    iget v7, v4, Landroid/graphics/Rect;->right:I

    iget v8, v4, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v5, v7, v8}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 447
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #minList:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Point;>;"
    .end local v4           #r:Landroid/graphics/Rect;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 443
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #minList:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Point;>;"
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowList:Lcom/android/server/sec/MultiWindowDataList;

    invoke-virtual {v5}, Lcom/android/server/sec/MultiWindowDataList;->getNormal()Ljava/util/List;

    move-result-object v2

    .line 444
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/sec/MultiWindowDataItem;>;"
    new-instance v5, Lcom/android/server/sec/MultiWindowDataItem;

    invoke-direct {v5, p1, v3}, Lcom/android/server/sec/MultiWindowDataItem;-><init>(Landroid/content/ComponentName;Ljava/util/List;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 446
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
    .line 394
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 395
    const/4 v0, 0x0

    .line 396
    .local v0, Result:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowList:Lcom/android/server/sec/MultiWindowDataList;

    invoke-virtual {v2}, Lcom/android/server/sec/MultiWindowDataList;->getNormal()Ljava/util/List;

    move-result-object v1

    .line 397
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/sec/MultiWindowDataItem;>;"
    new-instance v2, Lcom/android/server/sec/MultiWindowDataItem;

    invoke-direct {v2, p1, p2, p3}, Lcom/android/server/sec/MultiWindowDataItem;-><init>(Landroid/content/ComponentName;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 399
    monitor-exit v3

    return v0

    .line 400
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
    .line 415
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 416
    const/4 v0, 0x0

    .line 417
    .local v0, Result:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowList:Lcom/android/server/sec/MultiWindowDataList;

    invoke-virtual {v2}, Lcom/android/server/sec/MultiWindowDataList;->getNormal()Ljava/util/List;

    move-result-object v1

    .line 418
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/sec/MultiWindowDataItem;>;"
    new-instance v2, Lcom/android/server/sec/MultiWindowDataItem;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/android/server/sec/MultiWindowDataItem;-><init>(Landroid/content/ComponentName;IIZ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 420
    monitor-exit v3

    return v0

    .line 421
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
    .line 293
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 294
    const/4 v0, 0x0

    .line 296
    .local v0, Result:Z
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/sec/MultiWindowManagerService;->isMultiWindow(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 297
    monitor-exit v3

    move v1, v0

    .line 300
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 299
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowList:Lcom/android/server/sec/MultiWindowDataList;

    invoke-virtual {v2}, Lcom/android/server/sec/MultiWindowDataList;->getNormal()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 300
    monitor-exit v3

    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .line 301
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
    .line 457
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 458
    const/4 v0, 0x0

    .line 460
    .local v0, Result:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowList:Lcom/android/server/sec/MultiWindowDataList;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/server/sec/MultiWindowDataList;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 461
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/sec/MultiWindowDataItem;>;"
    invoke-interface {v1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 463
    monitor-exit v3

    return v0

    .line 464
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
    .line 506
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 507
    const/4 v0, 0x0

    .line 509
    .local v0, Result:Z
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowList:Lcom/android/server/sec/MultiWindowDataList;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/sec/MultiWindowDataList;->remove(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 510
    :goto_0
    monitor-exit v2

    return v0

    .line 509
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 511
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
    .line 631
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 632
    const/4 v0, 0x0

    .line 634
    .local v0, Result:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_0

    .line 635
    monitor-exit v3

    move v1, v0

    .line 639
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 637
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2, p1}, Lcom/android/server/sec/MultiWindowModule;->restore(Landroid/content/ComponentName;)Z

    move-result v0

    .line 639
    monitor-exit v3

    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .line 640
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
    .line 837
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 838
    const/4 v0, 0x0

    .line 839
    .local v0, Result:Z
    :try_start_0
    const-string v2, "MultiWindowManagerService"

    const-string v4, "[resume]"

    invoke-static {v2, v4}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_0

    .line 842
    monitor-exit v3

    move v1, v0

    .line 846
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 844
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/sec/MultiWindowModule;->resume(Landroid/content/ComponentName;Landroid/sec/multiwindow/IMultiWindowListener;)Z

    move-result v0

    .line 846
    monitor-exit v3

    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .line 847
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
    .line 1706
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1707
    const/4 v0, 0x0

    .line 1709
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

    .line 1711
    :cond_0
    monitor-exit v3

    move v1, v0

    .line 1716
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 1713
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

    .line 1714
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/sec/MultiWindowModule;->saveCaptureItem(Landroid/content/ComponentName;Landroid/graphics/Bitmap;)Z

    move-result v0

    .line 1716
    monitor-exit v3

    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .line 1717
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
    .line 1721
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1722
    const/4 v0, 0x0

    .line 1724
    .local v0, Result:Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_0

    .line 1725
    monitor-exit v3

    move-object v1, v0

    .line 1733
    .end local v0           #Result:Landroid/graphics/Bitmap;
    .local v1, Result:Landroid/graphics/Bitmap;
    :goto_0
    return-object v1

    .line 1728
    .end local v1           #Result:Landroid/graphics/Bitmap;
    .restart local v0       #Result:Landroid/graphics/Bitmap;
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2}, Lcom/android/server/sec/MultiWindowModule;->screenShot()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1730
    invoke-virtual {p0, p1, v0}, Lcom/android/server/sec/MultiWindowManagerService;->saveCapture(Landroid/content/ComponentName;Landroid/graphics/Bitmap;)Z

    .line 1731
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/android/server/sec/MultiWindowManagerService;->capture(Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1733
    monitor-exit v3

    move-object v1, v0

    .end local v0           #Result:Landroid/graphics/Bitmap;
    .restart local v1       #Result:Landroid/graphics/Bitmap;
    goto :goto_0

    .line 1734
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
    .line 1322
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v0, p1}, Lcom/android/server/sec/MultiWindowModule;->setEscapedList(Lcom/android/server/sec/MwActivityRecord;)V

    .line 1323
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
    .line 1318
    .local p1, mwList:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/sec/MwActivityRecord;>;"
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v0, p1}, Lcom/android/server/sec/MultiWindowModule;->resetAppList(Ljava/util/List;)V

    .line 1319
    return-void
.end method

.method public setMinimumSize(Landroid/content/ComponentName;II)Z
    .locals 8
    .parameter "className"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1572
    iget-object v6, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1573
    const/4 v0, 0x0

    .line 1575
    .local v0, Result:Z
    :try_start_0
    iget-object v5, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v5, :cond_0

    .line 1576
    monitor-exit v6

    move v1, v0

    .line 1588
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 1578
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    iget-object v5, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v5, p1, p2, p3}, Lcom/android/server/sec/MultiWindowModule;->setMinimum(Landroid/content/ComponentName;II)Z

    move-result v0

    .line 1580
    iget-object v5, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowList:Lcom/android/server/sec/MultiWindowDataList;

    invoke-virtual {v5}, Lcom/android/server/sec/MultiWindowDataList;->getNormal()Ljava/util/List;

    move-result-object v4

    .line 1581
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

    .line 1582
    .local v3, item:Lcom/android/server/sec/MultiWindowDataItem;
    iget-object v5, v3, Lcom/android/server/sec/MultiWindowDataItem;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1583
    iput p2, v3, Lcom/android/server/sec/MultiWindowDataItem;->minWidth:I

    .line 1584
    iput p3, v3, Lcom/android/server/sec/MultiWindowDataItem;->minHeight:I

    goto :goto_1

    .line 1589
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #item:Lcom/android/server/sec/MultiWindowDataItem;
    .end local v4           #list:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/sec/MultiWindowDataItem;>;"
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1588
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
    .line 1829
    iget-object v1, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1830
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiLayoutUsed:Z

    .line 1831
    monitor-exit v1

    .line 1832
    const/4 v0, 0x1

    return v0

    .line 1831
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
    .line 179
    const/4 v0, 0x0

    .line 181
    .local v0, Return:Z
    invoke-static {p1}, Landroid/sec/multiwindow/MultiWindowType;->getValidType(I)Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v2

    .line 182
    .local v2, tempType:Landroid/sec/multiwindow/MultiWindowType;
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mWindowType:Landroid/sec/multiwindow/MultiWindowType;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mWindowType:Landroid/sec/multiwindow/MultiWindowType;

    invoke-virtual {v3, v2}, Landroid/sec/multiwindow/MultiWindowType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 183
    const/4 v0, 0x1

    move v1, v0

    .line 230
    .end local v0           #Return:Z
    .local v1, Return:I
    :goto_0
    return v1

    .line 187
    .end local v1           #Return:I
    .restart local v0       #Return:Z
    :cond_0
    iput-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mWindowType:Landroid/sec/multiwindow/MultiWindowType;

    .line 188
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowList:Lcom/android/server/sec/MultiWindowDataList;

    invoke-virtual {v3, v2}, Lcom/android/server/sec/MultiWindowDataList;->setType(Landroid/sec/multiwindow/MultiWindowType;)V

    .line 190
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-eqz v3, :cond_1

    .line 191
    sget-object v3, Lcom/android/server/sec/MultiWindowManagerService$4;->$SwitchMap$android$sec$multiwindow$MultiWindowType:[I

    iget-object v4, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v4}, Lcom/android/server/sec/MultiWindowModule;->getMultiWindowType()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v4

    invoke-virtual {v4}, Landroid/sec/multiwindow/MultiWindowType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 205
    :goto_1
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    .line 208
    :cond_1
    sget-object v3, Lcom/android/server/sec/MultiWindowManagerService$4;->$SwitchMap$android$sec$multiwindow$MultiWindowType:[I

    iget-object v4, p0, Lcom/android/server/sec/MultiWindowManagerService;->mWindowType:Landroid/sec/multiwindow/MultiWindowType;

    invoke-virtual {v4}, Landroid/sec/multiwindow/MultiWindowType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    .line 226
    :goto_2
    :pswitch_0
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-eqz v3, :cond_2

    .line 227
    const/4 v0, 0x1

    :cond_2
    move v1, v0

    .line 230
    .restart local v1       #Return:I
    goto :goto_0

    .line 193
    .end local v1           #Return:I
    :pswitch_1
    invoke-static {}, Lcom/android/server/sec/SplitWindowModule;->removeInstance()V

    goto :goto_1

    .line 196
    :pswitch_2
    invoke-static {}, Lcom/android/server/sec/FreestyleWindowModule;->removeInstance()V

    goto :goto_1

    .line 210
    :pswitch_3
    const-string v3, "MultiWindowManagerService"

    const-string v4, "Multi-Window type is nothing."

    invoke-static {v3, v4}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const/4 v0, 0x1

    .line 212
    goto :goto_2

    .line 214
    :pswitch_4
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mWindowType:Landroid/sec/multiwindow/MultiWindowType;

    iget-object v4, p0, Lcom/android/server/sec/MultiWindowManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/sec/MultiWindowManagerService;->mHandler:Lcom/android/server/sec/MultiWindowActionHandler;

    iget-object v6, p0, Lcom/android/server/sec/MultiWindowManagerService;->mWindowManager:Landroid/view/WindowManager;

    invoke-static {v3, v4, v5, v6}, Lcom/android/server/sec/SplitWindowModule;->getInstance(Landroid/sec/multiwindow/MultiWindowType;Landroid/content/Context;Lcom/android/server/sec/MultiWindowActionHandler;Landroid/view/WindowManager;)Lcom/android/server/sec/SplitWindowModule;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    goto :goto_2

    .line 217
    :pswitch_5
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mWindowType:Landroid/sec/multiwindow/MultiWindowType;

    iget-object v4, p0, Lcom/android/server/sec/MultiWindowManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/sec/MultiWindowManagerService;->mHandler:Lcom/android/server/sec/MultiWindowActionHandler;

    iget-object v6, p0, Lcom/android/server/sec/MultiWindowManagerService;->mWindowManager:Landroid/view/WindowManager;

    invoke-static {v3, v4, v5, v6}, Lcom/android/server/sec/FreestyleWindowModule;->getInstance(Landroid/sec/multiwindow/MultiWindowType;Landroid/content/Context;Lcom/android/server/sec/MultiWindowActionHandler;Landroid/view/WindowManager;)Lcom/android/server/sec/FreestyleWindowModule;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    goto :goto_2

    .line 191
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 208
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
    .line 1846
    iget-object v1, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1847
    :try_start_0
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v0, :cond_0

    .line 1848
    monitor-exit v1

    .line 1852
    :goto_0
    return-void

    .line 1850
    :cond_0
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v0, p1}, Lcom/android/server/sec/MultiWindowModule;->setPermissionOff(Z)V

    .line 1851
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
    .line 1082
    iget-object v4, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1083
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

    .line 1084
    const/4 v1, 0x0

    .line 1085
    .local v1, Result:Landroid/sec/multiwindow/MultiWindowObject;
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v3, :cond_0

    .line 1086
    monitor-exit v4

    move-object v2, v1

    .line 1092
    .end local v1           #Result:Landroid/sec/multiwindow/MultiWindowObject;
    .local v2, Result:Landroid/sec/multiwindow/MultiWindowObject;
    :goto_0
    return-object v2

    .line 1088
    .end local v2           #Result:Landroid/sec/multiwindow/MultiWindowObject;
    .restart local v1       #Result:Landroid/sec/multiwindow/MultiWindowObject;
    :cond_0
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    const/4 v5, 0x1

    invoke-virtual {v3, p1, p2, v5}, Lcom/android/server/sec/MultiWindowModule;->setPositionOfWindow(Landroid/content/ComponentName;Landroid/graphics/Rect;Z)Lcom/android/server/sec/MWPackageItem;

    move-result-object v0

    .line 1089
    .local v0, Item:Lcom/android/server/sec/MWPackageItem;
    if-eqz v0, :cond_1

    .line 1090
    invoke-virtual {v0}, Lcom/android/server/sec/MWPackageItem;->toObject()Landroid/sec/multiwindow/MultiWindowObject;

    move-result-object v1

    .line 1092
    :cond_1
    monitor-exit v4

    move-object v2, v1

    .end local v1           #Result:Landroid/sec/multiwindow/MultiWindowObject;
    .restart local v2       #Result:Landroid/sec/multiwindow/MultiWindowObject;
    goto :goto_0

    .line 1093
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
    .line 2099
    iget-object v1, p0, Lcom/android/server/sec/MultiWindowManagerService;->mSharedContext:Landroid/content/Context;

    const-string v2, "switchWindowPref"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2101
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v1, "switchWindowValue"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2102
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2105
    return-void
.end method

.method public showSwitchWindowGuideDialog()V
    .locals 5

    .prologue
    .line 2109
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mSharedContext:Landroid/content/Context;

    const-string v3, "switchWindowPref"

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2113
    .local v1, pref:Landroid/content/SharedPreferences;
    const-string v2, "switchWindowValue"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2115
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2116
    .local v0, msg:Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v0, Landroid/os/Message;->what:I

    .line 2118
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mH:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2121
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public start(Landroid/content/Intent;)Z
    .locals 4
    .parameter "intent"

    .prologue
    .line 968
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 969
    const/4 v0, 0x0

    .line 971
    .local v0, Result:Z
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/sec/MultiWindowManagerService;->isAllMultiWindow(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 972
    monitor-exit v3

    move v1, v0

    .line 980
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 974
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_1

    .line 975
    monitor-exit v3

    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .line 977
    .end local v1           #Result:I
    :cond_1
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2}, Lcom/android/server/sec/MultiWindowModule;->freezeRotation()V

    .line 978
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2, p1}, Lcom/android/server/sec/MultiWindowModule;->start(Landroid/content/Intent;)Z

    move-result v0

    .line 980
    monitor-exit v3

    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .line 981
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
    .line 942
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 943
    const/4 v0, 0x0

    .line 944
    .local v0, Result:Z
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 945
    .local v1, parentClassName:Landroid/content/ComponentName;
    invoke-direct {p0, v1}, Lcom/android/server/sec/MultiWindowManagerService;->isAllMultiWindow(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 946
    monitor-exit v3

    .line 956
    :goto_0
    return v0

    .line 948
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_1

    .line 949
    monitor-exit v3

    goto :goto_0

    .line 957
    .end local v1           #parentClassName:Landroid/content/ComponentName;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 956
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
    .line 1246
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1247
    const/4 v0, 0x0

    .line 1249
    .local v0, Result:Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/sec/MultiWindowManagerService;->isAllMultiWindow(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1250
    monitor-exit v3

    move v1, v0

    .line 1257
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 1252
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_1

    .line 1253
    monitor-exit v3

    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .line 1255
    .end local v1           #Result:I
    :cond_1
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/sec/MultiWindowModule;->startMultiWindow(Landroid/content/ComponentName;Z)Z

    move-result v0

    .line 1257
    monitor-exit v3

    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .line 1258
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
    .line 1267
    const/4 v0, 0x0

    .line 1268
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

    .line 1269
    invoke-direct {p0, p1}, Lcom/android/server/sec/MultiWindowManagerService;->isAllMultiWindow(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_0

    move v1, v0

    .line 1277
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 1272
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_1

    move v1, v0

    .line 1273
    .restart local v1       #Result:I
    goto :goto_0

    .line 1275
    .end local v1           #Result:I
    :cond_1
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/sec/MultiWindowModule;->startMultiWindow(Landroid/content/ComponentName;IZ)Z

    move-result v0

    move v1, v0

    .line 1277
    .restart local v1       #Result:I
    goto :goto_0
.end method

.method public startSplitScreens(Landroid/content/Intent;Landroid/content/Intent;)Z
    .locals 5
    .parameter "intentCaller"
    .parameter "intentCallee"

    .prologue
    .line 1789
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1790
    const/4 v0, 0x0

    .line 1792
    .local v0, Result:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_0

    .line 1793
    monitor-exit v3

    .line 1800
    .end local v0           #Result:Z
    :goto_0
    return v0

    .line 1795
    .restart local v0       #Result:Z
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2}, Lcom/android/server/sec/MultiWindowModule;->getMultiWindowType()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v2

    sget-object v4, Landroid/sec/multiwindow/MultiWindowType;->eSplitWindow:Landroid/sec/multiwindow/MultiWindowType;

    if-ne v2, v4, :cond_1

    .line 1796
    iget-object v1, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    check-cast v1, Lcom/android/server/sec/SplitWindowModule;

    .line 1797
    .local v1, swm:Lcom/android/server/sec/SplitWindowModule;
    invoke-virtual {v1, p1, p2}, Lcom/android/server/sec/SplitWindowModule;->startSplitScreens(Landroid/content/Intent;Landroid/content/Intent;)Z

    move-result v0

    .end local v0           #Result:Z
    monitor-exit v3

    goto :goto_0

    .line 1801
    .end local v1           #swm:Lcom/android/server/sec/SplitWindowModule;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1800
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
    .line 1811
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1812
    const/4 v0, 0x0

    .line 1813
    .local v0, Result:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_0

    .line 1814
    const/4 v0, 0x0

    monitor-exit v3

    .line 1820
    .end local v0           #Result:Z
    :goto_0
    return v0

    .line 1815
    .restart local v0       #Result:Z
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2}, Lcom/android/server/sec/MultiWindowModule;->getMultiWindowType()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v2

    sget-object v4, Landroid/sec/multiwindow/MultiWindowType;->eSplitWindow:Landroid/sec/multiwindow/MultiWindowType;

    if-ne v2, v4, :cond_1

    .line 1816
    iget-object v1, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    check-cast v1, Lcom/android/server/sec/SplitWindowModule;

    .line 1817
    .local v1, swm:Lcom/android/server/sec/SplitWindowModule;
    invoke-virtual {v1, p1, p2}, Lcom/android/server/sec/SplitWindowModule;->startSplitScreensForLauncher(Landroid/content/Intent;Landroid/content/Intent;)Z

    move-result v0

    .end local v0           #Result:Z
    monitor-exit v3

    goto :goto_0

    .line 1821
    .end local v1           #swm:Lcom/android/server/sec/SplitWindowModule;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1820
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
    .line 993
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 994
    const/4 v0, 0x0

    .line 996
    .local v0, Result:Z
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/sec/MultiWindowManagerService;->isAllMultiWindow(Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 997
    monitor-exit v2

    .line 1007
    :goto_0
    return v0

    .line 999
    :cond_0
    iget-object v1, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v1, :cond_1

    .line 1000
    monitor-exit v2

    goto :goto_0

    .line 1008
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1007
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
    .line 1018
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1019
    const/4 v0, 0x0

    .line 1021
    .local v0, Result:Z
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/sec/MultiWindowManagerService;->isAllMultiWindow(Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1022
    monitor-exit v2

    .line 1032
    :goto_0
    return v0

    .line 1024
    :cond_0
    iget-object v1, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v1, :cond_1

    .line 1025
    monitor-exit v2

    goto :goto_0

    .line 1033
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1032
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
    .line 1165
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1166
    const/4 v0, 0x0

    .line 1167
    .local v0, Result:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_0

    .line 1168
    monitor-exit v3

    move v1, v0

    .line 1172
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 1170
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/sec/MultiWindowModule;->finish(Landroid/content/ComponentName;I)Z

    move-result v0

    .line 1172
    monitor-exit v3

    move v1, v0

    .restart local v1       #Result:I
    goto :goto_0

    .line 1173
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
    .line 270
    iget-object v4, p0, Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 271
    const/4 v0, 0x0

    .line 272
    .local v0, Result:Z
    :try_start_0
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowList:Lcom/android/server/sec/MultiWindowDataList;

    invoke-virtual {v3}, Lcom/android/server/sec/MultiWindowDataList;->getUnregistList()Ljava/util/List;

    move-result-object v2

    .line 274
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/sec/MultiWindowDataItem;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    .line 275
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/sec/MultiWindowDataItem;

    iget-object v3, v3, Lcom/android/server/sec/MultiWindowDataItem;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 276
    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 274
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 280
    :cond_1
    new-instance v3, Lcom/android/server/sec/MultiWindowDataItem;

    invoke-direct {v3, p1}, Lcom/android/server/sec/MultiWindowDataItem;-><init>(Landroid/content/ComponentName;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 282
    monitor-exit v4

    return v0

    .line 283
    .end local v1           #i:I
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/sec/MultiWindowDataItem;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
